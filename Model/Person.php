<?php
/**
 * Created by PhpStorm.
 * User: Samsung
 * Date: 9/1/2015
 * Time: 7:45 AM
 */
class Person{
    var $id;
    var $f_name;
    var $m_name;
    var $l_name;
    var $email;
    var $phone;
    var $var_type;

    /**
     * Person constructor.
     * @param $id
     * @param $f_name
     * @param $m_name
     * @param $l_name
     * @param $email
     * @param $phone
     * @param $var_type
     */
    public function __construct($id, $f_name, $m_name, $l_name, $email, $phone, $var_type)
    {
        $this->id = $id;
        $this->f_name = $f_name;
        $this->m_name = $m_name;
        $this->l_name = $l_name;
        $this->email = $email;
        $this->phone = $phone;
        $this->var_type = $var_type;
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
    public function getFName()
    {
        return $this->f_name;
    }

    /**
     * @param mixed $f_name
     */
    public function setFName($f_name)
    {
        $this->f_name = $f_name;
    }

    /**
     * @return mixed
     */
    public function getMName()
    {
        return $this->m_name;
    }

    /**
     * @param mixed $m_name
     */
    public function setMName($m_name)
    {
        $this->m_name = $m_name;
    }

    /**
     * @return mixed
     */
    public function getLName()
    {
        return $this->l_name;
    }

    /**
     * @param mixed $l_name
     */
    public function setLName($l_name)
    {
        $this->l_name = $l_name;
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @param mixed $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }

    /**
     * @return mixed
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * @param mixed $phone
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;
    }

    /**
     * @return mixed
     */
    public function getVarType()
    {
        return $this->var_type;
    }

    /**
     * @param mixed $var_type
     */
    public function setVarType($var_type)
    {
        $this->var_type = $var_type;
    }

}
?>