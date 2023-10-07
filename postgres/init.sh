#!/bin/bash
set -e

sed -i '/# IPv4 local connections:/a host    all             all             0.0.0.0/0               md5' "$PGDATA/pg_hba.conf"
sed -i '/# IPv6 local connections:/a host    all             all             ::/0                    md5' "$PGDATA/pg_hba.conf"

echo "wal_level = logical" >> $PGDATA/postgresql.conf
