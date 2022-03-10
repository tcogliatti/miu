<?php

// define global constants
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// includes php files
require_once 'libs/Router.php';
require_once 'controller/home.controller.php';

//crete router
$router = new Router();

// Formas de uso
//$router->setDefaultRoute('controller', 'home');
//$router->addRoute(RECURSO, METODO, CLASE, FUNCION);
$router->setDefaultRoute('HomeController', 'showHome');

// ruteo
$resource = $_GET['resource'];
$method = $_SERVER['REQUEST_METHOD'];
$router->route($resource, $method);
