<?php

/**
 * This is the model class for table "{{user_credit}}".
 *
 * The followings are the available columns in table '{{user_credit}}':
 * @property string $id
 * @property string $uid
 * @property integer $localarea
 * @property string $title
 * @property string $classify
 * @property integer $cTime
 * @property integer $lastupdate
 * @property integer $status
 * @property string $desc
 * @property integer $ip
 */
class UserCredit extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{user_credit}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid, localarea,classify', 'required'),
        array('localarea, cTime, lastupdate, status', 'numerical', 'integerOnly' => true),
        array('uid', 'length', 'max' => 11),
        array('title, desc', 'length', 'max' => 255),
        array('classify', 'length', 'max' => 16),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, localarea, title, classify, cTime, lastupdate, status, desc, ip', 'safe', 'on' => 'search'),
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
        'localarea' => '所属地区',
        'title' => '认证的名称',
        'classify' => '认证类型',
        'cTime' => '认证时间',
        'lastupdate' => '操作时间',
        'status' => '认证状态',
        'desc' => '审核原因',
        'ip' => '认证IP',
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
    $criteria->compare('uid', $this->uid, true);
    $criteria->compare('localarea', $this->localarea);
    $criteria->compare('title', $this->title, true);
    $criteria->compare('classify', $this->classify, true);
    $criteria->compare('cTime', $this->cTime);
    $criteria->compare('lastupdate', $this->lastupdate);
    $criteria->compare('status', $this->status);
    $criteria->compare('desc', $this->desc, true);
    $criteria->compare('ip', $this->ip);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return UserCredit the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

  public static function findOne($uid) {
    if (!$uid) {
      return false;
    }
    $info = UserCredit::model()->find('uid=' . $uid);
    return $info;
  }

  public static function getNews() {
    $sql = "SELECT uid,title,classify FROM {{user_credit}} WHERE status=1 ORDER BY cTime DESC LIMIT 10";
    $items = Yii::app()->db->createCommand($sql)->queryAll();
    return $items;
  }

  public static function listQiye() {
        $sql = "SELECT id,companyname FROM {{producer}} WHERE status=".Posts::STATUS_PASSED;
        $users = Yii::app()->db->createCommand($sql)->queryAll();
        $arr = CHtml::listData($users, 'id', companyname);
        $arr['0']='其他';
        return $arr;
  }

  public static function listTeam() {    
        $sql = "SELECT id,teamname FROM {{team}} WHERE status=".Posts::STATUS_PASSED;
        $users = Yii::app()->db->createCommand($sql)->queryAll();
        $arr = CHtml::listData($users, 'id', 'teamname');
        return $arr;
  }

  public static function checkType($type) {
    if (!$type || !in_array($type, array('agent', 'dealer', 'exhibition', 'lecturer', 'trade_magazine', 'producer', 'pro_service', 'marketing_team', 'trade_website','personal'))) {
      return false;
    }
    return TRUE;
  }

  public static function loadModel($type) {
    if (!self::checkType($type)) {
      throw new CHttpException(404, '不存在的类型');
    }
    if ($type == 'agent') {
      return new Agent;
    } elseif ($type == 'dealer') {
      return new Dealer;
    } elseif ($type == 'exhibition') {
      return new Exhibition;
    } elseif ($type == 'lecturer') {
      return new Lecturer;
    } elseif ($type == 'trade_magazine') {
      return new Magazine;
    } elseif ($type == 'producer') {
      return new Producer;
    } elseif ($type == 'pro_service') {
      return new Servicer;
    } elseif ($type == 'marketing_team') {
      return new Team;
    } elseif ($type == 'trade_website') {
      return new Website;
    } elseif ($type == 'personal') {
      return new Personal;    
    } elseif ($type == '') {
      
    }
  }

}
