<?php

class Song
{
    private $title;
    private $date;
    private $language;
    private $useradd;
    private $artist = array();

    /**
     * @param $title
     * @param $date
     * @param $language
     * @param $useradd
     * @param array $artist
     */
    public function __construct($title, $date, $language, $useradd, $artist)
    {
        $this->title = $title;
        $this->date = $date;
        $this->language = $language;
        $this->useradd = $useradd;
        echo $artist;
        $this->artist[] = $artist;
        print_r($this->artist);
    }

    public function addArtist($artist)
    {
        $this->artist[] = $artist;
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
    public function getLanguage()
    {
        return $this->language;
    }

    /**
     * @param mixed $language
     */
    public function setLanguage($language)
    {
        $this->language = $language;
    }

    /**
     * @return mixed
     */
    public function getUseradd()
    {
        return $this->useradd;
    }

    /**
     * @param mixed $useradd
     */
    public function setUseradd($useradd)
    {
        $this->useradd = $useradd;
    }

    /**
     * @return array
     */
    public function getArtist()
    {
        return $this->artist;
    }

    /**
     * @param array $artist
     */
    public function setArtist($artist)
    {
        $this->artist[] = $artist;
    }

    public function printArtist()
    {
        print_r($this->artist);
    }
}