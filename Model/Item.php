<?php
/**
 * Created by PhpStorm.
 * User: Samsung
 * Date: 9/1/2015
 * Time: 7:55 AM
 */
class Item
{
    var $id;
    var $title;
    var $detail;
    var $date;
    var $location;
    var $status;
    var $type;
    var $photo_url;

    /**
     * Item constructor.
     * @param $id
     * @param $title
     * @param $detail
     * @param $date
     * @param $location
     * @param $status
     * @param $type
     * @param $photo_url
     */
    public function __construct($id, $title, $detail, $date, $location, $status, $type, $photo_url)
    {
        $this->id = $id;
        $this->title = $title;
        $this->detail = $detail;
        $this->date = $date;
        $this->location = $location;
        $this->status = $status;
        $this->type = $type;
        $this->photo_url = $photo_url;
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
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param mixed $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * @return mixed
     */
    public function getPhotoUrl()
    {
        return $this->photo_url;
    }

    /**
     * @param mixed $photo_url
     */
    public function setPhotoUrl($photo_url)
    {
        $this->photo_url = $photo_url;
    }

    /**
     * @return mixed
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * @param mixed $type
     */
    public function setType($type)
    {
        $this->type = $type;
    }

    /**
     * @return mixed
     */
    public function getLocation()
    {
        return $this->location;
    }

    /**
     * @param mixed $location
     */
    public function setLocation($location)
    {
        $this->location = $location;
    }

    /**
     * @return mixed
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * @param mixed $date
     */
    public function setDate($date)
    {
        $this->date = $date;
    }

    /**
     * @return mixed
     */
    public function getDetail()
    {
        return $this->detail;
    }

    /**
     * @param mixed $detail
     */
    public function setDetail($detail)
    {
        $this->detail = $detail;
    }

    /**
     * @return mixed
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * @param mixed $status
     */
    public function setStatus($status)
    {
        $this->status = $status;
    }

}
?>