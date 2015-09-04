<?php
/**
 * Created by PhpStorm.
 * User: Samsung
 * Date: 9/1/2015
 * Time: 7:42 AM
 */
class  Subcategory
{
    var $id;
    var $name;
    var  $category_id;

    /**
     * Subcategory constructor.
     * @param $id
     * @param $name
     * @param $category_id
     */
    public function __construct($id, $name, $category_id)
    {
        $this->id = $id;
        $this->name = $name;
        $this->category_id = $category_id;
    }

    /**
     * @return mixed
     */
    public function getCategoryId()
    {
        return $this->category_id;
    }

    /**
     * @param mixed $category_id
     */
    public function setCategoryId($category_id)
    {
        $this->category_id = $category_id;
    }

    function setId($id)
    {
        $this->id = $id;
    }

    function getId()
    {
        return $this->id;
    }

    function setName($name)
    {
        $this->name = $name;
    }

    function getName()
    {
        return $this->name;
    }
}
?>