<?php

/**
 * This is the model class for table "{{lecturer}}".
 *
 * The followings are the available columns in table '{{lecturer}}':
 * @property string $id
 * @property integer $uid
 * @property integer $faceimg
 * @property integer $localarea
 * @property string $companyname
 * @property string $companyowner
 * @property string $belongCompany
 * @property string $belongTeam
 * @property string $jobname
 * @property string $contactmobile
 * @property string $idcard
 * @property integer $cTime
 * @property integer $hits
 * @property integer $top
 * @property integer $status
 * @property integer $medal
 * @property string $medal_logo
 * @property string $medal_title
 */
class Lecturer extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{lecturer}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
          array('uid, localarea, companyname,jobname,contactmobile, idcard', 'required'),
          array('uid, faceimg, localarea, cTime, hits, top, status, medal', 'numerical', 'integerOnly' => true),
          array('truename,companyname, companyowner, belongCompany, belongTeam, jobname, contactmobile, idcard', 'length', 'max' => 255),
          array('medal_logo, medal_title', 'length', 'max' => 16),
          array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
          array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
          // The following rule is used by search().
          // @todo Please remove those attributes that should not be searched.
          array('id, uid, truename,faceimg, localarea, companyname, companyowner, belongCompany, belongTeam, jobname, contactmobile, idcard, cTime, hits, top, status, medal, medal_logo, medal_title', 'safe', 'on' => 'search'),
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
          'truename' => '讲师名',
          'faceimg' => '封面图',
          'localarea' => '所在地',
          'companyname' => '公司名称',
          'companyowner' => '法人代表',
          'belongCompany' => '所属公司',
          'belongTeam' => '所属营销团队',
          'jobname' => '职位名称',
          'contactmobile' => '联系手机',
          'idcard' => '身份证号',
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
        $criteria->compare('belongCompany', $this->belongCompany, true);
        $criteria->compare('belongTeam', $this->belongTeam, true);
        $criteria->compare('jobname', $this->jobname, true);
        $criteria->compare('contactmobile', $this->contactmobile, true);
        $criteria->compare('idcard', $this->idcard, true);
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
     * @return Lecturer the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * 讲师按地区查询
     * @param type $area，为0则为所有地区的推荐
     * @param type $uid，不为0为某企业的讲师
     * @return boolean
     */
    public static function getLecturer($area, $uid = 0) {
        $key = "getLecturer-$area-$uid";
        $usrs = zmf::getFCache($key);
        if (!$usrs) {
            if ($area > 0) {
                $areaArr = Area::getChildren($area);
                $idstr = join(',', $areaArr);
                if ($idstr) {
                    $sql = "SELECT id,faceimg,uid FROM {{lecturer}} WHERE faceimg>0 AND localarea IN($idstr) AND status=1 LIMIT 10";
                } else {
                    $sql = "SELECT id,faceimg,uid FROM {{lecturer}} WHERE faceimg>0 AND status=1 LIMIT 10";
                }
            } else {
                if ($uid != 0) {
                    $sql = "SELECT id,faceimg,uid FROM {{lecturer}} WHERE faceimg>0 AND status=1 AND belongCompany='{$uid}' LIMIT 10";
                } else {
                    $sql = "SELECT id,faceimg,uid FROM {{lecturer}} WHERE faceimg>0 AND status=1 LIMIT 10";
                }
            }
            $usrs = Yii::app()->db->createCommand($sql)->queryAll();
            if (!empty($usrs)) {
                foreach ($usrs as $key => $one) {
                    $uname = Users::getUserInfo($one['uid'], 'truename');
                    $one['truename'] = $uname;
                    $usrs[$key] = $one;
                }
            }
            zmf::setFCache($key, $usrs, 3600);
        }
        return $usrs;
    }

}
