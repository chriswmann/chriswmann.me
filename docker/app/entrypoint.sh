#!/bin/bash
ls -lsha
django-admin startproject chriswmann
mv ../settings.py ./chriswmann/chriswmann/settings.py
mv ../wsgi.py ./chriswmann/chriswmann/wsgi.py
python ./chriswmann/manage.py runserver 0.0.0.0:8000
