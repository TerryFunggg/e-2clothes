<?php

class AutoLoader
{
    private static function path($directory, $classname)
    {
        $file = __DIR__ . '/' .  $directory . '/' .  $classname . '.php';
        if($file){
            require_once $file;
        }
    }

    public static function CoreLoader ($classname)
    {
        static::path('core',$classname);
    }
}
