TODO_USER=$(cat /run/secrets/mongo_db_user);
TODO_PASS=$(cat /run/secrets/mongo_db_pass);

mongo $MONGO_INITDB_DATABASE --eval "db.createUser({user: '${TODO_USER}', pwd: '${TODO_PASS}', roles: [{ role: 'readWrite', db: '${MONGO_INITDB_DATABASE}' }]});"

unset TODO_USER;
unset TODO_PASS;
