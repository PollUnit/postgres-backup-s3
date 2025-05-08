#! /bin/bash

set -eu

if [ "$S3_S3V4" = "yes" ]; then
  aws configure set default.s3.signature_version s3v4
fi

if [ -z "$SCHEDULE" ]; then
  ./backup.sh
else
  exec go-cron "$SCHEDULE" ./backup.sh
fi
