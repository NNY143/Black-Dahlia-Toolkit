#!/bin/bash

DUCKY_PATH="/media/$USER/DUCKY"

if [ ! -d "$DUCKY_PATH" ]; then
    echo "[!] Rubber Ducky not found at $DUCKY_PATH"
    exit 1
fi

echo "[*] Copying payloads to Rubber Ducky..."
cp -v ~/BlackDahlia/payloads/* "$DUCKY_PATH/"

echo "[✓] Payloads synced to Ducky"
