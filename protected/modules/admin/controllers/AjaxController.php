<?php

class AjaxController extends H {

    public function init() {
        parent::init();
        if (!Yii::app()->request->isAjaxRequest) {
            $this->jsonOutPut(0, Yii::t('default', 'forbiddenaction'));
        }
        if (Yii::app()->user->isGuest) {
            $this->jsonOutPut(0, Yii::t('default', 'loginfirst'));
        }
    }

    public function actionArea() {
        if (Yii::app()->request->isAjaxRequest && isset($_GET['q'])) {
            $name = $_GET['q']; 
            $criteria = new CDbCriteria;
            $criteria->condition = "name LIKE :keyword";
            $criteria->params = array(':keyword' => '%' . strtr($name, array('%' => '\%', '_' => '\_', '\\' => '\\\\')) . '%');
            $criteria->limit = 10;
            $userArray = Area::model()->findAll($criteria);
            $returnVal = '';
            foreach ($userArray as $userAccount) {
                $_btitle='';
                if($userAccount['pid']>0){
                    $_beinfo=Area::model()->findByPk($userAccount['pid']);
                    if($_beinfo){
                        $_btitle='('.$_beinfo['name'].')';
                    }
                }
                $returnVal .= $userAccount->getAttribute('name') .$_btitle. '|'. $userAccount->getAttribute('id') ."\n";
            }
            echo $returnVal;
        }
    }
    
    public function actionUser() {
        if (Yii::app()->request->isAjaxRequest && isset($_GET['q'])) {
            $name = $_GET['q']; 
            $criteria = new CDbCriteria;
            $criteria->condition = "truename LIKE :keyword OR username LIKE :keyword";
            $criteria->params = array(':keyword' => '%' . strtr($name, array('%' => '\%', '_' => '\_', '\\' => '\\\\')) . '%');
            $criteria->limit = 10;
            $userArray = Users::model()->findAll($criteria);
            $returnVal = '';
            foreach ($userArray as $userAccount) {
                $returnVal .= $userAccount->getAttribute('truename') . '|'. $userAccount->getAttribute('id') ."\n";
            }
            echo $returnVal;
        }
    }

}
