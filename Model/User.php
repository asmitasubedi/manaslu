<?php
/**
 * Created by PhpStorm.
 * User: Samsung
 * Date: 9/3/2015
 * Time: 7:37 AM
 */
class User{
    var $id;
    var $username;
    var $password;
    var $citizenship_no;
    var $license_no;

    /**
     * User constructor.
     * @param $id
     * @param $username
     * @param $password
     * @param $citizenship_no
     * @param $license_no
     */
    public function __construct($id, $username, $password, $citizenship_no, $license_no)
    {
        $this->id = $id;
        $this->username = $username;
        $this->password = $password;
        $this->citizenship_no = $citizenship_no;
        $this->license_no = $license_no;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * @param mixed $username
     */
    public function setUsername($username)
    {
        $this->username = $username;
    }

    /**
     * @return mixed
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * @param mixed $password
     */
    public function setPassword($password)
    {
        $this->password = $password;
    }

    /**
     * @return mixed
     */
    public function getCitizenshipNo()
    {
        return $this->citizenship_no;
    }

    /**
     * @param mixed $citizenship_no
     */
    public function setCitizenshipNo($citizenship_no)
    {
        $this->citizenship_no = $citizenship_no;
    }

    /**
     * @return mixed
     */
    public function getLicenseNo()
    {
        return $this->license_no;
    }

    /**
     * @param mixed $license_no
     */
    public function setLicenseNo($license_no)
    {
        $this->license_no = $license_no;
    }

}
?>