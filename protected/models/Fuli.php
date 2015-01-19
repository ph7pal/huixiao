<?php

/**
 * This is the model class for table "{{fuli}}".
 *
 * The followings are the available columns in table '{{fuli}}':
 * @property string $id
 * @property string $title
 * @property string $classify
 * @property string $order
 * @property string $hits
 * @property integer $status
 * @property string $cTime
 */
class Fuli extends CActiveRecord {

  /**
   * @return string the associated database table name
   */
  public function tableName() {
    return '{{fuli}}';
  }

  /**
   * @return array validation rules for model attributes.
   */
  public function rules() {
    // NOTE: you should only define rules for those attributes that
    // will receive user inputs.
    return array(
        array('title, classify', 'required'),
        array('status', 'numerical', 'integerOnly' => true),
        array('title', 'length', 'max' => 100),
        array('classify', 'length', 'max' => 32),
        array('order, hits, cTime', 'length', 'max' => 10),
        array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
        array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
        // The following rule is used by search().
        // @todo Please remove those attributes that should not be searched.
        array('id, title, classify, order, hits, status, cTime', 'safe', 'on' => 'search'),
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
        'title' => '福利标题',
        'classify' => '福利分类',
        'order' => '排序',
        'hits' => '点击',
        'status' => '状态',
        'cTime' => '创建时间',
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
    $criteria->compare('classify', $this->classify, true);
    $criteria->compare('order', $this->order, true);
    $criteria->compare('hits', $this->hits, true);
    $criteria->compare('status', $this->status);
    $criteria->compare('cTime', $this->cTime, true);

    return new CActiveDataProvider($this, array(
        'criteria' => $criteria,
    ));
  }

  /**
   * Returns the static model of the specified AR class.
   * Please note that you should have this exact method in all your CActiveRecord descendants!
   * @param string $className active record class name.
   * @return Fuli the static model class
   */
  public static function model($className = __CLASS__) {
    return parent::model($className);
  }

  public static function getAll() {
    $items = Fuli::model()->findAll();
    $arr = CHtml::listData($items, 'id', 'title');
    return $arr;
  }
  
  public static function exClassify($type = '') {
        $arr = array(
          'jobs' => '工作福利'
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }

}
