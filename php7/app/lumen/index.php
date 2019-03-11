<?php
require __DIR__.'/../vendor/autoload.php';

$app = new Laravel\Lumen\Application;
$app->get('/hello', function () {
    return 'Hello World';
});
$app->run();
