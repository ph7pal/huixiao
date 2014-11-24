<?php

class Goods extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{goods}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
          array('uid, faceimg, title, piwen, gongxiao, desc, colid, cTime,status', 'required'),
          array('uid, faceimg, colid, colid2, colid3, colid4, colid5, cTime, hits, top, status', 'numerical', 'integerOnly' => true),
          array('title', 'length', 'max' => 200),
          array('piwen, gongxiao', 'length', 'max' => 255),
          array('desc2, desc3, desc4', 'safe'),
          array('status', 'default', 'setOnEmpty' => true, 'value' => Posts::STATUS_PASSED),
          array('cTime', 'default', 'setOnEmpty' => true, 'value' => time()),
          // The following rule is used by search().
          // @todo Please remove those attributes that should not be searched.
          array('id, uid, faceimg, title, piwen, gongxiao, desc, desc2, desc3, desc4, colid, colid2, colid3, colid4, colid5, cTime, hits, top, status', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
          'messages' => array(self::HAS_MANY, 'Message', 'belongid', 'condition' => 'classify="goods"'),
          'colinfo1'=>array(self::BELONGS_TO,'Tags','colid'),
          'colinfo2'=>array(self::BELONGS_TO,'Tags','colid2'),
          'colinfo3'=>array(self::BELONGS_TO,'Tags','colid3'),
          'colinfo4'=>array(self::BELONGS_TO,'Tags','colid4'),
          'colinfo5'=>array(self::BELONGS_TO,'Tags','colid5'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
          'id' => 'ID',
          'uid' => 'Uid',
          'faceimg' => '封面图',
          'title' => '标题',
          'piwen' => '批文',
          'gongxiao' => '功效',
          'desc' => '产品说明',
          'desc2' => '代理要求',
          'desc3' => '提供支持',
          'desc4' => '产品备注',
          'colid' => '产品分类',
          'colid2' => '产品分类',
          'colid3' => '产品分类',
          'colid4' => '产品分类',
          'colid5' => '产品分类',
          'cTime' => '创建时间',
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
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id, true);
        $criteria->compare('uid', $this->uid);
        $criteria->compare('faceimg', $this->faceimg);
        $criteria->compare('title', $this->title, true);
        $criteria->compare('piwen', $this->piwen, true);
        $criteria->compare('gongxiao', $this->gongxiao, true);
        $criteria->compare('desc', $this->desc, true);
        $criteria->compare('desc2', $this->desc2, true);
        $criteria->compare('desc3', $this->desc3, true);
        $criteria->compare('desc4', $this->desc4, true);
        $criteria->compare('colid', $this->colid);
        $criteria->compare('colid2', $this->colid2);
        $criteria->compare('colid3', $this->colid3);
        $criteria->compare('colid4', $this->colid4);
        $criteria->compare('colid5', $this->colid5);
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
     * @return Goods the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function tops($sql = '') {
        if (!$sql) {
            $sql = "SELECT id,title,faceimg FROM {{goods}} ORDER BY hits DESC LIMIT 12";
        }
        $items = Yii::app()->db->createCommand($sql)->queryAll();
        if (!empty($items)) {
            foreach ($items as $key => $goods) {
                $faceurl = zmf::noImg('url');
                if ($goods['faceimg'] > 0) {
                    $attachinfo = Attachments::getOne($goods['faceimg']);
                    if ($attachinfo) {
                        $faceurl = zmf::uploadDirs(0, 'site', $attachinfo['classify'], '200') . $attachinfo['filePath'];
                    }
                }
                $goods['faceurl'] = $faceurl;
                $items[$key] = $goods;
            }
        }
        return $items;
    }

    public static function users($uid, $limit = 6) {
        $sql = "SELECT id,title,faceimg FROM {{goods}} WHERE uid='{$uid}' ORDER BY hits DESC LIMIT {$limit}";
        $items = self::tops($sql);
        return $items;
    }

}
