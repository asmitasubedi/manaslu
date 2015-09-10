<?php
/**
 * Created by IntelliJ IDEA.
 * User: sachin
 * Date: 9/3/15
 * Time: 7:58 AM
 */

include 'DbConnection.php';
class ReportService
{
    var $conn;

    public function __construct(){

        $connection =new DbConnection();
        $this->conn=$connection->getConn();

    }


    public function categoryList(){

        $categoryList=array();

        $queryResult=$this->conn->query("SELECT * FROM  category");

        while($row=mysqli_fetch_assoc($queryResult)){

            $categoryList[]= $row;

        }
        return $categoryList;

    }

    public function subCategoryList($categoryId){

        $subCategoryList=array();

        $queryResult=$this->conn->query("SELECT * FROM  subcategory WHERE Category_Id='".$categoryId."'");

        while($row=mysqli_fetch_assoc($queryResult)){

            $subCategoryList[]= $row;

        }
        return $subCategoryList;

    }

    public function brandList($subCategoryId){
        $brandList=array();

        $queryResult=$this->conn->query("SELECT * FROM  brand WHERE SubCategory_Id='".$subCategoryId."'");

        while($row=mysqli_fetch_assoc($queryResult)){

            $brandList[]= $row;

        }
        return $brandList;

    }



}
$reportService=new ReportService();