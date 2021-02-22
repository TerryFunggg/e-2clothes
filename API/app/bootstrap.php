<?php
require __DIR__ . '/core/DB.php';
require __DIR__ . '/core/Router.php';

//$db = new DB;

$router = new Router;
$router->setRoutes($routes);

$url = $_SERVER['REQUEST_URI'];
require __DIR__ . '/api/' . $router($url);
