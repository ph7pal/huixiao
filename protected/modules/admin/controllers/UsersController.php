<?php

class UsersController extends H {

    public function actionGroup() {
        $criteria = new CDbCriteria();
        $criteria->order = 'id desc';
        $criteria->addCondition('status=1');
        $count = UserGroup::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 10;
        $pager->applyLimit($criteria);
        $items = UserGroup::model()->findAll($criteria);
        $data = array(
          'table' => 'usergroup',
          'pages' => $pager,
          'posts' => $items
        );

        $this->render('group', $data);
    }

    public function actionAdd() {
        $this->checkPower('addusers');
        $this->checkPower('editusers');
        $model = new Users();
        $uid = Yii::app()->user->id;
        $_info = $model->findByAttributes(array('status' => 0));
        $keyid = zmf::getFCache("notSaveUsers{$uid}");
        $forupdate = zmf::filterInput($_GET['edit'], 't', 1);
        $_keyid = zmf::filterInput($_GET['id']);
        if (!$keyid AND ! $_keyid) {
            $_info = $model->findByAttributes(array('status' => 0));
            if (!$_info) {
                $model->attributes = array(
                  'status' => 0,
                  'cTime' => time()
                );
                $model->save(false);
                $keyid = $model->id;
            } else {
                $keyid = $_info['id'];
            }
            zmf::setFCache("notSaveUsers{$uid}", $keyid, 3600);
            $this->redirect(array('users/add', 'id' => $keyid));
        } elseif ($keyid != $_keyid AND $forupdate != 'yes') {
            if (!$keyid) {
                zmf::delFCache("notSaveUsers{$uid}");
                $this->message(0, '操作有误，正在为您重新跳转至发布页', Yii::app()->createUrl('users/add'));
            } else {
                $this->redirect(array('users/add', 'id' => $keyid));
            }
        } else {
            $keyid = $_keyid;
        }
        $info = $model->findByPk($keyid);
        if (!$info) {
            $this->message(0, '非常抱歉，您查看的页面不存在');
        }
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'users-addUser-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['Users'])) {
            $thekeyid = zmf::filterInput($_POST['Users']['id']);
            $intoData = $_POST['Users'];
            $pass = zmf::filterInput($_POST['Users']['password'], 't', 1);
            if ($pass != '') {
                $intoData['password'] = md5($pass.$info['hash']);
            } else {
                $intoData['password'] = $info['password'];
            }
            if ($model->updateByPk($thekeyid, $intoData)) {
                UserAction::record('editusers', $thekeyid);
                zmf::delFCache("notSaveUsers{$uid}");
                $this->redirect(array('all/list', 'table' => 'users'));
            }
        }
        $groups = UserGroup::getGroups(true);
        $data = array(
          'info' => $info,
          'model' => $model,
          'groups' => $groups
        );
        $this->render('addUser', $data);
    }

    public function actionAddGroup() {
        $this->checkPower('addusergroup');
        $this->checkPower('editusergroup');
        $model = new UserGroup();
        $uid = Yii::app()->user->id;
        $_info = $model->findByAttributes(array('status' => 0));
        $keyid = zmf::getFCache("notSaveGroup{$uid}");
        $forupdate = zmf::filterInput($_GET['edit'], 't', 1);
        $_keyid = zmf::filterInput($_GET['id']);
        if (!$keyid AND ! $_keyid) {
            $_info = $model->findByAttributes(array('status' => 0));
            if (!$_info) {
                $model->attributes = array(
                  'status' => 0,
                  'cTime' => time()
                );
                $model->save(false);
                $keyid = $model->id;
            } else {
                $keyid = $_info['id'];
            }
            zmf::setFCache("notSaveGroup{$uid}", $keyid, 3600);
            $this->redirect(array('users/addgroup', 'id' => $keyid));
        } elseif ($keyid != $_keyid AND $forupdate != 'yes') {
            if (!$keyid) {
                zmf::delFCache("notSaveGroup{$uid}");
                $this->message(0, '操作有误，正在为您重新跳转至发布页', Yii::app()->createUrl('admin/users/addgroup'));
            } else {
                $this->redirect(array('users/addgroup', 'id' => $keyid));
            }
        } else {
            $keyid = $_keyid;
        }
        $info = $model->findByPk($keyid);
        if (!$info) {
            $this->message(0, '非常抱歉，您查看的页面不存在');
        }


        if (isset($_POST['ajax']) && $_POST['ajax'] === 'user-group-addGroup-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
        if (isset($_POST['UserGroup'])) {
            $thekeyid = zmf::filterInput($_POST['UserGroup']['id']);
            $intoData = array(
              'title' => zmf::filterInput($_POST['UserGroup']['title'], 't', 1),
              'powers' => 'zmf',
              'status' => 1,
              'posts_perh' => zmf::filterInput($_POST['UserGroup']['posts_perh']),
              'comments_perh' => zmf::filterInput($_POST['UserGroup']['comments_perh']),
              'attach_perh' => zmf::filterInput($_POST['UserGroup']['attach_perh']),
            );
            $powers = $_POST['powers'];
            $model->attributes = $intoData;
            if ($model->validate()) {
                if ($model->updateByPk($thekeyid, $intoData)) {
                    if (!empty($powers)) {
                        GroupPowers::model()->deleteAll("gid=$thekeyid");
                        foreach ($powers as $p) {
                            $_data = array(
                              'gid' => $thekeyid,
                              'powers' => $p
                            );
                            $modelGP = new GroupPowers();
                            $modelGP->attributes = $_data;
                            $modelGP->save();
                        }
                    } else {
                        GroupPowers::model()->deleteAll("gid=$thekeyid");
                    }
                    UserAction::record('editusergroup', $thekeyid);
                    zmf::delFCache("notSaveGroup{$uid}");
                    $this->redirect(array('all/list', 'table' => 'user_group'));
                } else {
                    if (!empty($powers)) {
                        GroupPowers::model()->deleteAll("gid=$thekeyid");
                        foreach ($powers as $p) {
                            $_data = array(
                              'gid' => $thekeyid,
                              'powers' => $p
                            );
                            $modelGP = new GroupPowers();
                            $modelGP->attributes = $_data;
                            $modelGP->save();
                        }
                    } else {
                        GroupPowers::model()->deleteAll("gid=$thekeyid");
                    }
                    UserAction::record('editusergroup', $thekeyid);
                }
            }
        }
        $mine = UserGroup::getPowers($info['id']);
        $data = array(
          'info' => $info,
          'mine' => $mine,
          'model' => $model
        );
        $this->render('addGroup', $data);
    }

    public function actionRecords() {
        $criteria = new CDbCriteria(
            array('order' => 'id desc')
        );
        $count = UserAction::model()->count($criteria);
        $pager = new CPagination($count);
        $pager->pageSize = 50;
        $pager->applyLimit($criteria);
        $items = UserAction::model()->findAll($criteria);
        $data = array(
          'pages' => $pager,
          'posts' => $items
        );

        $this->render('records', $data);
    }

    public function actionUpdate() {
        $id = zmf::filterInput($_GET['id']);
        if (!$id) {
            $this->message(0, '用户不存在');
        }
        if ($id != Yii::app()->user->id) {
            $this->message(0, '请操作自己的账号');
        }
        $info = Users::model()->findByPk($id);
        if (!$info) {
            $this->message(0, '用户不存在');
        }
        $model = new Users();
        if (isset($_POST['Users'])) {
            $old = zmf::filterInput($_POST['old_password'], 't', 1);
            if (!$old) {
                $this->message(0, '请输入原始密码');
            } elseif (md5($old) != $info['password']) {
                $this->message(0, '原始密码不正确');
            }
            if (!$_POST['Users']['password']) {
                $this->message(0, '数据不全，请重新输入');
            } elseif (strlen($_POST['Users']['password']) < 5) {
                $this->message(0, '新密码过短，请重新输入');
            }
            $intoData['password'] = md5($_POST['Users']['password']);
            $model->setScenario('update');
            if ($model->updateByPk($id, $intoData)) {
                $this->message(1, '新密码设置成功', Yii::app()->createUrl('admin/index/index'));
            }
        }


        $data = array(
          'model' => $model,
          'info' => $info,
        );
        $this->render('update', $data);
    }

    public function actionListCredit() {
        $this->checkPower('listcredit');
        $uid = zmf::filterInput($_GET['uid']);
        $type = zmf::filterInput($_GET['type'], 't', 1);
        $action = zmf::filterInput($_GET['action'], 't', 1);
        if (!$uid || !$type) {
            $this->message(0, '数据不全');
        }
        if ($action == 'update') {
            $blocked = false;
        } else {
            $blocked = true;
        }
        if (!UserCredit::checkType($type)) {
            $this->message(0, '不允许的认证类型，请核实');
        } else {
            $realModel = UserCredit::loadModel($type);
        }
        $info = $realModel->find('uid=' . $uid);
        $_addedType = UserCredit::findOne($uid);
        $creditlogo = zmf::userConfig($uid, 'creditlogo');
        $uinfo = Users::getUserInfo($uid);
        $data = array(
          'type' => $type,
          'blocked' => $blocked,
          'info' => $info,
          'uid' => $uid,
          'imgSize' => 600,
          'fromAdmin' => 'yes',
          'status' => $_addedType['status'],
          'reason' => $_addedType['desc'],
          'groupid' => $uinfo['groupid'],
          'creditlogo' => $creditlogo,
        );
        $this->render('//credit/' . $type, $data);
    }

    public function actionUpdateCredit($id) {
        $this->checkPower('updatecredit');
        $model = CreditRelation::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        if (isset($_POST['CreditRelation'])) {
            $model->attributes = $_POST['CreditRelation'];
            if ($model->save())
                $this->redirect(array('all/list', 'table' => 'credit', 'classify' => $model->classify));
        }
        $this->render('updateCredit', array(
          'model' => $model,
        ));
    }

    public function actionDocredit() {
        $this->checkPower('updatecredit');
        if (!Yii::app()->request->isAjaxRequest) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
        if (Yii::app()->user->isGuest) {
            $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
        }
        $reason = zmf::filterInput($_POST['reason'], 't', 1);
        $atype = zmf::filterInput($_POST['yesorno']);
        $type = zmf::filterInput($_GET['type'], 't', 1);
        $groupid = zmf::filterInput($_POST['groupid']);
        $creditlogo = zmf::filterInput($_POST['creditlogo'], 't', 1);
        if (!$atype) {
            $this->jsonOutPut(0, '请选择');
        }
        if ($atype != 1) {
            if (!$reason) {
                $this->jsonOutPut(0, '请填写理由');
            }
        }
        $touid = zmf::filterInput($_GET['uid']);
        if (!$touid) {
            $this->jsonOutPut(0, '缺少用户字段');
        }
        $relarr = array();
        $realModel = UserCredit::loadModel($type);
        if ($atype == 1) {
            if (!$creditlogo) {
                $this->jsonOutPut(0, '请选择认证图标');
            }            
            $relarr['medal'] = $creditlogo;
            $creditlogoInfo=  Medal::model()->find('logo=:logo', array(':logo'=>$creditlogo));
            Users::model()->updateByPk($touid, array('groupid' => $groupid));
            $realModel->updateAll(array('status' => $atype, 'medal' => $creditlogo,'medal_logo'=>$creditlogo,'medal_title'=>$creditlogoInfo['title']), 'uid=:uid', array(':uid' => $touid));
            UserInfo::addAttr($touid, 'userCredit', 'creditlogo', $creditlogo);
        } else {
            $realModel->updateAll(array('status' => $atype), 'uid=:uid', array(':uid' => $touid));
        }
        $relarr['status'] = $atype;
        CreditRelation::model()->updateAll($relarr, 'uid=:uid', array(':uid' => $touid));
        $relarr['lastupdate'] = time();
        $relarr['desc'] = $reason;
        UserCredit::model()->updateAll($relarr, 'uid=:uid', array(':uid' => $touid));
        zmf::delUserConfig($touid);
        $this->jsonOutPut(1, '操作成功');
    }

    /**
     * 删除用户为keyid的认证信息
     */
    public function actionDelcredit() {
        $this->checkPower('delcredit');
        $uid = zmf::filterInput($_GET['id']);
        if (!$uid) {
            $this->message(0, '用户不存在');
        }
        $creditInfo = UserCredit::findOne($uid);
        if (!$creditInfo) {
            $this->message(0, '未检测到该用户的认证信息');
        } elseif (!UserCredit::checkType($creditInfo['classify'])) {
            $this->message(0, '不允许的认证类型，请核实');
        } else {
            $realModel = UserCredit::loadModel($creditInfo['classify']);
        }
        $realModel->deleteAll('uid=:uid', array(':uid' => $uid));
        UserCredit::model()->deleteAll('uid=:uid', array(':uid' => $uid));
        CreditRelation::model()->deleteAll('uid=:uid', array(':uid' => $uid));
        UserInfo::model()->deleteAll('uid=:uid AND (classify="addCredit" OR classify="userCredit")', array(':uid' => $uid));
        UserAction::record('delcredit', $uid);
        $this->message(1, '已成功删除');
    }
    
    /**
     * 为用户组设置可编辑栏目
     */
    public function actionColumn($id){
        $info=  UserGroup::model()->findByPk($id);
        if(!$info){
            $this->message(0, '不存在的用户组');
        }
        if(!empty($_POST)){
            $colids=$_POST['groupids'];
            ColumnRelation::model()->deleteAll('groupid=:gid', array(':gid'=>$id));
            if(!empty($colids)){
                foreach ($colids as $colid){
                    $_attr=array(
                      'columnid'=>$colid,
                      'groupid'=>$id,
                    );
                    $model=new ColumnRelation;
                    $model->attributes=$_attr;
                    $model->save();
                }
            }
            $this->message(1, '已更新');
        }
        $_sql="SELECT DISTINCT(columnid) FROM {{column_relation}} WHERE groupid={$id}";
        $items=Yii::app()->db->createCommand($_sql)->queryAll();
        $selected=array_keys(CHtml::listData($items,'columnid',''));
        $data=array(
          'info'=>$info,
          'selected'=>$selected,
        );
        $this->render('addGroupColumn',$data);
    }

}
