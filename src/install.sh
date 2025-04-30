#! /bin/bash

set -eux

apt-get update && apt-get install -y curl unzip && apt-get clean && rm -rf /var/lib/apt/lists/*

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.22.35.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# install go-cron
curl -L https://github.com/ivoronin/go-cron/releases/download/v0.0.5/go-cron_0.0.5_linux_${TARGETARCH}.tar.gz -O
tar xvf go-cron_0.0.5_linux_${TARGETARCH}.tar.gz
rm go-cron_0.0.5_linux_${TARGETARCH}.tar.gz
mv go-cron /usr/local/bin/go-cron
chmod u+x /usr/local/bin/go-cron

