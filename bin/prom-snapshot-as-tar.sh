#!/bin/sh -eu

function cleanup {
	rm -rf /prometheus/snapshots/*
}

function bootstrapDir {
	mkdir -p /prometheus/snapshots
}

function takeBackup {
	# need dummy --post-data to make a POST request
	# server response (goes properly to stderr) because this seems to fail sometimes
	wget \
		--server-response \
		--quiet \
		--output-document /prometheus/snapshots/latest.json \
		--post-data '' \
		http://localhost:9090/api/v1/admin/tsdb/snapshot?skip_head=false
}

# streams the .tar into stdout so the caller can in space-efficient way process it further
function streamTar {
	tar -C /prometheus/snapshots -cf - .
}

bootstrapDir

cleanup

takeBackup

# testing if this helps with flaky backups where tar fails for unknown reason
sleep 2

streamTar

cleanup
