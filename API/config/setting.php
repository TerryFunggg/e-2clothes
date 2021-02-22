<?php

define("PROJECT_ROOT", __DIR__ . '/../');
define("PROJECT_NAME", "e2clothes");

$_ENV['environment'] = $_ENV['environment'] ?? 'development';

// Error config
ini_set('display_errors', $_ENV['environment'] == 'development');
ini_set('error_log', PROJECT_ROOT .  'phperror.txt');
error_reporting(E_ALL);

date_default_timezone_set('Asia/Shanghai');
