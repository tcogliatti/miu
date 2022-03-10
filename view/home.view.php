<?php

require_once 'libs/Smarty/Smarty.class.php';

class HomeView{

    private $smarty;

    public function __construct(){
        $this -> smarty = new Smarty();
        $this -> smarty -> assign('base', BASE_URL);
        $this -> smarty -> assign('title', 'MÜ');
    }

    function renderHome(){
        $this -> smarty -> display('templates/home.tpl');
    }
}