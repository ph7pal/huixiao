<?php

class IndexController extends T {

  public $layout = 'main';

  public function actions() {
    return array(
        // captcha action renders the CAPTCHA image displayed on the contact page
        'captcha' => array(
            'class' => 'CCaptchaAction',
            'backColor' => 0xFFFFFF,
        ),
        // page action renders "static" pages stored under 'protected/views/site/pages'
        // They can be accessed via: index.php?r=site/page&view=FileName
        'page' => array(
            'class' => 'CViewAction',
        ),
    );
  }

  public function init() {
    parent::init();
    $uid = zmf::config('officalUid');
    if (!$uid) {
      $this->uid = 0;
    } else {
      $this->uid = intval($uid);
    }
  }

  public function actionIndex() {
    $arr = array(
        'toutiaotuijian', //头条推荐        
        'tupianxinwen',
        'huixiaozixun',
        'xinwenzixun',
        'zhengfufagui',
        'zhanhuizixun',
        'huixiaopianju', //会销骗局
        'heimingdan', //黑名单曝光
        'zhishituijian1',
        'zhishituijian2',
        'zhishituijian3',
        'zhishituijian4',
        'zhaopin',
            //''
    );

    $colinfos = Columns::indexColumns($arr);
    //zmf::test($colinfos);
    $areas = Area::listArea(NUll, false, 10);
    $newCredits = UserCredit::getNews(); //最新认证
    $qiyes = Users::getExhibition('producer');
    $topTeams=Users::getTeam('top');
    $newTeams=Users::getTeam('new');
    $topLecturers=Users::getLecturer(0);
    $topExes=Users::getExhibition('exhibition',10,'order');
    $this->pageTitle = zmf::config('sitename') . ' - ' . zmf::config('shortTitle');
    $data = array(
        'mainCols' => $colinfos,
        'newCredits' => $newCredits,
        'qiyes' => $qiyes,
        'areas'=>$areas,
        'topTeams'=>$topTeams,
        'newTeams'=>$newTeams,
        'topLecturers'=>$topLecturers,
        'topExes'=>$topExes
            //'seconds' => $seconds
    );
    $this->render('index', $data);
  }

}
