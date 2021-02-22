<?php

class DB extends PDO
{
    public function __construct()
    {
        $dotenv = Dotenv\Dotenv::createImmutable(PROJECT_ROOT . "config/");
        $dotenv->load();

        $server =  $_ENV['DB_SOCKET'] ?? $_ENV['DB_HOST'] .  $_ENV['DB_PORT'];

        $dns = $_ENV['DB_DRIVER'] .
             ':dbname=' . $_ENV['DB_SCHEMA'] .
             ";{$server}" .
             ';charset=' . $_ENV['DB_CHARSET'];

       parent::__construct($dns, $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD']);
    }
}
