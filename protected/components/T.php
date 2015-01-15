<?php

class T extends CController {

    public $menu = array();
    public $breadcrumbs = array();
    protected $_theme;
    protected $_themePath;
    protected $_gets;
    protected $_baseUrl;
    protected $_noColButOther;
    protected $currentColId;
    protected $platform;
    protected $zmf = false;
    public $pageDescription;
    public $keywords;
    public $uid;
    public $userInfo;
    public $currentCol = array();
    //模板有关，均已theme开头
    public $theme_panelStyle='primary';
    public $inMobile=false;

    public function init() {
        if (!zmf::config('closeSite')) {
            self::_closed();
        }
        Yii::app()->setTimeZone('Asia/Chongqing');
        $this->_theme = Yii::app()->theme;
        $this->_themePath = str_replace(array('\\', '\\\\'), '/', Yii::app()->theme->basePath);
        $this->_gets = Yii::app()->request;
        $this->_baseUrl = Yii::app()->baseUrl;
        $this->checkApp();
        if (!Yii::app()->user->isGuest) {
            $this->userInfo = Users::getUserInfo(Yii::app()->user->id);
        }
        $theme=Yii::app()->request->getParam('theme');
        if($theme && in_array($theme,array('primary','info','danger','warning'))){
            $this->theme_panelStyle=$theme;
        }
        if (zmf::checkmobile()) {
            $this->inMobile = TRUE;
            $this->layout='mobile';
        }
    }

    static public function jsonOutPut($status = 0, $msg = '', $end = true, $return = false) {
        $outPutData = array(
            'status' => $status,
            'msg' => $msg
        );
        $json = CJSON::encode($outPutData);
        if ($return) {
            return $json;
        } else {
            echo $json;
        }
        if ($end) {
            Yii::app()->end();
        }
    }

    public function message($status = 0, $message = '', $url = '', $time = 3, $jump = true, $render = true) {
        if (empty($url)) {
            $url = Yii::app()->user->returnUrl;
        }
        if ($status) {
            $success = $message;
        } else {
            $error = $message;
        }
        $data = array(
            'error' => $error,
            'success' => $success,
            'jumpUrl' => $url,
            'waitSecond' => $time,
            'jumpStatus' => $jump
        );
        if ($render) {
            $this->render('//msg/error', $data);
        } else {
            $this->renderPartial('//msg/error', $data);
        }
        Yii::app()->end();
    }

    public function _closed($reason = '') {
        if ($reason == '') {
            $reason = zmf::config('closeSiteReason');
        }
        $this->renderPartial('/error/close', array('message' => $reason));
        Yii::app()->end();
    }

    private function checkApp() {
        if (empty(Yii::app()->params['author']) || empty(Yii::app()->params['copyrightInfo'])) {
            self::_closed(Yii::t('default', 'notServiced'));
        } else {
            if (md5(Yii::app()->params['author']) != '067e73ad3739f7e6a1fc68eb391fc5ba' || md5(Yii::app()->params['copyrightInfo']) != 'acc869dee704131e9024decebb3ef0c3') {
                self::_closed(Yii::t('default', 'notServiced'));
            }
            $this->zmf = true;
        }
    }

    public function checkPower($type, $json = false, $return = false, $isAdmin = false) {
        if (is_array($type)) {
            $uid = $type['uid'];
            $type = $type['type'];
        }
//        $cacheKey="checkPower-{$type}-{$uid}";
//        $ckinfo=zmf::getFCache($cacheKey);
//        if($ckinfo){
//            return $ckinfo;
//        }

        if (Yii::app()->user->isGuest) {
            $info = Yii::t('default', 'loginfirst');
            if ($return) {
                return 0;
            } elseif (!$json AND ! Yii::app()->request->isAjaxRequest) {
                $this->message(0, $info, Yii::app()->createUrl('site/login'));
            } else {
                $this->jsonOutPut(0, $info);
            }
        } elseif (!$uid) {
            $uid = Yii::app()->user->id;
        }
        $userinfo = Users::getUserInfo($uid);
        if (!$userinfo) {
            $info = '不存在的用户，请核实';
            if ($return) {
                return 0;
            } elseif (!$json AND ! Yii::app()->request->isAjaxRequest) {
                $this->message(0, $info, Yii::app()->createUrl('site/logout'));
            } else {
                $this->jsonOutPut(0, $info);
            }
        }
        $gid = $userinfo['groupid'];
        if (!$gid) {
            $info = '您在组织之外，请设置用户组！';
            if ($return) {
                return 0;
            } elseif (!$json AND ! Yii::app()->request->isAjaxRequest) {
                $this->message(0, $info, Yii::app()->baseUrl);
            } else {
                $this->jsonOutPut(0, $info);
            }
        }
        $groupinfo = UserGroup::getInfo($gid);
        if (!$groupinfo) {
            $info = '您所在用户组不存在，请核实';
            if ($return) {
                return 0;
            } elseif (!$json AND ! Yii::app()->request->isAjaxRequest) {
                $this->message(0, $info, Yii::app()->createUrl('site/logout'));
            } else {
                $this->jsonOutPut(0, $info);
            }
        }
        if ($isAdmin) {
            $gids = zmf::config('adminGroupIds');
            $arr = explode(',', $gids);
            if (!in_array($gid, $arr)) {
                $info = '您好像发现了新大陆，但该地区为禁区！';
                if ($return) {
                    return 0;
                } elseif (!$json AND ! Yii::app()->request->isAjaxRequest) {
                    $this->message(0, $info, Yii::app()->baseUrl);
                } else {
                    $this->jsonOutPut(0, $info);
                }
            }
        }
        if ($type == 'login') {
            return true;
        }
        $power = GroupPowers::model()->findByAttributes(array('powers' => $type), 'gid=:gid', array(':gid' => $gid));        
        if (!$power) {
            $info = '您所在用户组【' . $groupinfo['title'] . '】无权该操作';
            if ($return) {
                return 0;
            } elseif (!$json AND ! Yii::app()->request->isAjaxRequest) {
                $this->message(0, $info);
            } else {
                $this->jsonOutPut(0, $info);
            }
        }
        return 1;
    }

    /**
     * 检查用户的权限，只返回true or false
     */
    public function checkYesOrNo($type,$json = true, $return = true, $isAdmin = false) {
        if (!$type) {
            return false;
        }        
        $re=T::checkPower($type, $json, $return, $isAdmin);
        return $re;
    }

}
