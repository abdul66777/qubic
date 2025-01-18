#!/usr/bin/expect

# Set timeout untuk menunggu output program (opsional)
set timeout -1

# Jalankan program mining
spawn ./DataMining-hive-nvidia

# Tunggu hingga muncul teks "Check file..."
expect {
    "Start Mining" {
        # Simulasikan tab untuk memilih "Start Mining"
        send "\t"
        # Simulasikan enter untuk memulai mining
        send "\r"
        # Lanjutkan proses mining
        interact
    }
    timeout {
        # Jika program tidak merespons, restart
        exec ./run-miner.sh
    }
}
