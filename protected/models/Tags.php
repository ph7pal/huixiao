<?php

class Tags extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{tags}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('title,classify', 'required'),
        array('hits,cTime,posts,length', 'length', 'max' => 11),
        array('title', 'length', 'max' => 255),
        array('name, classify', 'length', 'max' => 32),
        array('status', 'numerical', 'integerOnly' => true),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, title, name, classify, hits,cTime,status,posts,length', 'safe', 'on' => 'search'),
    );
  }

  /**
   * @return array relational rules.
   */
  public function relations() {
    // NOTE: you may need to adjust the relation name and the related
    // class name for the relations automatically generated below.
    return array(
    );
  }

  /**
   * @return array customized attribute labels (name=>label)
   */
  public function attributeLabels() {
    return array(
        'id' => 'ID',
        'title' => '标签名字',
        'name' => '拼音',
        'classify' => '分类',
        'hits' => '点击',
        'cTime' => '创建时间',
        'status' => '状态',
        'posts' => '文章数量',
        'length' => '标签长度'
    );
  }

  /**
   * Retrieves a list of models based on the current search/filter conditions.
   *
   * Typical usecase:
   * - Initialize the model fields with values from filter form.
   * - Execute this method to get CActiveDataProvider instance which will filter
   * models according to data in model fields.
   * - Pass data provider to CGridView, CListView or any similar widget.
   *
   * @return CActiveDataProvider the data provider that can return the models
   * based on the search/filter conditions.
   */
  public function search() {
    // @todo Please modify the following code to remove attributes that should not be searched.

    $criteria = new CDbCriteria;

    $criteria->compare('id', $this->id, true);
    $criteria->compare('title', $this->title, true);
    $criteria->compare('name', $this->name, true);
    $criteria->compare('classify', $this->classify, true);
    $criteria->compare('hits', $this->hits, true);
    $criteria->compare('cTime', $this->cTime, true);
    $criteria->compare('status', $this->status, true);
    $criteria->compare('posts', $this->posts, true);
    $criteria->compare('length', $this->length, true);
    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return Tags the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }
  public static function allTags(){
    $sql = "SELECT id,title FROM {{tags}} WHERE status=1 AND classify='posts'";
    $items = Yii::app()->db->createCommand($sql)->queryAll();
    $return=CHtml::listData($items,'id','title');
    return $return;
  }

  public function getPostTags($keyid, $type) {
    $sql = "SELECT DISTINCT(tagid) FROM {{tag_relation}} WHERE logid={$keyid} AND classify='{$type}'";
    $items = Yii::app()->db->createCommand($sql)->queryAll();
    if (!empty($items)) {
      $items = array_keys(CHtml::listData($items, 'tagid', ''));
      $str = join(',', $items);
      if ($str != '') {
        $sql = "SELECT id,title FROM {{tags}} WHERE id IN({$str}) AND classify='{$type}'";
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        return $items;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  public static function suggestTags($keyword, $limit = 10) {
    if(!$keyword){
      return false;
    }
    $items = Tags::model()->findAll(array(
        'condition' => 'title LIKE :keyword OR name LIKE :keyword',
        'order' => 'hits DESC',
        'limit' => $limit,
        'params' => array(
            ':keyword' => '%' . strtr($keyword, array('%' => '\%', '_' => '\_', '\\' => '\\\\')) . '%',
            ':keyword' => '%' . strtr($keyword, array('%' => '\%', '_' => '\_', '\\' => '\\\\')) . '%',
        ),
    ));

    return $items;
  }

  public static function getSimpleInfo($keyid) {
    $info = Tags::model()->findByPk($keyid);
    return $info;
  }

  public static function getRelations($keyid) {
    if (!isset($keyid)) {
      return false;
      exit();
    }

    $sql = "SELECT DISTINCT(logid) FROM {{tag_relation}} WHERE tagid={$keyid}";
    $info = Yii::app()->db->createCommand($sql)->queryAll();
    if (empty($info)) {
      return false;
    }

    $_logarr = array();
    foreach ($info as $_i) {
      $_logarr[] = $_i['logid'];
    }
    $_logstr = join(',', $_logarr);
    $sql1 = "SELECT tagid FROM {{tag_relation}} WHERE logid IN({$_logstr}) AND tagid!={$keyid}";
    $info1 = Yii::app()->db->createCommand($sql1)->queryAll();
    $_tagarr = array();
    foreach ($info1 as $_i1) {
      $_tagarr[] = $_i1['tagid'];
    }
    //$_tagstr=join(',',$_tagarr);            
    //zmf::test(array_count_values($_tagarr));
    return array_count_values($_tagarr);
  }

  public function getCount($tagid) {
    if (!$tagid) {
      return 0;
    }
    $num = TagRelation::model()->count('tagid=:tagid', array(':tagid' => $tagid));
    Tags::model()->updateByPk($tagid, array('posts' => $num));
    return $num;
  }

  public static function findAndAdd($title, $classify, $logid) {
    $info = Tags::model()->find('title=:title AND classify=:classify', array(':title' => $title, ':classify' => $classify));
    if (!$info) {
      $_data = array(
          'title' => $title,
          'name' => tools::pinyin($title),
          'classify' => $classify,
          'status' => 1,
          'cTime' => time(),
      );
      $modelB = new Tags;
      $modelB->attributes = $_data;
      if ($modelB->save(false)) {
        $tagid = $modelB->id;
      }
    } else {
      $tagid = $info['id'];
    }
    if ($tagid && $logid) {
      $_info = TagRelation::model()->find('tagid=:tagid AND logid=:logid AND classify=:classify', array(':tagid' => $tagid, ':logid' => $logid, ':classify' => $classify));
      if (!$_info) {
        $_tagre = array(
            'tagid' => $tagid,
            'logid' => $logid,
            'classify' => $classify,
            'cTime' => time()
        );
        $modelC = new TagRelation;
        $modelC->attributes = $_tagre;
        $modelC->save();
      }
    }
  }

  public static function classify($return = '') {
    $arr = array(
        'posts' => '文章',
        //'blog' => '博客',
    );
    if ($return != '') {
      return $arr[$return];
    } else {
      return $arr;
    }
  }

}
