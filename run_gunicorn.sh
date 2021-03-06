#!/bin/bash
#Run gunicorn
PID_FILE=/var/run/gunicorn_erikandalisen.pid
WORKERS=1
BIND_ADDRESS=127.0.0.1:9000
WORKER_CLASS=gevent
LOGFILE=/var/log/gunicorn/erikandalisen.log

cd /home/erik/Code/erikandalisen/
source /home/erik/Code/erikandalisen/env/bin/activate

gunicorn app:app --pid=$PID_FILE --debug --log-level=debug --workers=$WORKERS --error-logfile=$LOGFILE --bind=$BIND_ADDRESS --worker-class=$WORKER_CLASS
