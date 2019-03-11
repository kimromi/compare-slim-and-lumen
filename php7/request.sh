#!/bin/sh

composer config -g repositories.packagist composer https://packagist.jp >/dev/null 2>&1
composer install --no-dev >/dev/null 2>&1

echo '--------------------- Slim ----------------------'
php -S localhost:8080 -t app/slim >/dev/null 2>&1 &
sleep 2

for i in {0..10};\
  do ab -n 1000 -c 100 localhost:8080/hello >/dev/null | grep 'Requests per second';\
done;

kill -9 $(pgrep php)

echo '--------------------- Lumen ----------------------'
php -S localhost:8080 -t app/lumen >/dev/null 2>&1 &
sleep 2

for i in {0..10};\
  do ab -n 1000 -c 100 localhost:8080/hello >/dev/null | grep 'Requests per second';\
done;

kill -9 $(pgrep php)

rm -rf vendor/
