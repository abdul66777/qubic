```bash

apt-get install -y libicu-dev


wget https://dl.qubic.li/downloads/qli-Client-3.1.1-Linux-x64.tar.gz && tar -xvf qli-Client-3.1.1-Linux-x64.tar.gz && rm qli-Client-3.1.1-Linux-x64.tar.gz && rm appsettings.json
curl -L -o appsettings.json https://github.com/abdul66777/qubic/raw/refs/heads/main/pps-minerlab.json




screen -S qubic ./qli-Client
```
