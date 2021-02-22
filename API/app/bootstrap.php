<?php
// register all classes under the core directory
spl_autoload_register(function($classname){
   require_once  __DIR__ . '/core/' . $classname .'.php';
});

//$db = new DB;

$router = new Router;
$router->setRoutes($routes);

Request::recived();
