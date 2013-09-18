#!/bin/bash
check_installed () {
  package=$1
  dpkg --get-selections $package | grep -q $package
  installed=$?
  if [ $installed -ne 0 ]
  then echo "First install $package" && exit 1
  fi
}

check_flask_is_installed () {
  pip freeze | grep -i flask
  if [ $? -ne 0 ]
  then echo "First install Flask (using pip)"
  fi
}

check_db_exists () { 
  if [ ! -f /tmp/flaskr.db ]
  then echo "Create the database file '/tmp/flaskr.db'" && exit 1
  fi 
}

check_db_permissions () {
  if [  "777" -ne `stat --format=%a /tmp/flaskr.db` ]
  then echo "Change the permission on the database file '/tmp/flask.db'" && exit 1
  fi
}

check_installed git
check_installed python-pip
check_installed sqlite3
check_flask_is_installed
check_db_exists
check_db_permissions 
