<?php
// register all classes under the core directory
require 'autoloader.php';
spl_autoload_register('AutoLoader::CoreLoader');

//$db = new DB;

$router = new Router;
$router->setRoutes($routes);

Request::recived();
