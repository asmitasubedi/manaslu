<?php
/**
 * Created by IntelliJ IDEA.
 * User: sachin
 * Date: 9/3/15
 * Time: 11:06 AM
 */
include '../CommonPage/includeAll.php';

$categoryList=$reportService->categoryList();

?>

<html>

<head>

</head>

<body>


<select name="Category" id="categoryList" onchange="return subCategoryList();">
    <option value="category">Category</option>
    <?php
        for($i=0;$i<sizeof($categoryList);$i++){
            echo $categoryList["CategoryName"];
            echo '<option value='.$categoryList[$i]["Id"].'>'.$categoryList[$i]["CategoryName"].'</option>';
        }
    ?>
</select>

<br><br>
<div id="subCategory">
    <select>
        <option>Sub Category</option>
    </select>
</div>
<br>
<div id="brandList">
    <select>
        <option>Brand</option>
    </select>
</div>
<br>
</body>
</html>
