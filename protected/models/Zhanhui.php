<?php

/**
 * This is the model class for table "{{zhanhui}}".
 *
 * The followings are the available columns in table '{{zhanhui}}':
 * @property string $id
 * @property string $title
 * @property string $zhuti
 * @property string $liangdian
 * @property string $localarea
 * @property string $didian
 * @property string $start_time
 * @property string $expired_time
 * @property string $attachid
 * @property string $description
 * @property string $content
 * @property string $hits
 * @property string $order
 * @property integer $status
 * @property string $cTime
 * @property integer $uid
 * @property integer $canyu
 */
class Zhanhui extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{zhanhui}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
          array('title, attachid,content, uid,localarea,start_time, expired_time', 'required'),
          array('status, uid, canyu', 'numerical', 'integerOnly' => true),
          array('title, zhuti, liangdian, didian, description,zhuban,xieban', 'length', 'max' => 255),
          array('localarea, start_time, expired_time, attachid, hits, order, cTime', 'length', 'max' => 10),
          array('content', 'safe'),
          array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
          array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
          // The following rule is used by search().
          // @todo Please remove those attributes that should not be searched.
          array('id, title, zhuti, liangdian, localarea, didian, start_time, expired_time, attachid, description, content, hits, order, status, cTime, uid, canyu,zhuban,xieban', 'safe', 'on' => 'search'),
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
            'areaInfo'=>array(self::BELONGS_TO,'Area','localarea'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
          'id' => 'ID',
          'title' => '展会标题',
          'zhuti' => '展会主题',
          'liangdian' => '展会亮点',
          'localarea' => '所在区域',
          'didian' => '展会地址',
          'start_time' => '展会时间',
          'expired_time' => '报名结束时间',
          'attachid' => '封面图片',
          'description' => '活动简介',
          'content' => '展会详情',
          'hits' => '查看次数',
          'order' => 'Order',
          'status' => 'Status',
          'cTime' => '创建时间',
          'uid' => '发布者',
          'canyu' => '参与数',
          'zhuban' => '主办',
          'xieban' => '协办',
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
        $criteria->compare('zhuti', $this->zhuti, true);
        $criteria->compare('liangdian', $this->liangdian, true);
        $criteria->compare('localarea', $this->localarea, true);
        $criteria->compare('didian', $this->didian, true);
        $criteria->compare('start_time', $this->start_time, true);
        $criteria->compare('expired_time', $this->expired_time, true);
        $criteria->compare('attachid', $this->attachid, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('hits', $this->hits, true);
        $criteria->compare('order', $this->order, true);
        $criteria->compare('status', $this->status);
        $criteria->compare('cTime', $this->cTime, true);
        $criteria->compare('uid', $this->uid);
        $criteria->compare('canyu', $this->canyu);
        $criteria->compare('zhuban', $this->zhuban);
        $criteria->compare('xieban', $this->xieban);

        return new CActiveDataProvider($this, array(
          'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Zhanhui the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function getNews() {
        $sql = "SELECT id,title,start_time FROM {{zhanhui}} ORDER BY cTime DESC LIMIT 12";
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        return $items;
    }

    public static function getUsers($uid) {
        if (!$uid) {
            return false;
        }
        $sql = "SELECT id,title,start_time,attachid FROM {{zhanhui}} WHERE uid={$uid} ORDER BY cTime DESC LIMIT 12";
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        return $items;
    }
    
    public function getOne($keyid, $return = '') {
        $item = Zhanhui::model()->findByPk($keyid);
        if ($return != '') {
            return $item[$return];
        }
        return $item;
    }

}
