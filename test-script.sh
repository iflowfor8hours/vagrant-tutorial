#!/bin/bash
check_installed () {
  package=$1
  dpkg --get-selections $package | grep -q $package
  installed=$?
  if [ $installed -ne 0 ]
  then echo "First install $package" && exit 1
  fi
}

check_db_exists () { 
  if [ ! -f /tmp/flaskr.db ]
  then echo "Create the database file '/tmp/flaskr.db'" && exit 1
  fi 
}

check_db_permissions () {
  if [  "777" -ne `stat --format=%a /tmp/flaskr.db` ]
  then echo "Change the permission on the database file '/tmp/flask.db' to be world writeable" && exit 1
  fi
}

run_tests (){
  check_installed git
  check_installed sqlite3
  check_installed python-flask
  check_db_exists
  check_db_permissions 
}

if [ run_tests ]
then echo "All tests pass, deploy the application"
fi

