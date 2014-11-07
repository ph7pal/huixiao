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
        'zhaoshang',
        'yingxiaomoshi',//营销模式
    );

    $colinfos = Columns::indexColumns($arr);
    $tupians=$colinfos['tupianxinwen']['posts'];
    if(!empty($tupians)){
      foreach($tupians as $key=>$tupian){
        $faceurl='';
        if($tupian['attachid']>0){
          $attachinfo=  Attachments::getOne($tupian['attachid']);
          if($attachinfo){
            $faceurl = zmf::uploadDirs($attachinfo['logid'], 'site', $attachinfo['classify'], 'origin') . $attachinfo['filePath'];
          }
        }
        $tupian['faceurl'] = $faceurl;
        $tupians[$key] = $tupian;
      }
    }
    $colinfos['tupianxinwen']['posts']=$tupians;
    $colinfos['topheimingdan']['posts']=array();
    //获取黑名单最热
    $_colinfo=$colinfos['heimingdan']['colinfo'];
    if($_colinfo){
      $_colitems = Posts::allPosts(array('colid'=>$_colinfo['id'],'top'=>1,'fields'=>'id,title,attachid,cTime','order'=>'hits'),10,NULL);
      $colinfos['topheimingdan']['posts']=$_colitems;
      $colinfos['topheimingdan']['colinfo']=$_colinfo;
    }
    //获取会销骗局
    $_pjcolinfo=$colinfos['huixiaopianju']['colinfo'];
    if($_pjcolinfo){
      $_colitems = Posts::allPosts(array('colid'=>$_pjcolinfo['id'],'top'=>1,'fields'=>'id,title,attachid,cTime','order'=>'hits'),10,NULL);
      $colinfos['toppianju']['posts']=$_colitems;
      $colinfos['toppianju']['colinfo']=$_pjcolinfo;
    }
    
    $areas = Area::listArea(NUll, false, 10);
    $newCredits = UserCredit::getNews(); //最新认证
    //$topTeams=Users::getTeam('top');
    //$newTeams=Users::getTeam('new');
    $topLecturers = Lecturer::getLecturer(0);
    //$topExes = Users::getExhibition('exhibition', 10, 'order');
    $topGoods = Goods::tops();
    $newJobs = Jobs::getNews();
    $newTeams = Team::getNews();
    $topTeams = Team::getTops();
    //$newExhibitions = Exhibitions::getNews();
    $topExhibitions = Exhibition::getTops();
    $newProducers = Producer::getNews();
    $zhanhuis = Zhanhui::getNews();
    $topProducers = Producer::getTops();
    $this->pageTitle = zmf::config('sitename') . ' - ' . zmf::config('shortTitle');
    $data = array(
        'mainCols' => $colinfos,
        'newCredits' => $newCredits,
        'qiyes' => $qiyes,
        'areas' => $areas,
        'topTeams' => $topTeams,
        'newTeams' => $newTeams,
//        'newExhibitions' => $newExhibitions,
        'topExhibitions' => $topExhibitions,
        'topTeams' => $topTeams,
        'topLecturers' => $topLecturers,
//        'topExes' => $topExes,
        'topGoods' => $topGoods,
        'newJobs' => $newJobs,
        'newProducers' => $newProducers,
        'topProducers' => $topProducers,
        'zhanhuis' => $zhanhuis
    );
    $this->render('index', $data);
  }

}
