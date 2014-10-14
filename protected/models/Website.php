<?php

/**
 * This is the model class for table "{{website}}".
 *
 * The followings are the available columns in table '{{website}}':
 * @property string $id
 * @property integer $uid
 * @property integer $faceimg
 * @property integer $localarea
 * @property string $companyname
 * @property string $companyowner
 * @property string $websitename
 * @property string $websiteurl
 * @property string $websiteowner
 * @property string $contactmobile
 * @property string $licensenumber
 * @property integer $cTime
 * @property integer $hits
 * @property integer $top
 * @property integer $status
 * @property integer $medal
 * @property string $medal_logo
 * @property string $medal_title
 */
class Website extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{website}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid, faceimg, localarea, companyname, companyowner, websitename, websiteurl, websiteowner, contactmobile, licensenumber, cTime, hits, top, status, medal_logo, medal_title', 'required'),
        array('uid, faceimg, localarea, cTime, hits, top, status, medal', 'numerical', 'integerOnly' => true),
        array('companyname, companyowner, websitename, websiteurl, websiteowner, contactmobile, licensenumber', 'length', 'max' => 255),
        array('medal_logo, medal_title', 'length', 'max' => 16),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, faceimg, localarea, companyname, companyowner, websitename, websiteurl, websiteowner, contactmobile, licensenumber, cTime, hits, top, status, medal, medal_logo, medal_title', 'safe', 'on' => 'search'),
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
        'uid' => '作者',
        'faceimg' => '封面图',
        'localarea' => '所在地',
        'companyname' => '企业全称',
        'companyowner' => '企业法人',
        'websitename' => '网站名称',
        'websiteurl' => '官方网站地址',
        'websiteowner' => '网站负责人',
        'contactmobile' => '联系手机',
        'licensenumber' => '营业执照注册号',
        'cTime' => '创建时间',
        'hits' => '点击次数',
        'top' => '是否置顶',
        'status' => '状态',
        'medal' => '徽章',
        'medal_logo' => '徽章LOGO',
        'medal_title' => '徽章标题',
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
    $criteria->compare('companyowner', $this->companyowner, true);
    $criteria->compare('websitename', $this->websitename, true);
    $criteria->compare('websiteurl', $this->websiteurl, true);
    $criteria->compare('websiteowner', $this->websiteowner, true);
    $criteria->compare('contactmobile', $this->contactmobile, true);
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
   * @return Website the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

}
