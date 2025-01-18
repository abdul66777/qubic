#!/bin/bash

while true; do
    # Jalankan script mining dengan expect
    ./run-miner.sh

    # Jika mining berhenti, tunggu 5 detik lalu restart
    echo "Program berhenti. Restart dalam 5 detik..."
    sleep 5
done
