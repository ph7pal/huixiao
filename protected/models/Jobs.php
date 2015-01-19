<?php

/**
 * This is the model class for table "{{jobs}}".
 *
 * The followings are the available columns in table '{{jobs}}':
 * @property string $id
 * @property integer $uid
 * @property string $title
 * @property string $gs_title
 * @property string $gs_didian
 * @property string $gs_guimo
 * @property string $gs_xingzhi
 * @property string $gs_miaoshu
 * @property string $gs_zhuye
 * @property string $gz_miaoshu
 * @property string $gz_didian
 * @property string $gz_jingyan
 * @property string $gz_xingzhi
 * @property string $gz_zdxueli
 * @property string $gz_gljy
 * @property string $gz_xinzi
 * @property string $gz_renshu
 * @property string $gz_zhiwei
 * @property string $gz_fuli
 * @property string $gz_contactor
 * @property string $gz_contact
 * @property integer $cTime
 * @property integer $hits
 * @property integer $top
 * @property integer $status
 */
class Jobs extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{jobs}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
          array('uid,title, gs_title, gz_xingzhi,  gz_xinzi , gz_zhiwei, gz_fuli, gz_contactor, gz_contact ,gz_miaoshu', 'required'),
          array('uid, cTime, hits, top, status', 'numerical', 'integerOnly' => true),
          array('title, gs_title, gs_didian, gs_guimo, gs_xingzhi, gs_zhuye, gz_didian, gz_jingyan, gz_xingzhi, gz_zdxueli, gz_gljy, gz_xinzi, gz_renshu, gz_zhiwei, gz_fuli, gz_contactor, gz_contact', 'length', 'max' => 255),
          array('gs_zhuye', 'url'),
          array('gs_miaoshu, gz_miaoshu', 'safe'),
          array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
          array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
          // The following rule is used by search().
          // @todo Please remove those attributes that should not be searched.
          array('id, uid, title, gs_title, gs_didian, gs_guimo, gs_xingzhi, gs_miaoshu, gs_zhuye, gz_miaoshu, gz_didian, gz_jingyan, gz_xingzhi, gz_zdxueli, gz_gljy, gz_xinzi, gz_renshu, gz_zhiwei, gz_fuli, gz_contactor, gz_contact, cTime, hits, top, status', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
          'fulis' => array(self::HAS_MANY, 'FuliRelation', 'jobid'),
          'userinfo' => array(self::BELONGS_TO, 'Users', 'uid'),
          'areaInfo'=>array(self::BELONGS_TO,'Area','gz_didian'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
          'id' => 'ID',
          'uid' => 'Uid',
          'title' => '招聘标题',
          'gs_title' => '公司名称',
          'gs_didian' => '公司地点',
          'gs_guimo' => '公司规模',
          'gs_xingzhi' => '公司性质',
          'gs_miaoshu' => '公司描述',
          'gs_zhuye' => '公司主页',
          'gz_miaoshu' => '工作描述',
          'gz_didian' => '工作地点',
          'gz_jingyan' => '工作经验',
          'gz_xingzhi' => '工作性质',
          'gz_zdxueli' => '最低学历',
          'gz_gljy' => '管理经验',
          'gz_xinzi' => '工作薪资',
          'gz_renshu' => '招聘人数',
          'gz_zhiwei' => '工作职位',
          'gz_fuli' => '工作福利',
          'gz_contactor' => '联系人',
          'gz_contact' => '联系方式',
          'cTime' => '创建时间',
          'hits' => '点击',
          'top' => '置顶',
          'status' => '状态',
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
        $criteria->compare('title', $this->title, true);
        $criteria->compare('gs_title', $this->gs_title, true);
        $criteria->compare('gs_didian', $this->gs_didian, true);
        $criteria->compare('gs_guimo', $this->gs_guimo, true);
        $criteria->compare('gs_xingzhi', $this->gs_xingzhi, true);
        $criteria->compare('gs_miaoshu', $this->gs_miaoshu, true);
        $criteria->compare('gs_zhuye', $this->gs_zhuye, true);
        $criteria->compare('gz_miaoshu', $this->gz_miaoshu, true);
        $criteria->compare('gz_didian', $this->gz_didian, true);
        $criteria->compare('gz_jingyan', $this->gz_jingyan, true);
        $criteria->compare('gz_xingzhi', $this->gz_xingzhi, true);
        $criteria->compare('gz_zdxueli', $this->gz_zdxueli, true);
        $criteria->compare('gz_gljy', $this->gz_gljy, true);
        $criteria->compare('gz_xinzi', $this->gz_xinzi, true);
        $criteria->compare('gz_renshu', $this->gz_renshu, true);
        $criteria->compare('gz_zhiwei', $this->gz_zhiwei, true);
        $criteria->compare('gz_fuli', $this->gz_fuli, true);
        $criteria->compare('gz_contactor', $this->gz_contactor, true);
        $criteria->compare('gz_contact', $this->gz_contact, true);
        $criteria->compare('cTime', $this->cTime);
        $criteria->compare('hits', $this->hits);
        $criteria->compare('top', $this->top);
        $criteria->compare('status', $this->status);

        return new CActiveDataProvider($this, array(
          'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Jobs the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function getNews() {
        $sql = "SELECT id,title,gs_title FROM {{jobs}} ORDER BY cTime DESC LIMIT 12";
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        return $items;
    }

    public static function xueli($type = '') {
        $arr = array(
          'gz' => '高中',
          'jx' => '技校',
          'zz' => '中专',
          'dz' => '大专',
          'bk' => '本科',
          'ss' => '硕士',
          'bs' => '博士',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }

    public static function jingyan($type = '') {
        $arr = array(
          '0' => '不限',
          '1' => '1年以下',
          '12' => '1-2年',
          '35' => '3-5年',
          '67' => '6-7年',
          '810' => '8-10年',
          '10' => '10年以上',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }

    public static function money($type = '') {
        $arr = array(
          '1' => '面议',
          '1000' => '1000以内',
          '2000' => '1000-2000',
          '3000' => '2000-3000',
          '4000' => '3000-4000',
          '5000' => '4000-5000',
          '8000' => '5000-8000',
          '12000' => '8000-12000',
          '20000' => '12000-20000',
          '25000' => '20000-25000',
          '250000' => '25000以上',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }
    
    public static function zhiwei($type = '') {
        $arr = array(
          '1' => '总经理',
          '2' => '市场总监',
          '3' => '讲师',
          '4' => '招商经理',
          '5' => '区域经理',
          '6' => '公司客服',
          '7' => '行政文员',
          '999' => '其他',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }
    
    /**
     * 公司性质
     * @param type $type
     * @return string
     */
    public static function gsXingzhi($type = '') {
        $arr = array(
          '1' => '私营/民营',
          '2' => '国有企业',
          '3' => '合资',
          '4' => '外资',
          '5' => '政府机关',
          '6' => '事业单位',
          '7' => '非盈利机构',
          '999' => '其他',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }
    /**
     * 公司规模
     * @param type $type
     * @return string
     */
    public static function gsGuimo($type = '') {
        $arr = array(
          '50' => '50人以下',
          '100' => '51-100人',
          '500' => '101-500人',
          '1000' => '501-1000人',
          '9999' => '1000人以上',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }
    /**
     * 工作性质
     * @param type $type
     * @return string
     */
    public static function gzXingzhi($type = '') {
        $arr = array(
          '0' => '不限',
          '1' => '实习/见习',
          '2' => '普通员工',
          '3' => '高级/资深（非管理岗）',
          '4' => '部门经理/主管',
          '5' => '总监/副总裁',
          '6' => '总裁/总经理',
        );
        if ($type != '') {
            return $arr[$type];
        }
        return $arr;
    }

}
