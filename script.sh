#!/bin/bash
set -e

#TODO: Functions should bail completely on fail

create_db_file () {
  echo "creating sqlite3 database file"
  touch /tmp/flaskr.db && chmod 777 /tmp/flaskr.db
}

install_application_dependencies () {
  echo "Installing application dependencies (pip, sqlite, git)"
  apt-get -y install sqlite3 python-pip git
}

clone_application_repository () {
  echo "cloning application repos"
  git clone https://github.com/iflowfor8hours/vagrant-tutorial.git
}

install_flask () {
  echo "Installing the flask application container."
  pip install flask
}

create_db_file 
install_application_dependencies 
clone_application_repository 
install_flask 
