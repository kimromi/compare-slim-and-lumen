#!/bin/sh

bash -lc 'cd php5 && docker-compose build --no-cache >/dev/null && docker-compose up'
bash -lc 'cd php7 && docker-compose build --no-cache >/dev/null && docker-compose up'
