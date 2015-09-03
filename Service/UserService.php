<?php

/**
 * Created by IntelliJ IDEA.
 * User: sachin
 * Date: 9/3/15
 * Time: 7:59 AM
 */
class UserService
{
    var $conn;
    public function __construct(){

        $this->conn=new DbConnection();

    }
}