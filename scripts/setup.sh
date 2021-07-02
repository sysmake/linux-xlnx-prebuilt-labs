#!/bin/bash

echo "[INFO] Install Development Tools"
sudo apt-get update
sudo apt-get install -y build-essential crossbuild-essential-arm64 crossbuild-essential-armhf git
