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
class Jobs extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{jobs}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('uid, cTime, hits, top, status', 'numerical', 'integerOnly'=>true),
			array('title, gs_title, gs_didian, gs_guimo, gs_xingzhi, gs_zhuye, gz_didian, gz_jingyan, gz_xingzhi, gz_zdxueli, gz_gljy, gz_xinzi, gz_renshu, gz_zhiwei, gz_fuli, gz_contactor, gz_contact', 'length', 'max'=>255),
			array('gs_miaoshu, gz_miaoshu', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, uid, title, gs_title, gs_didian, gs_guimo, gs_xingzhi, gs_miaoshu, gs_zhuye, gz_miaoshu, gz_didian, gz_jingyan, gz_xingzhi, gz_zdxueli, gz_gljy, gz_xinzi, gz_renshu, gz_zhiwei, gz_fuli, gz_contactor, gz_contact, cTime, hits, top, status', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'uid' => 'Uid',
			'title' => 'Title',
			'gs_title' => '公司名称',
			'gs_didian' => '公司地点',
			'gs_guimo' => '公司规模',
			'gs_xingzhi' => '公司性质',
			'gs_miaoshu' => '公司描述',
			'gs_zhuye' => '公司主页',
			'gz_miaoshu' => '工作描述',
			'gz_didian' => '工作地点',
			'gz_jingyan' => '工作经验',
			'gz_xingzhi' => '工作薪资',
			'gz_zdxueli' => '最低学历',
			'gz_gljy' => '管理经验',
			'gz_xinzi' => '工作薪资',
			'gz_renshu' => '招聘人数',
			'gz_zhiwei' => '工作职位',
			'gz_fuli' => '工作福利',
			'gz_contactor' => '联系人',
			'gz_contact' => '联系方式',
			'cTime' => 'C Time',
			'hits' => 'Hits',
			'top' => 'Top',
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
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id,true);
		$criteria->compare('uid',$this->uid);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('gs_title',$this->gs_title,true);
		$criteria->compare('gs_didian',$this->gs_didian,true);
		$criteria->compare('gs_guimo',$this->gs_guimo,true);
		$criteria->compare('gs_xingzhi',$this->gs_xingzhi,true);
		$criteria->compare('gs_miaoshu',$this->gs_miaoshu,true);
		$criteria->compare('gs_zhuye',$this->gs_zhuye,true);
		$criteria->compare('gz_miaoshu',$this->gz_miaoshu,true);
		$criteria->compare('gz_didian',$this->gz_didian,true);
		$criteria->compare('gz_jingyan',$this->gz_jingyan,true);
		$criteria->compare('gz_xingzhi',$this->gz_xingzhi,true);
		$criteria->compare('gz_zdxueli',$this->gz_zdxueli,true);
		$criteria->compare('gz_gljy',$this->gz_gljy,true);
		$criteria->compare('gz_xinzi',$this->gz_xinzi,true);
		$criteria->compare('gz_renshu',$this->gz_renshu,true);
		$criteria->compare('gz_zhiwei',$this->gz_zhiwei,true);
		$criteria->compare('gz_fuli',$this->gz_fuli,true);
		$criteria->compare('gz_contactor',$this->gz_contactor,true);
		$criteria->compare('gz_contact',$this->gz_contact,true);
		$criteria->compare('cTime',$this->cTime);
		$criteria->compare('hits',$this->hits);
		$criteria->compare('top',$this->top);
		$criteria->compare('status',$this->status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Jobs the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}