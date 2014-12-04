<?php

/**
 * This is the model class for table "{{medal}}".
 *
 * The followings are the available columns in table '{{medal}}':
 * @property string $id
 * @property string $title
 * @property string $logo
 * @property integer $cTime
 */
class Medal extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{medal}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('title, logo, classify', 'required'),
        array('cTime', 'numerical', 'integerOnly' => true),
        array('title,desc', 'length', 'max' => 255),
        array('logo,classify', 'length', 'max' => 16),
        array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, title, logo, cTime,classify,desc', 'safe', 'on' => 'search'),
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
        'title' => '徽章名称',
        'logo' => '图标名称',
        'desc' => '描述',
        'cTime' => '创建时间',
        'classify' => '分类',
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
    $criteria->compare('logo', $this->logo, true);
    $criteria->compare('desc', $this->desc, true);
    $criteria->compare('cTime', $this->cTime);
    $criteria->compare('classify', $this->classify);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return Medal the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

  public static function exClassify($type='') {
    $arr=array(
        'lecturer'=>'讲师',
        'qiye'=>'企业',
        'zhanhui'=>'展会公司',
    );
    if($type!=''){
      return $arr[$type];
    }
    return $arr;
  }

  public static function getAll($classify = '', $listData = true) {
    if ($classify) {
      $items = Medal::model()->findAll('classify=:class', array(':class' => $classify));
    } else {
      $items = Medal::model()->findAll();
    }
    if ($listData) {
      $arr = CHtml::listData($items, 'id', 'title');
      return $arr;
    } else {
      return $items;
    }
  }
  
  public static function creditLogos($classify='',$return=''){
      if($classify && $classify!='list'){
          $sql="SELECT title,logo,`desc` FROM {{medal}} WHERE classify='{$classify}'";
      }else{
          $sql="SELECT title,logo,`desc` FROM {{medal}}";
      }
      $items=zmf::db()->createCommand($sql)->queryAll();
      $real=array();
      $find='';
      if(!empty($items)){
          foreach($items as $val){
              $_key=$val['logo'];
              if($classify=='list'){
                  $real[$_key]=$val['title'];
              }else{
                  $real[$_key]=$val;
              }              
              if($_key==$return){
                  $find=$val;
              }
          }
      }      
      if($return){
          return $find['title'];
      }else{
          return $real;
      }      
  }

}
