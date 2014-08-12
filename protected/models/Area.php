<?php

/**
 * This is the model class for table "{{area}}".
 *
 * The followings are the available columns in table '{{area}}':
 * @property integer $id
 * @property integer $pid
 * @property string $name
 * @property integer $sort
 */
class Area extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{area}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('pid, name, sort', 'required'),
        array('pid, sort', 'numerical', 'integerOnly' => true),
        array('name', 'length', 'max' => 50),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, pid, name, sort', 'safe', 'on' => 'search'),
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
        'pid' => 'Pid',
        'name' => 'Name',
        'sort' => 'Sort',
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

    $criteria->compare('id', $this->id);
    $criteria->compare('pid', $this->pid);
    $criteria->compare('name', $this->name, true);
    $criteria->compare('sort', $this->sort);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return Area the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

  public static function listArea($keyid = '', $foreach = true, $limit = 0) {
    if ($limit > 0) {
      $_limit = " LIMIT $limit ";
    } else {
      $_limit = ' ';
    }
    if (empty($keyid)) {
      $sql = "SELECT id,name FROM {{area}} WHERE pid=0 ORDER BY `sort`{$_limit}";
    } else {
      $sql = "SELECT id,name FROM {{area}} WHERE pid={$keyid} ORDER BY `sort`{$_limit}";
    }
    $items = Yii::app()->db->createCommand($sql)->queryAll();
    if ($foreach) {
      return CHtml::listData($items, 'id', 'name');
    } else {
      return $items;
    }
  }

  public static function getChildren($keyid) {
    //SELECT * from {{area}} a RIGHT JOIN {{area}} b ON a.id=b.pid RIGHT JOIN {{area}} c ON b.id=c.pid where a.id=$keyid
    if (!$keyid) {
      return false;
    }
    $cacheKey = "getChildren-{$keyid}";
    $arr = zmf::getFCache($cacheKey);
    if ($arr) {
      return $arr;
    }
    $info = Area::model()->findByPk($keyid);
    if (!$info) {
      return false;
    }
    $arr[] = $keyid;
    $items = Area::model()->findAll('pid=:pid', array(':pid' => $keyid));
    if (!empty($items)) {
      $tmp = array_filter(array_keys(CHtml::listData($items, 'id', '')));
      $arr = array_merge($arr, $tmp);
      $idstr = join(',', $arr);
      $items = Area::model()->findAll('pid IN(' . $idstr . ')');
      $tmp = array_filter(array_keys(CHtml::listData($items, 'id', '')));
      $arr = array_merge($arr, $tmp);
    }
    $arr = array_unique($arr);
    zmf::setFCache($cacheKey, $arr, 259200);
    return $arr;
  }

  public static function getWholeOne($keyid) {
    if (!$keyid) {
      return false;
    }
    $info = Area::model()->findByPk($keyid);
    if (!$info) {
      return false;
    }
    if ($info['pid'] == 0) {
      return $info['name'];
    } else {
      $pre1 = Area::model()->findByPk($info['pid']);
      if ($pre1['pid'] == 0) {
        return $pre1['name'].' '.$info['name'];
      }else{
        $pre2 = Area::model()->findByPk($pre1['pid']);
        if($pre2){
          return $pre2['name'].' '.$pre1['name'].' '.$info['name'];
        }else{
          return $pre1['name'].' '.$info['name'];
        }
      }
    }
  }

}
