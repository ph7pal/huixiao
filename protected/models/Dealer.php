<?php

/**
 * This is the model class for table "{{dealer}}".
 *
 * The followings are the available columns in table '{{dealer}}':
 * @property string $id
 * @property integer $uid
 * @property integer $faceimg
 * @property integer $localarea
 * @property string $companyowner
 * @property string $companyname
 * @property string $jobname
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
class Dealer extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{dealer}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid,localarea, companyowner, companyname, jobname, officurl, contactname, contactmobile, mainproduct, licensenumber', 'required'),
        array('uid, faceimg, localarea, cTime, hits, top, status, medal', 'numerical', 'integerOnly' => true),
        array('companyowner, companyname, jobname, officurl, contactname, contactmobile, mainproduct, licensenumber', 'length', 'max' => 255),
        array('medal_logo, medal_title', 'length', 'max' => 16),
        array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
        array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, faceimg, localarea, companyowner, companyname, jobname, officurl, contactname, contactmobile, mainproduct, licensenumber, cTime, hits, top, status, medal, medal_logo, medal_title', 'safe', 'on' => 'search'),
    );
  }

  /**
   * @return array relational rules.
   */
  public function relations() {
    // NOTE: you may need to adjust the relation name and the related
    // class name for the relations automatically generated below.
    return array(
        'userinfo' => array(self::BELONGS_TO, 'Users', 'uid'),
        'areaInfo' => array(self::BELONGS_TO, 'Area', 'localarea'),
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
        'companyowner' => '法人代表',
        'companyname' => '企业全称',
        'jobname' => '职位名称',
        'officurl' => '官方网站地址',
        'contactname' => '联系人姓名',
        'contactmobile' => '联系人手机',
        'mainproduct' => '主打产品',
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
    $criteria->compare('companyowner', $this->companyowner, true);
    $criteria->compare('companyname', $this->companyname, true);
    $criteria->compare('jobname', $this->jobname, true);
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
   * @return Dealer the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

}
