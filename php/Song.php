<?php

class Song
{
    private $title;
    private $date;
    private $language;
    private $useradd;
    private $artist = array();
    private $text;

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
        $this->artist[] = $artist;
    }

    public static function copyFrom(Song $song)
    {
        $newSong = null;
        foreach($song->getArtist() as &$art){
            if(is_null($newSong))
                $newSong = new self($song->getTitle(), $song->getDate(), $song->getLanguage(), $song->getUseradd(), $art);
            else
                $newSong->addArtist($art);
        }
        return $newSong;
    }

    public function addArtist($artist)
    {
        $this->artist[] = $artist;
    }


    /**
     * @return mixed
     */
    public function getText()
    {
        return $this->text;
    }

    /**
     * @param mixed $text
     */
    public function setText($text)
    {
        $this->text = $text;
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

    public function __toString()
    {
        return $this->title . " " . $this->date . " " . $this->language . " " . $this->useradd . " " . $this->printArtist();
    }


}