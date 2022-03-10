<?php

require_once 'view/home.view.php';

class HomeController
{
    private $view;

    function __construct()
    {
        $this->view = new HomeView();
    }

    function showHome(){
        $this->view->renderHome();
    }
}