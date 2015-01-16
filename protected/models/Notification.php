<?php

class Notification extends CActiveRecord {

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return '{{notification}}';
    }

    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('uid, new, authorid, from_id, from_num', 'numerical', 'integerOnly' => true),
            array('type, from_idtype', 'length', 'max' => 20),
            array('author', 'length', 'max' => 15),
            array('cTime', 'length', 'max' => 10),
            array('content', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('id, uid, type, new, authorid, author, content, cTime, from_id, from_idtype, from_num', 'safe', 'on' => 'search'),
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
            'uid' => '接收UID',
            'type' => '提醒的类型',
            'new' => '是否未读',
            'authorid' => '发送者UID',
            'author' => '发送者',
            'content' => '内容',
            'cTime' => '时间',
            'from_id' => 'From',
            'from_idtype' => 'From Idtype',
            'from_num' => '数量',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search() {
        $criteria = new CDbCriteria;
        $criteria->compare('id', $this->id);
        $criteria->compare('uid', $this->uid);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('new', $this->new);
        $criteria->compare('authorid', $this->authorid);
        $criteria->compare('author', $this->author, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('cTime', $this->cTime, true);
        $criteria->compare('from_id', $this->from_id);
        $criteria->compare('from_idtype', $this->from_idtype, true);
        $criteria->compare('from_num', $this->from_num);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public static function add($params = array()) {
        $uid = Yii::app()->user->id;
        $touid=$params['uid'];
        $data = array(
            'uid' => $touid,
            'authorid' => $uid,
            'content' => $params['content'],
            'new' => 1,
            'type' => $params['type'],
            'cTime' => time(),
            'from_id' => $params['from_id'],
            'from_idtype' => $params['from_idtype'],
            'from_num' => 1
        );
//        if ($uid == $params['uid']) {
//            return false;
//        }
        $model = new Notification();
        $info = $model->find("uid=:uid AND authorid=:authorid AND from_id=:from AND type=:type", array(':uid' => $params['uid'], ':authorid' => $uid,':from'=>$params['from_id'], ':type' => $params['type']));
        if ($info) {
            //存在则更新最新操作时间
            if ($model->updateByPk($info['id'], array('cTime' => time(), 'new' => 1, 'from_num' => ($info['from_num'] + 1)))) {
                return true;
            } else {
                return false;
            }
        } else {
            //不存在则新增
            $model->attributes = $data;
            if ($model->save()) {
                return true;
            } else {
                return false;
            }
        }
    }

    public static function getNum($uid = '') {
        if (Yii::app()->user->isGuest) {
            return 0;
        }
        if ($uid == '') {
            $uid = Yii::app()->user->id;
        }
        if (!$uid) {
            return 0;
            exit();
        }
        $num = Notification::model()->count('new=1 AND uid=:uid', array(':uid' => $uid));
        if ($num > 0) {
            return $num;
        } else {
            return 0;
        }
    }
    
    /**
     * 当用户新注册时生成的欢迎信息
     */
    public static function userInit(){
        
    }

}