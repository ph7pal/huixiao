<?php

/**
 * This is the model class for table "{{zhanhui_relation}}".
 *
 * The followings are the available columns in table '{{zhanhui_relation}}':
 * @property string $id
 * @property string $uid
 * @property string $logid
 * @property string $cTime
 * @property integer $ip
 */
class ZhanhuiRelation extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{zhanhui_relation}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid, logid, cTime, ip', 'required'),
        array('ip', 'numerical', 'integerOnly' => true),
        array('uid, logid, cTime', 'length', 'max' => 11),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, logid, cTime, ip', 'safe', 'on' => 'search'),
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
        'logid' => 'Logid',
        'cTime' => 'C Time',
        'ip' => 'Ip',
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
    $criteria->compare('logid', $this->logid, true);
    $criteria->compare('cTime', $this->cTime, true);
    $criteria->compare('ip', $this->ip);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return ZhanhuiRelation the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

}
