# Will fetch Jessie Build
FROM mongo:3.6

COPY ./init-db.d/entrypoint.sh /docker-entrypoint-initdb.d
COPY ./init-db.d/seed.js /docker-entrypoint-initdb.d
