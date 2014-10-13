<?php

/**
 * This is the model class for table "{{team}}".
 *
 * The followings are the available columns in table '{{team}}':
 * @property string $id
 * @property integer $uid
 * @property integer $faceimg
 * @property integer $localarea
 * @property string $companyname
 * @property string $teamname
 * @property string $companyowner
 * @property string $officurl
 * @property string $contactname
 * @property string $contactmobile
 * @property string $mainproduct
 * @property string $licensenumber
 * @property integer $cTime
 * @property integer $hits
 * @property integer $top
 * @property integer $status
 * @property integer $medal
 * @property string $medal_logo
 * @property string $medal_title
 */
class Team extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{team}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid, faceimg, localarea, companyname, teamname, companyowner, officurl, contactname, contactmobile, mainproduct, licensenumber, cTime, hits, top, status, medal_logo, medal_title', 'required'),
        array('uid, faceimg, localarea, cTime, hits, top, status, medal', 'numerical', 'integerOnly' => true),
        array('companyname, teamname, companyowner, officurl, contactname, contactmobile, mainproduct, licensenumber', 'length', 'max' => 255),
        array('medal_logo, medal_title', 'length', 'max' => 16),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, faceimg, localarea, companyname, teamname, companyowner, officurl, contactname, contactmobile, mainproduct, licensenumber, cTime, hits, top, status, medal, medal_logo, medal_title', 'safe', 'on' => 'search'),
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
        'uid' => 'Uid',
        'faceimg' => 'Faceimg',
        'localarea' => 'Localarea',
        'companyname' => 'Companyname',
        'teamname' => 'Teamname',
        'companyowner' => 'Companyowner',
        'officurl' => 'Officurl',
        'contactname' => 'Contactname',
        'contactmobile' => 'Contactmobile',
        'mainproduct' => 'Mainproduct',
        'licensenumber' => 'Licensenumber',
        'cTime' => 'C Time',
        'hits' => 'Hits',
        'top' => 'Top',
        'status' => 'Status',
        'medal' => 'Medal',
        'medal_logo' => 'Medal Logo',
        'medal_title' => 'Medal Title',
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
    $criteria->compare('uid', $this->uid);
    $criteria->compare('faceimg', $this->faceimg);
    $criteria->compare('localarea', $this->localarea);
    $criteria->compare('companyname', $this->companyname, true);
    $criteria->compare('teamname', $this->teamname, true);
    $criteria->compare('companyowner', $this->companyowner, true);
    $criteria->compare('officurl', $this->officurl, true);
    $criteria->compare('contactname', $this->contactname, true);
    $criteria->compare('contactmobile', $this->contactmobile, true);
    $criteria->compare('mainproduct', $this->mainproduct, true);
    $criteria->compare('licensenumber', $this->licensenumber, true);
    $criteria->compare('cTime', $this->cTime);
    $criteria->compare('hits', $this->hits);
    $criteria->compare('top', $this->top);
    $criteria->compare('status', $this->status);
    $criteria->compare('medal', $this->medal);
    $criteria->compare('medal_logo', $this->medal_logo, true);
    $criteria->compare('medal_title', $this->medal_title, true);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return Team the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }
  public static function getNews() {
    $sql = "SELECT id,teamname FROM {{team}} ORDER BY cTime DESC LIMIT 12";
    $items = Yii::app()->db->createCommand($sql)->queryAll();
    return $items;
  }
  public static function getTops() {
    $sql = "SELECT id,uid,teamname FROM {{team}} ORDER BY cTime DESC LIMIT 12";
    $items = Yii::app()->db->createCommand($sql)->queryAll();
    return $items;
  }

}
