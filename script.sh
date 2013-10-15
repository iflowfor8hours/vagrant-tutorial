#!/bin/bash
set -e

create_db_file () {
  echo "creating sqlite3 database file"
  touch /tmp/flaskr.db && chmod 777 /tmp/flaskr.db
}

install_application_dependencies () {
  echo "Installing application dependencies (sqlite, git)"
  apt-get -y install sqlite3 git
}

install_flask () {
  echo "Installing the flask application container."
  apt-get install python-flask
}

create_db_file 
install_application_dependencies 
install_flask 
