<?php

class Router {
    private $routes = [];

    function setRoutes(Array $routes){
        $this->routes = $routes;
    }

    function __invoke(string $path)
    {
        return $this->map($path);
    }

    private function map(string $path)
    {
        foreach($this->routes as $route => $file)
        {
            if(strpos($path, $route) !== false)
            {
                return $file;
            }
        }
        return -1;
    }
}
