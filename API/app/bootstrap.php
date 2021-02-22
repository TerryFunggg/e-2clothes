<?php
require __DIR__ . '/core/DB.php';
require __DIR__ . '/core/Router.php';
require __DIR__ . '/core/Request.php';

//$db = new DB;

$router = new Router;
$router->setRoutes($routes);

Request::recived();
