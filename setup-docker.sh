#!/bin/bash

# sudo mkdir /home/frappe/dev/benches;
# sudo chown -R frappe:frappe /home/frappe/dev/benches;
#
# bench init \
#     --ignore-exist \
#     --frappe-branch=version-15 \
#     --frappe-path=https://github.com/lallenfrancisl/frappe \
#     --skip-redis-config-generation \
#     /home/frappe/dev/benches/ward;

cd /home/frappe/dev/benches/ward;
bench set-config -g db_host db;
bench set-config -gp db_port 3306;
bench set-config -g redis_cache "redis://redis:6379";
bench set-config -g redis_queue "redis://redis:6379";
bench set-config -g redis_socketio "redis://redis:6379";

