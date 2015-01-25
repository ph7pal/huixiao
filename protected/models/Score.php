<?php

/**
 * This is the model class for table "{{score}}".
 *
 * The followings are the available columns in table '{{score}}':
 * @property string $id
 * @property integer $uid
 * @property integer $belongid
 * @property string $classify
 * @property string $score
 * @property string $score1
 * @property string $score2
 * @property string $score3
 * @property string $score4
 * @property string $score5
 * @property string $score6
 * @property string $score7
 * @property string $score8
 * @property string $score9
 * @property integer $cTime
 * @property integer $ip
 * @property integer $status
 */
class Score extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{score}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('uid, belongid, classify,score,score2,score3,score4,score5,score6,score7,score8,score9', 'required'),
        array('uid, belongid, cTime,status,score1,score2', 'numerical', 'integerOnly' => true),
        array('classify', 'length', 'max' => 16),
        array('score, score1, score2, score3, score4, score5, score6, score7, score8, score9', 'length', 'max' => 255),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, uid, belongid, classify, score, score1, score2, score3, score4, score5, score6, score7, score8, score9, cTime, ip, status', 'safe', 'on' => 'search'),
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
        'belongid' => 'Belongid',
        'classify' => '评分分类',
        'score' => '做会产品',
        'score1' => '销售金额',
        'score2' => '做会时间',
        'score3' => '会前安排',
        'score4' => '现场气氛',
        'score5' => '销售效果',
        'score6' => '售后服务',
        'score7' => '评价公司',
        'score8' => '做会讲师',
        'score9' => '上传图片',
        'cTime' => 'C Time',
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
    $criteria->compare('belongid', $this->belongid);
    $criteria->compare('classify', $this->classify, true);
    $criteria->compare('score', $this->score, true);
    $criteria->compare('score1', $this->score1, true);
    $criteria->compare('score2', $this->score2, true);
    $criteria->compare('score3', $this->score3, true);
    $criteria->compare('score4', $this->score4, true);
    $criteria->compare('score5', $this->score5, true);
    $criteria->compare('score6', $this->score6, true);
    $criteria->compare('score7', $this->score7, true);
    $criteria->compare('score8', $this->score8, true);
    $criteria->compare('score9', $this->score9, true);
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
   * @return Score the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

}
