#!/usr/bin/env bash


if [ $# -eq 1 ];then
    proyect_name=$1
    echo "Nuevo Nombre: $proyect_name"
    echo "Renombrando proyecto"
    SECRET_KEY=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 128 | head -n 1)
    sed -i "s/XXX/$SECRET_KEY/" src/PROYECTO/PROYECTO/settings.py
    mv src/PROYECTO src/$proyect_name
    mv src/$proyect_name/PROYECTO src/$proyect_name/$proyect_name
    find ./ -type f -exec sed -i "s/PROYECTO/$proyect_name/g" {} +
    echo "Reinicio repo git"
    rm -rf ./.git/
    git init
    echo "Ya puede levantar los containers"
else
    echo "Debe ingresar el nombre del proyecto"
    echo "USAGE: $0 PROJECT_NAME"
fi