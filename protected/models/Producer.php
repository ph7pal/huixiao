<?php

/**
 * This is the model class for table "{{producer}}".
 *
 * The followings are the available columns in table '{{producer}}':
 * @property string $id
 * @property integer $uid
 * @property integer $faceimg
 * @property integer $localarea
 * @property string $companyname
 * @property string $companyowner
 * @property string $address
 * @property string $description
 * @property string $companyurl
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
class Producer extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{producer}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
          array('uid, localarea, companyname, companyowner, address, description, contactname, contactmobile, mainproduct, licensenumber', 'required'),
          array('uid, faceimg, localarea, cTime, hits, top, status, medal,scorer,lecturers,goods', 'numerical', 'integerOnly' => true),
          array('companyname, companyowner, address, description, companyurl, contactname, contactmobile, mainproduct, licensenumber', 'length', 'max' => 255),
          array('medal_logo, medal_title', 'length', 'max' => 16),
          array('score,score1,score2,score3,score4', 'length', 'max' => 5),
          array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
          array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
          // The following rule is used by search().
          // @todo Please remove those attributes that should not be searched.
          array('id, uid, faceimg, localarea, companyname, companyowner, address, description, companyurl, contactname, contactmobile, mainproduct, licensenumber, cTime, hits, top, status, medal, medal_logo, medal_title,score,scorer,lecturers,goods,score1,score2,score3,score4', 'safe', 'on' => 'search'),
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
          'uid' => '作者',
          'faceimg' => '封面图',
          'localarea' => '所在地',
          'companyname' => '企业全称',
          'companyowner' => '企业法人',
          'address' => '企业地址',
          'description' => '企业描述',
          'companyurl' => '官方网站地址',
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
          'score' => '评分',
          'score1' => '评分',
          'score2' => '评分',
          'score3' => '评分',
          'score4' => '评分',
          'scorer' => '评分人数',
          'lecturers' => '讲师数',
          'goods' => '产品数',
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
        $criteria->compare('address', $this->address, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('companyurl', $this->companyurl, true);
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
        $criteria->compare('score', $this->score, true);
        $criteria->compare('score1', $this->score, true);
        $criteria->compare('score2', $this->score, true);
        $criteria->compare('score3', $this->score, true);
        $criteria->compare('score4', $this->score, true);
        $criteria->compare('scorer', $this->scorer, true);
        $criteria->compare('lecturers', $this->lecturers, true);
        $criteria->compare('goods', $this->goods, true);

        return new CActiveDataProvider($this, array(
          'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Producer the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function getOne($keyid, $return = '') {
        $item = Producer::model()->findByPk($keyid);
        if ($return != '') {
            return $item[$return];
        }
        return $item;
    }

    public static function getNews() {
        $sql = "SELECT id,faceimg,companyname FROM {{producer}} WHERE status=1 AND faceimg>0 ORDER BY cTime DESC LIMIT 12";
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        return $items;
    }

    public static function getTops() {
        $sql = "SELECT id,faceimg,uid,companyname FROM {{producer}} WHERE status=1 AND faceimg>0 ORDER BY cTime DESC LIMIT 12";
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        return $items;
    }
    
    public static function getMainProducts($uid,$classify='producer'){
      if(!$uid){
        return false;
      }
      $ids=  TagRelation::getTagsPosts($uid, $classify);
      $idstr=join(',',$ids);
      if($idstr!=''){
        $_sql="SELECT id,name FROM {{tags}} WHERE id IN($idstr)";
        $items=Yii::app()->db->createCommand($_sql)->queryAll();
        return $items;
      }else{
        return false;
      }
    }

}
