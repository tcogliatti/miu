<?php

// define global constants
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// includes otrhes php files
require_once 'libs/Router.php';

//crete router
$router = new Router();

