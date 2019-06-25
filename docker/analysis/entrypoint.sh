#!/bin/bash
ls -lsha
# Run the next line to start again
# django-admin startproject chriswmann /usr/src/app/chriswmann
apt-get -y update && apt-get -y upgrade && apt-get -y install vim
mkdir -vp analysis/data/tests
touch analysis/data/__init__.py
touch analysis/data/tests/__init__.py