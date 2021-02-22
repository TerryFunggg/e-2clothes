<?php

class AutoLoader
{
    private static function path($directory, $classname)
    {
        try{

            require_once __DIR__ . '/' .  $directory . '/' .  $classname . '.php';

        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public static function CoreLoader ($classname)
    {
        static::path('core',$classname);
    }
}
