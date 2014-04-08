<?php

class IndexController extends T {

    public $layout = 'main';

    public function actions() {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xFFFFFF,
            ),
            // page action renders "static" pages stored under 'protected/views/site/pages'
            // They can be accessed via: index.php?r=site/page&view=FileName
            'page' => array(
                'class' => 'CViewAction',
            ),
        );
    }

    public function actionIndex() {
        $pageSize=1;
        $colid=zmf::filterInput($_GET['colid']);
        if($colid){
            $sql = "SELECT * FROM {{columns}} WHERE position='main' AND status=1 AND id={$colid} ORDER BY `cTime` DESC";
        }else{
            $sql = "SELECT * FROM {{columns}} WHERE position='main' AND status=1 AND belongid IN(SELECT id FROM {{columns}} WHERE belongid=0) ORDER BY `cTime` DESC";
        }        
        Posts::getAll(array('sql'=>$sql,'pageSize'=>$pageSize), $pages, $mainCols);
        $seconds='';
        if($pageSize==1){
            if(!empty($mainCols)){
                $sql2 = "SELECT * FROM {{columns}} WHERE belongid={$mainCols[0]['id']} ORDER BY `cTime` DESC";
                $seconds=Yii::app()->db->createCommand($sql2)->queryAll();
            }  
        }        
        $this->pageTitle = zmf::config('sitename') . ' - ' . zmf::config('shortTitle');
        $data=array(
            'mainCols'=>$mainCols,
            'pages'=>$pages,  
            'seconds'=>$seconds
        );        
        $this->render('index',$data);
    }
    
    public function actionMail(){
    	Yii::import('application.vendors.*');
        include 'class.phpmailer.php';
        include 'class.smtp.php';
    	$mail  = new PHPMailer(); 
    	
    	$mail->CharSet    ="UTF-8";                 //�趨�ʼ����룬Ĭ��ISO-8859-1����������Ĵ����������Ϊ UTF-8
		$mail->IsSMTP();                            // �趨ʹ��SMTP����
		$mail->SMTPAuth   = true;                   // ���� SMTP ��֤����
		$mail->SMTPSecure = "ssl";                  // SMTP ��ȫЭ��
		$mail->Host       = "smtp.163.com";       // SMTP ������
		$mail->Port       = 465;                    // SMTP�������Ķ˿ں�
		$mail->Username   = "ph7pal@163.com";  // SMTP�������û���
		$mail->Password   = "056911ph7pal";        // SMTP����������
		//$mail->SetFrom('�����˵�ַ', '����������');    // ���÷����˵�ַ������
		//$mail->AddReplyTo("�ʼ��ظ��˵�ַ","�ʼ��ظ�������"); 
		                                            // �����ʼ��ظ��˵�ַ������
		$mail->Subject    = '�������';                     // �����ʼ�����
		$mail->AltBody    = "Ϊ�˲鿴���ʼ������л���֧�� HTML ���ʼ��ͻ���"; 
		                                            // ��ѡ����¼��ݿ���
		$mail->MsgHTML('test');                         // �����ʼ�����
		$mail->AddAddress('ph7pal@qq.com', "�������");
    	if(!$mail->Send()) {
		    echo "����ʧ�ܣ�" . $mail->ErrorInfo;
		} else {
		    echo "��ϲ���ʼ����ͳɹ���";
		}
    	
    	
    	
//    	$message = 'Hello World!';
//    	$mailer->SMTPSecure = "ssl";
//		$mailer->Host = 'smtp.163.com';
//		$mailer->Port  = 465;		
//		$mailer->IsSMTP();
//		$mailer->SMTPDebug=1;
//		$mailer->CharSet='UTF-8';
//		$mailer->Username = 'ph7pal@163.com';
//		$mailer->Password = '056911ph7pal';
//		$mailer->From = 'ph7pal@163.com';
//		$mailer->FromName = '�������';
//		$mailer->AddReplyTo('ph7pal@qq.com');
//		$mailer->AddAddress('ph7pal@qq.com');
//		$mailer->Subject = 'Email TEST';
//		$mailer->Body = $message;
//		$mailer->Send();
    	
    	}

}