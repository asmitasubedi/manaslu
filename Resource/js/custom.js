/**
 * Created by sachin on 9/3/15.
 */
function subCategoryList(){
    var categoryId=$("#categoryList").val();
    $.ajax({
        type:"POST",
        data:"categoryId="+categoryId,
        url:"../Controller/_subCategory.php",
        cache:false,
        success: function(subCategory){
            $("#subCategory").html(subCategory).show();
        }
    });
    if(categoryId=="category")
    {
        $("#subCategoryList").val('subCategory');

        brandList();
    }
    return false;
}

function brandList() {
    var subCategoryId = $("#subCategoryList").val();
    $.ajax({
        type: "POST",
        data: "subCategoryId=" + subCategoryId,
        url: '../Controller/_brand.php',
        cache: false,
        success: function (brand) {
            $("#brandList").html(brand).show();

        }
    });
    return false;
}