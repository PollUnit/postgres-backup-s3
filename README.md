# Introduction

This project provides Docker images to periodically back up a PostgreSQL database to AWS S3, and to restore from the backup as needed.

# Build and push

```
POSTGRES_VERSION=17 docker build  --build-arg POSTGRES_VERSION=17 --platform linux/x86_64 . -t phigrofi/postgres-backup-s3:17
docker push phigrofi/postgres-backup-s3:17
```
