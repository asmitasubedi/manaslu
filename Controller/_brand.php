<?php
/**
 * Created by IntelliJ IDEA.
 * User: sachin
 * Date: 9/3/15
 * Time: 11:19 PM
 */
include '../CommonPage/includeAll.php';

$subCategoryId=$_POST["subCategoryId"];

$brandList=$reportService->brandList($subCategoryId);

if(sizeof($brandList)>0){

    ?>
    <select name="BrandList" id="brandList">

        <option value="Brand">Brand</option>
        <?php
        if($subCategoryId!="subCategory"){

            for($i=0;$i<sizeof($brandList);$i++){

                echo '<option value='.$brandList[$i]["Id"].'>'.$brandList[$i]["BrandName"].'</option>';
            }
        }
        ?>
    </select>
    <?php
}
?>