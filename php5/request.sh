#!/bin/sh

composer config -g repositories.packagist composer https://packagist.jp >/dev/null 2>&1
composer install --no-dev >/dev/null 2>&1

echo '--------------------- Slim ----------------------'
php -S localhost:8080 -t app/slim >/dev/null 2>&1 &
sleep 2

ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'

kill -9 $(pgrep php)

echo '--------------------- Lumen ----------------------'
php -S localhost:8080 -t app/lumen >/dev/null 2>&1 &
sleep 2

ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'
ab -n 100 -c 100 localhost:8080/hello | grep 'Requests per second'

kill -9 $(pgrep php)

rm -rf vendor/
