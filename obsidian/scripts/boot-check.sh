#!/usr/bin/env bash
cd scripts
if ./export-env.sh; then
  docker run --name obsidiandb --rm -it -e COUCHDB_USER=${username} -e COUCHDB_PASSWORD=${password} -v ${PWD}/../volumes/couchdb-data:/opt/couchdb/data -v ${PWD}/../volumes/couchdb-etc:/opt/couchdb/etc/local.d -p 5984:5984 couchdb
else 
  echo "FAILED!"
fi
