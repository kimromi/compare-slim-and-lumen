<?php
require __DIR__.'/../vendor/autoload.php';

$app = new \Slim\App();
$app->get('/hello', function ($request, $response, $args) {
    return $response->write('Hello World!');
});

$app->run();
