<?php

class IndexController extends T {

  public $layout = 'main';

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
        //'tupianxinwen',图片新闻直接取有封面图的文章
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
    $sql = "SELECT id,title,attachid,cTime FROM {{posts}} WHERE attachid>0 AND status=1 ORDER BY cTime DESC LIMIT 5";
    $tupians = Yii::app()->db->createCommand($sql)->queryAll();    
    if(!empty($tupians)){
      foreach($tupians as $key=>$tupian){
        $faceurl='';
        if($tupian['attachid']>0){
          $attachinfo=  Attachments::getOne($tupian['attachid']);
          if($attachinfo){
            $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], 'origin') .'/'. $attachinfo['filePath'];
          }
        }
        $tupian['faceurl'] = $faceurl;
        $tupians[$key] = $tupian;
      }
    }
    $colinfos['tupianxinwen']['posts']=$tupians;
//    给黑名单前两个添加图片
//    $heimindans=$colinfos['heimingdan']['posts'];
//    if(!empty($heimindans)){
//      foreach($heimindans as $key=>$heimindan){        
//        $faceurl=zmf::noImg('url');
//        if($heimindan['attachid']>0 && $key<2){
//          $attachinfo=  Attachments::getOne($heimindan['attachid']);
//          if($attachinfo){
//            $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], 'origin') .'/'. $attachinfo['filePath'];
//          }
//        }
//        $heimindan['faceurl'] = $faceurl;
//        $heimindans[$key] = $heimindan;
//      }
//    }
//    $colinfos['heimingdan']['posts']=$heimindans;
//     给骗局前两个添加图片
//    $pianjus=$colinfos['huixiaopianju']['posts'];
//    if(!empty($pianjus)){
//      foreach($pianjus as $key=>$pianju){        
//        $faceurl=zmf::noImg('url');
//        if($pianju['attachid']>0 && $key<2){
//          $attachinfo=  Attachments::getOne($pianju['attachid']);
//          if($attachinfo){
//            $faceurl = zmf::uploadDirs($attachinfo['cTime'], 'site', $attachinfo['classify'], 'origin') .'/'. $attachinfo['filePath'];
//          }
//        }
//        $pianju['faceurl'] = $faceurl;
//        $pianjus[$key] = $pianju;
//      }
//    }
//    $colinfos['huixiaopianju']['posts']=$pianjus;
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
    $topLecturers = Lecturer::getLecturer(0);//热门讲师推荐
    //$topExes = Users::getExhibition('exhibition', 10, 'order');
    $topGoods = Goods::tops();
    $newJobs = Jobs::getNews();
    //$newTeams = Team::getNews();//最新团队
    $topTeams = Team::getTops();//热门团队
    //$newExhibitions = Exhibitions::getNews();//最新展会公司
    $topExhibitions = Exhibition::getTops();//热门展会公司
    $newProducers = Producer::getNews();//最新企业
    $zhanhuis = Zhanhui::getNews();
    $topProducers = Producer::getTops();//热门企业
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
