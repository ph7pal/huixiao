<?php

/**
 * This is the model class for table "{{message}}".
 *
 * The followings are the available columns in table '{{message}}':
 * @property string $id
 * @property integer $uid
 * @property integer $localarea
 * @property integer $belongid
 * @property string $classify
 * @property string $nickname
 * @property string $number
 * @property string $content
 * @property integer $cTime
 * @property integer $ip
 * @property integer $status
 */
class Message extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{message}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid', 'default', 'setOnEmpty' => true, 'value' => Yii::app()->user->isGuest ? zmf::config('defaultNoticeUid') : Yii::app()->user->id),
        array('uid, localarea, belongid, classify, nickname,number,content', 'required'),
        array('uid, localarea, belongid, cTime,status', 'numerical', 'integerOnly' => true),
        array('classify', 'length', 'max' => 16),
        array('nickname, number, content', 'length', 'max' => 255),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, localarea, belongid, classify, nickname, number, content, cTime, ip, status', 'safe', 'on' => 'search'),
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
        'localarea' => '所在地区',
        'belongid' => 'Belongid',
        'classify' => '留言分类',
        'nickname' => '客户姓名',
        'number' => '联系电话',
        'content' => '留言内容',
        'cTime' => '创建时间',
        'ip' => 'Ip',
        'status' => 'Status',
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
    $criteria->compare('localarea', $this->localarea);
    $criteria->compare('belongid', $this->belongid);
    $criteria->compare('classify', $this->classify, true);
    $criteria->compare('nickname', $this->nickname, true);
    $criteria->compare('number', $this->number, true);
    $criteria->compare('content', $this->content, true);
    $criteria->compare('cTime', $this->cTime);
    $criteria->compare('ip', $this->ip);
    $criteria->compare('status', $this->status);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return Message the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

}
