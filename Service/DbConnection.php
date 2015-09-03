<?php

/**
 * Created by IntelliJ IDEA.
 * User: sachin
 * Date: 9/3/15
 * Time: 7:49 AM
 */
class DbConnection
{
    var $conn;

    /**
     * DbConnection constructor.
     * @param $conn
     */
    public function __construct()
    {
        $this->conn = mysqli_connect("localhost","root","phenol69","LostAndFound");
        return $this->conn;

    }

    /**
     * @return mixed
     */
    public function getConn()
    {
        return $this->conn;
    }

    /**
     * @param mixed $conn
     */
    public function setConn($conn)
    {
        $this->conn = $conn;
    }



}