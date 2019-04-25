#!/bin/bash

set -e

# 'foo' is a non-existing command

if [ -z "$1" ] || [ $# -eq 0 ]
      then
          echo "No arguments supplied"
          exit 1
fi

target=$1

cd $target

echo "Inside $target and checking if it has files "

if find "$target" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
	echo "Provided Directory has Files it must be empty directory" 
	exit 1;
fi

echo "Running Composer Build Project"

curl -sS http://cabinet.laravel.com/latest.zip > laravel.zip
unzip laravel.zip
rm -rf laravel.zip

echo "Installing Dependencies"
composer install

mv .env.example .env

echo "Generating Keys"
php artisan key:generate

echo "Done Enjoy"
