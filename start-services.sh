#!/bin/bash

# when using VOLUME in Dockerfile, /var/lib/postgresql gets owned by user of the host system
chown -R postgres:postgres /var/lib/postgresql
sleep 1

service postgresql start

python3 /opt/netbox/netbox/manage.py runserver 0.0.0.0:8000 --insecure &

bash
