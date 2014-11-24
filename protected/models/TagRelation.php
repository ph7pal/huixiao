<?php

/**
 * This is the model class for table "{{tag_relation}}".
 *
 * The followings are the available columns in table '{{tag_relation}}':
 * @property string $id
 * @property string $logid
 * @property string $tagid
 * @property string $classify
 */
class TagRelation extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{tag_relation}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('logid, tagid, classify', 'required'),
        array('logid, tagid', 'length', 'max' => 11),
        array('classify', 'length', 'max' => 32),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, logid, tagid, classify', 'safe', 'on' => 'search'),
    );
  }

  /**
   * @return array relational rules.
   */
  public function relations() {
    // NOTE: you may need to adjust the relation name and the related
    // class name for the relations automatically generated below.
    return array(
        'tagInfo'=>array(self::BELONGS_TO,'Tags','tagid'),
    );
  }

  /**
   * @return array customized attribute labels (name=>label)
   */
  public function attributeLabels() {
    return array(
        'id' => 'ID',
        'logid' => 'Logid',
        'tagid' => 'Tagid',
        'classify' => 'Classify',
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
    $criteria->compare('logid', $this->logid, true);
    $criteria->compare('tagid', $this->tagid, true);
    $criteria->compare('classify', $this->classify, true);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return TagRelation the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

  /**
   * 返回相关标签的文章
   * 根据一篇文章的标签先获得用到该标签的所有文章//取出所有文章的所有标签，根据标签取得文章
   * @param 文章标签数组
   * @return 相关性文章
   */
  public static function getRelations($arr = array(),$type=1) {
    if (empty($arr) || !is_array($arr)) {
      return false;
    }
    $str = join(',', $arr);
    if (!$str) {
      return false;
    }
    $sql = "SELECT id,title FROM {{posts}} WHERE id IN(SELECT DISTINCT(logid) FROM {{tag_relation}} WHERE tagid IN({$str})) AND classify='posts' ORDER BY hits DESC LIMIT 10";
    $info = Yii::app()->db->createCommand($sql)->queryAll();
    return $info;
  }

  public static function getTagsPosts($keyid) {
    if (!$keyid)
      return false;
    $sql = "SELECT DISTINCT(logid) FROM {{tag_relation}} WHERE tagid={$keyid}";
    $info = Yii::app()->db->createCommand($sql)->queryAll();
    $ids = array();
    $ids[] = '0';
    if (!empty($info)) {
      $ids = array_keys(CHtml::listData($info, 'logid', ''));
    }
    return $ids;
  }

  /**
   * 检查传入的标签是否已存在，不存在则创建，并检查是否已存在对应关系，不存在则创建
   * @param type $id
   * @param type $crumb
   */
  public function checkAndWriteTag($id, $crumb, $tagid = 0) {
    if (!$tagid) {
      $_crumb = strip_tags(trim($crumb));
      if(!$_crumb){
        return;
      }
      $_taginfo = Tags::model()->find('title=:title', array(':title' => $_crumb));
      if (!$_taginfo) {
        $_tagdata = array(
            'title' => $_crumb,
            'name' => tools::pinyin($_crumb),
            'classify' => 'posts',
            'cTime' => time(),
            'status' => 1
        );
        $model_tag = new Tags;
        $model_tag->attributes = $_tagdata;
        $_tagid = $model_tag->save(false);
      } else {
        $_tagid = $_taginfo['id'];
      }
    } else {
      $_tagid = $tagid;
    }
    $_tagrel = array(
        'logid' => $id,
        'tagid' => $_tagid,
        'classify' => 'posts'
    );
    $reinfo = TagRelation::model()->find('logid=:logid AND tagid=:tagid AND classify="posts"', array(':logid' => $id, ':tagid' => $_tagid));
    if (!$reinfo) {
      $model_tagrel = new TagRelation;
      $model_tagrel->attributes = $_tagrel;
      $model_tagrel->save(false);
    }
  }

}
