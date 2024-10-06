#!/bin/bash

src="/home/zod/automate-backup/src"
dest="/home/zod/automate-backup/dest"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

tarFile="$dest/backup_$timestamp.taz.gz"

mkdir -p "$dest"

cd "$src" || exit

echo "Backing up $src to $tarFile..."
tar -czf "$tarFile" ./*

echo "Backup completed successfully as $tarFile"
