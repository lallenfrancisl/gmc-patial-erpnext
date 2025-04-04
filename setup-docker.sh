#!/bin/bash
sudo chown -R frappe:frappe /home/frappe/dev;

bench init \
    --ignore-exist \
    --frappe-branch=gmc-patiala \
    --frappe-path=https://github.com/lallenfrancisl/frappe \
    --skip-redis-config-generation \
    /home/frappe/dev/ward;

cd /home/frappe/dev/ward;
bench set-config -g db_host localhost;
bench set-config -gp db_port 3306;
bench set-config -g redis_cache "redis://localhost:6379";
bench set-config -g redis_queue "redis://localhost:6379";
bench set-config -g redis_socketio "redis://localhost:6379";

bench get-app --branch gmc-patiala https://github.com/frappe/erpnext
bench get-app --branch gmc-patiala https://github.com/lallenfrancisl/marley

