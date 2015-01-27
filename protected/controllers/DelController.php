<?php

class DelController extends T {
    private $status=array('status'=>Posts::STATUS_DELED);

    public function actionSth() {
        if (isset($_POST['YII_CSRF_TOKEN'])) {
            $table = zmf::filterInput($_POST['table'], 't', 1);
            if (!empty($_POST['ids'])) {
                $ids = array_unique(array_filter($_POST['ids']));
            }
            $type = zmf::filterInput($_POST['type'], 't', 1);
            $multi = true;
        } else {
            $keyid = zmf::filterInput($_GET['id']);
            $table = zmf::filterInput($_GET['table'], 't', 1);
            $type = zmf::filterInput($_GET['single'], 't', 1);
            $multi = false;
        }
        $table = strtolower($table);
        if ($multi) {            
            if (empty($ids)) {
                $this->message(0, '请选择需要操作的对象');
            } elseif ($type == '' OR !in_array($type, array('del'))) {
                $this->message(0, '请选择需要的操作');
            }
        } else {
            if (empty($keyid) OR $keyid == 0) {
                $this->message(0, '请选择需要操作的对象');
            }
        }
        if (!in_array($table, array('ads', 'album', 'attachments', 'comments', 'questions', 'tags', 'posts','jobs','goods','zhanhui'))) {
            $this->message(0, '不被允许的操作，请核实');
        }
        $ads = new Ads();
        $album = new Album();        
        $posts = new Posts();
        $comments = new Comments;
        $attachments=new Attachments;
        $questions=new Questions;
        $jobs=new Jobs;
        $goods=new Goods;
        $zhanhui=new Zhanhui;
        if ($multi) {
            foreach ($ids as $val) {
                $info = $$table->findByPk($val);
                if ($info) {
                    $this->_sth($val, $table, $info, true);
                }
            }
            if ($table == 'ads') {
                $this->redirect(array('user/list','table'=>$table));
            } else {
                $this->redirect(array('user/list','table'=>$table));
            }
        } else {
            $info = $$table->findByPk($keyid);
            if (!$info) {
                $this->message(0, '您所操作的页面已不存在，请核实');
            }
            $this->_sth($keyid, $table, $info, false);
        }
    }

    private function _sth($keyid, $table, $info, $multi = false) {
        $ads = new Ads();
        $album = new Album();        
        $posts = new Posts();
        $comments = new Comments;
        $questions=new Questions;
        $jobs=new Jobs;
        $goods=new Goods;
        $zhanhui=new Zhanhui;
        if (in_array($table, array('ads', 'columns', 'link', 'comments', 'questions', 'tags','jobs','goods','zhanhui'))) {
//            if (isset($info['attachid']) AND $info['attachid'] > 0) {
//                $this->delAttach($keyid);
//            }
            if ($$table->updateByPk($keyid,$this->status)) {
                if ($multi) {
                    return true;
                } else {
                    $this->redirect(array('user/list','table'=>$table));
                }
            } else {
                if ($multi) {
                    return false;
                } else {
                    $this->message(0, '非常抱歉，删除失败，请核实');
                }
            }
        } elseif ($table == 'attachments') {
            if ($this->delAttach($keyid)) {
                if ($multi) {
                    return true;
                } else {
                    $this->redirect(array('user/list','table'=>$table));
                }
            } else {
                if ($multi) {
                    return false;
                } else {
                    $this->message(0, '非常抱歉，删除【附件】失败，请核实');
                }
            }
        } elseif ($table == 'posts') {
            if (isset($info['albumid']) AND $info['albumid'] > 0) {
                $this->delAlbum($info['albumid']);
            }
            if ($$table->updateByPk($keyid,$this->status)) {
                if ($multi) {
                    return true;
                } else {
                    $this->redirect(array('user/list','table'=>$table,'colid'=>$info['colid']));
                }
            } else {
                if ($multi) {
                    return false;
                } else {
                    $this->message(0, '非常抱歉，删除【文章】失败，请核实');
                }
            }
        } elseif ($table == 'album') {
            if ($this->delAlbum($keyid)) {
                if ($multi) {
                    return true;
                } else {
                    $this->redirect(array( 'user/list','table'=>$table));
                }
            } else {
                if ($multi) {
                    return false;
                } else {
                    $this->message(0, '非常抱歉，删除【相册】失败，请核实');
                }
            }
        }
    }

    private function delAlbum($keyid) {
        $info = Album::model()->findByPk($keyid);
        if (!$info) {
            return false;
            exit;
        }
        $attaches = Attachments::model()->findAllByAttributes(array('logid' => $keyid), 'classify=:classify', array(':classify' => 'album'));
        if (!empty($attaches)) {
            foreach ($attaches as $v) {
                $this->delAttach($v['id'], $v);
            }
        }
        if (Album::model()->updateByPk($keyid,$this->status)) {
            return true;
        } else {
            return false;
        }
    }

    private function delAttach($keyid, $iteminfo = array()) {
        if (empty($iteminfo)) {
            $iteminfo = Attachments::model()->findByPk($keyid);
        }
        if (!empty($iteminfo)) {
            if (Attachments::model()->updateByPk($keyid,$this->status)) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    
    public function actionDelPost() {
        $logid = zmf::filterInput($_POST['logid']);
        $type = zmf::filterInput($_POST['type'], 't', 1);
        $admin=false;
        if (empty($logid) OR !is_numeric($logid)) {
            $this->jsonOutPut(0, Yii::t('default', 'unkownerror'));
        }
        if (!Yii::app()->request->isAjaxRequest) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
        if (Yii::app()->user->isGuest) {
            $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
        }

        if (!in_array($type, array('post', 'comment', 'notice'))) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
        if ($type == 'post') { 
            $tinfo = Posts::model()->findByPk($logid);
            if (!$tinfo) {
                $this->jsonOutPut(0, Yii::t('default', 'pagenotexists'));
            } elseif ($tinfo['uid'] != Yii::app()->user->id) {
                $admin = Users::checkPower('delpost', false, true);
                if(!$admin){
                    $this->jsonOutPut(0, '请勿越权操作');
                }                
            }
            if ($admin) {
                $status = Posts::STATUS_DELED;
                $attr = array(
                    'status' => Posts::STATUS_DELED,
                );
                if(Posts::model()->updateByPk($logid,$attr)){
                    $this->jsonOutPut(1, '操作成功！');
                }else{
                    $this->jsonOutPut(1, '操作失败！');
                }                
            } elseif (Posts::model()->deleteByPk($logid)) {
                $this->jsonOutPut(1, '操作成功！');
            } else {
                $this->jsonOutPut(0, '操作失败');
            }
        } elseif ($type == 'comment') {
            $cinfo = Comments::model()->findByPk($logid);
            if (!$cinfo) {
                $this->jsonOutPut(0, Yii::t('default', 'pagenotexists'));
            } elseif ($cinfo['uid'] != Yii::app()->user->id) {               
                $admin = Users::checkPower('delcomment', false, true);
                if(!$admin){
                    $this->jsonOutPut(0, '请勿越权操作');
                }
            }
            if ($admin) {
                $status = Posts::STATUS_DELED;
                $attr = array(
                    'status' => Posts::STATUS_DELED,
                );
                if(Comments::model()->updateByPk($logid,$attr)){
                    $this->jsonOutPut(1, '操作成功！');
                }else{
                    $this->jsonOutPut(1, '操作失败！');
                }                
            } elseif (Comments::model()->deleteByPk($logid)) {
                //UserController::recordAction($logid, 'delcom', 'client');
                $this->jsonOutPut(1, '操作成功！');
            } else {
                $this->jsonOutPut(0, '操作失败');
            }
        } elseif ($type == 'notice') {
            $cinfo = Notification::model()->findByPk($logid);
            if (!$cinfo) {
                $this->jsonOutPut(0, Yii::t('default', 'pagenotexists'));
            } elseif ($cinfo['uid'] != Yii::app()->user->id) {
                $this->jsonOutPut(0, '请勿越权操作');
            }
            if (Notification::model()->deleteByPk($logid)) {                
                $this->jsonOutPut(1, '操作成功！');
            } else {
                $this->jsonOutPut(0, '操作失败');
            }
        }
    }

}

?>
