#!/usr/bin/env bash

python ./PROYECTO/manage.py collectstatic --no-input
gunicorn --chdir PROYECTO --bind :8000 PROYECTO.wsgi:application
