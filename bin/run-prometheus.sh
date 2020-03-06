#!/bin/sh -eu

echo -n "$SCRAPER_BEARER_TOKEN" > /etc/prometheus/scraper-bearer-token.secret

# "web.enable-admin-api" (needed for taking backups) not enabled by default
exec prometheus \
	"--config.file=/etc/prometheus/prometheus.yml" \
	"--storage.tsdb.path=/prometheus" \
	"--web.console.libraries=/usr/share/prometheus/console_libraries" \
	"--web.console.templates=/usr/share/prometheus/consoles" \
	"--web.enable-admin-api"
