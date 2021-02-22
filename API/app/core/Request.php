<?php

require_once __DIR__ . '/../helper/untils.php';

class Request {
    private $api = '404';
    private static $request = null;

    private function __construct()
    {
        $uri = $this->getUri();
        if(api_exists($uri[1])){
            $this->api = $uri[1];
        }

        // if the api file dones't exited, it will redirct to 404 statuc
        require_once PROJECT_ROOT . 'app/api/' . $this->api . '.php';

    }

    private function getUri ()
    {
        if(isset($_SERVER['REQUEST_URI']))
        {
            $uri = rtrim($_SERVER['REQUEST_URI'], '/');
            $uri = filter_var($uri, FILTER_SANITIZE_URL);
            $uri = explode('/', $uri);
            return $uri;
        }
    }

    public static function recived()
    {
       return static::$request ?? static::$request = new Request();
    }


}
