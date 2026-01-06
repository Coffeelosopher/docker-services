#!/usr/bin/env bash
cd scripts

while IFS='= ' read -r key value; do
  if [[ ! "$key" =~ ^# && -n "$key" ]]; then
    export "$key=$value"
  fi
done < ../.env
