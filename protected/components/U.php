<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class U extends CUserIdentity {

  private $_id;

  /**
   * Authenticates a user.
   * @return boolean whether authentication succeeds.
   */
  public function authenticate() {
    if (strpos($this->username, '@') !== false) {
      if (tools::validate_email($this->username)) {
        $this->errorCode = self::ERROR_USERNAME_INVALID;
      } else {
        $user = Users::model()->find('LOWER(email)=?', array(strtolower($this->username)));
      }
    } else {
      $user = Users::model()->find('LOWER(username)=?', array(strtolower($this->username)));
    }

    if ($user === null)
      $this->errorCode = self::ERROR_USERNAME_INVALID;
    else if (!$this->validatePassword($user->password, $user['hash']))
      $this->errorCode = self::ERROR_PASSWORD_INVALID;
    else {
        if($user->status!=Posts::STATUS_PASSED){
            $this->errorCode =3;
            return false;
        }else{
            $this->_id = $user->id;
            $this->username = $user->username;
            $this->errorCode = self::ERROR_NONE;
        }
    }
    return $this->errorCode == self::ERROR_NONE;
  }

  /**
   * @return integer the ID of the user record
   */
  public function getId() {
    return $this->_id;
  }

  public function validatePassword($password, $hash = '') {
    //echo $password.'@####@'.$this->password;

    return md5($this->password . $hash) == $password ? true : false;
  }

}
