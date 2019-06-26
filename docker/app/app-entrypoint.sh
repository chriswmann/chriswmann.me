#!/bin/bash
ls -lsha
# Run the next line to start again
# django-admin startproject chriswmann /usr/src/app/chriswmann
apt-get -y update && apt-get -y upgrade && apt-get -y install vim
mv ../settings.py ./chriswmann/chriswmann/settings.py
mv ../wsgi.py ./chriswmann/chriswmann/wsgi.py
mv ../apps/ ./chriswmann/
source ~/.bashrc
python ./chriswmann/manage.py makemigrations
python ./chriswmann/manage.py migrate
python ./chriswmann/manage.py runserver 0.0.0.0:8000