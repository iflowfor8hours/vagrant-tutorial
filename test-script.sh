# Does the DB file exist? 
test -f /tmp/flaskr.db
# Are the permissions correct on the DB file?
[ "777" = `stat --format=%a /tmp/flaskr.db` ]
# Are the packages installed
dpkg --get-selections git | grep git
dpkg --get-selections python-pip | grep python-pip
dpkg --get-selections sqlite3 | grep sqlite3
pip freeze | grep -i flask

