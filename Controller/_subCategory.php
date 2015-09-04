<?php
/**
 * Created by IntelliJ IDEA.
 * User: sachin
 * Date: 9/3/15
 * Time: 4:24 PM
 */
include '../CommonPage/includeAll.php';

$categoryId=$_POST["categoryId"];

$subCategoryList=$reportService->subCategoryList($categoryId);
if(sizeof($subCategoryList)>0){
    ?>
    <select name="SubCategory" id="subCategoryList" onchange=" return brandList()">

        <option value="subCategory">Sub Category</option>
        <?php

        for($i=0;$i<sizeof($subCategoryList);$i++){

            echo '<option value='.$subCategoryList[$i]["id"].'>'.$subCategoryList[$i]["SubCategoryName"].'</option>';

        }
        ?>
    </select>
    <?php
}
?>


