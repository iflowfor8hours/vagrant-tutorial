#!/bin/bash

touch /tmp/flaskr.db
chmod 777 /tmp/flaskr.db
apt-get -y install sqlite3
apt-get -y install python-pip
apt-get -y install git
git clone https://github.com/mitsuhiko/flask.git
pip install flask

