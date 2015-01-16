<?php

class ZhanhuiController extends T {
    public $showInfo=false;
    public $showInfoNum=15;
    public $canyu=false;

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id) {
        $info = $this->loadModel($id);
        $model=new ZhanhuiRelation;
        if(zmf::uid()){
            $_hasinfo=$model->find('uid=:uid AND logid=:logid',array(':uid'=>zmf::uid(),':logid'=>$id));
            if($_hasinfo){
                $this->canyu=true;
            }
        }else{
            $_hasinfo=zmf::getCookie('canyuzhanhui-'.$id);
            if($_hasinfo){
                $this->canyu=true;
            }
        }
        $model->uid=Yii::app()->user->id;
        if($info->uid==$model->uid && $info->uid>0){
            $this->showInfo=true;
        }
        $model->logid=$id;
        $model->username=$this->userInfo['truename'];
        $model->email=$this->userInfo['email'];
        $model->phone=$this->userInfo['mobile'];        
        if (isset($_POST['ZhanhuiRelation'])) {
            if($this->canyu){
                $this->message(0, '您已报名过，不能重复报名',$url);
            }
            $model->attributes = $_POST['ZhanhuiRelation'];
            if ($model->validate()) {
                if($model->save()){
                    Zhanhui::model()->updateCounters(array('canyu' => 1), ':id=id', array(':id' => $id));
                    $params=array(
                        'uid'=>$info['uid'],
                        'from_id'=>$id,
                        'from_idtype'=>'zhanhui',
                        'type'=>'system',
                        'content'=>CHtml::link($info['title'],array('zhanhui/view','id'=>$id)).'有了新的报名，'.CHtml::link('查看详情',array('zhanhui/view','id'=>$id))
                    );
                    Notification::add($params);
                    $url=Yii::app()->createUrl('zhanhui/view',array('id'=>$id));
                    zmf::setCookie('canyuzhanhui-'.$id,$id,86400*30);
                    $this->message(1, '恭喜，您已成功参与',$url);
                }
            }
        }
        if ($info['status'] != Posts::STATUS_PASSED) {
            if ($info['start_time'] < time()) {
                Zhanhui::model()->updateByPk($info['id'], array('status' => Posts::STATUS_DELED));
                $info['status'] = Posts::STATUS_DELED;
            }
        }
        $faceurl='';
        if ($info['attachid'] > 0) {
            $attachinfo = Attachments::getOne($info['attachid']);
            if ($attachinfo) {
                $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], 'origin') . '/' . $attachinfo['filePath'];
            }
        }
        $info['attachid']=$faceurl;
        Zhanhui::model()->updateCounters(array('hits' => 1), ':id=id', array(':id' => $info['id']));
        $sql = "SELECT username,phone,email FROM {{zhanhui_relation}} WHERE logid={$id} ORDER BY cTime DESC LIMIT {$this->showInfoNum}";
        $uids = Yii::app()->db->createCommand($sql)->queryAll();
        $this->pageTitle = $info['title'] . ' - ' . zmf::config('sitename');
        $this->render('view', array(
            'info' => $info,
            'users' => $uids,
            'model' => $model,
        ));
    }

    /**
     * Lists all models.
     */
    public function actionIndex() {
        $type = zmf::filterInput($_GET['type'], 't', 1);
        if ($type == 'on' || !$type) {
            $type = 'on';
        }
        $status = Posts::STATUS_PASSED;
        if ($type == 'on') {
            $_sql = "SELECT * FROM {{zhanhui}} WHERE expired_time>" . time() . " AND status={$status}";
        } else {
            $_sql = "SELECT * FROM {{zhanhui}} WHERE expired_time<=" . time() . " AND status={$status}";
        }
        Posts::getAll(array('sql' => $_sql), $pages, $lists);
        foreach ($lists as $key => $list) {
            if ($list['start_time'] < time()) {
                Zhanhui::model()->updateByPk($list['id'], array('status' => Posts::STATUS_DELED));
                unset($lists[$key]);
            }
            $faceurl = zmf::noImg('url');
            if ($list['attachid'] > 0) {
                $attachinfo = Attachments::getOne($list['attachid']);
                if ($attachinfo) {
                    $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], '200') . '/' . $attachinfo['filePath'];
                }
            }
            $list['faceurl'] = $faceurl;
            $lists[$key] = $list;
        }
        $data['posts'] = $lists;
        $data['pages'] = $pages;
        $data['type'] = $type;
        $this->pageTitle = '展会档期列表 - ' . zmf::config('sitename');
        $this->render('index', $data);
    }

    /**
     * Manages all models.
     */
    public function actionCanyu($id) {
        if (Yii::app()->user->isGuest) {
            $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
        } else {
            $uid = Yii::app()->user->id;
        }
        $userCredit = UserCredit::findOne($uid);
        if (!$userCredit) {
            $this->jsonOutPut(0, '非常抱歉，您需要填写认证信息才可以报名哦');
        } elseif ($userCredit['status'] != Posts::STATUS_PASSED) {
            $this->jsonOutPut(0, '非常抱歉，您的认证信息暂未通过审核');
        }
        $info = Zhanhui::model()->findByPk($id);
        if (!$info) {
            $this->jsonOutPut(0, '非常抱歉，您所查看的页面不存在');
        } elseif ($info['status'] != Posts::STATUS_PASSED) {
            $this->jsonOutPut(0, '非常抱歉，该内容未通过审核');
        } elseif ($info['expired_time'] < time()) {
            $this->jsonOutPut(0, '非常抱歉，该展会已结束报名');
        }
        $attr = array(
            'logid' => $id,
            'uid' => $uid,
        );
        $info = ZhanhuiRelation::model()->findByAttributes($attr);
        if (!$info) {
            $attr['cTime'] = time();
            $ip = Yii::app()->request->userHostAddress;
            $attr['ip'] = ip2long($ip);
            $model = new ZhanhuiRelation;
            $model->attributes = $attr;
            if ($model->save()) {
                Zhanhui::model()->updateCounters(array('canyu' => 1), ':id=id', array(':id' => $id));
                $this->jsonOutPut(1, '恭喜您，报名成功');
            } else {
                $this->jsonOutPut(0, '非常抱歉，报名失败');
            }
        } else {
            $this->jsonOutPut(0, '您已报名，不能重复报名哦~');
        }
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return Zhanhui the loaded model
     * @throws CHttpException
     */
    public function loadModel($id) {
        $model = Zhanhui::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param Zhanhui $model the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'zhanhui-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}
