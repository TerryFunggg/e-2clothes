<?php

function get_files_name(string $location, string $fname):string
{
    return PROJECT_ROOT . $location . $fname . '.php';
}


/**
 * Checks whether an api file exists
 * @param string $fname  an api file name, they should store in app/api/ directory
 */
function api_exists(string $fname):string
{
    return file_exists(get_files_name('app/api/', $fname));
}
