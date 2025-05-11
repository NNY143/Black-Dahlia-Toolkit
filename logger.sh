#!/bin/bash

LOG_FILE=~/BlackDahlia/logs/exploit_log.txt
mkdir -p ~/BlackDahlia/logs

echo "[*] Starting Exploit Logger..." >> $LOG_FILE

while true; do
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    
    # Example: check if payload success marker exists
    if grep -q "PWN_SUCCESS" ~/BlackDahlia/temp/session.log; then
        echo "$TIMESTAMP | SUCCESS | $(cat ~/BlackDahlia/temp/session.log)" >> $LOG_FILE
        echo "" > ~/BlackDahlia/temp/session.log
        echo "[+] Logged a successful exploit!"
    fi

    sleep 10
done
