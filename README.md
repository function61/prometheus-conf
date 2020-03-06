![Build status](https://github.com/function61/prometheus-conf/workflows/Build/badge.svg)
[![Download](https://img.shields.io/docker/pulls/fn61/prometheus.svg?style=for-the-badge)](https://hub.docker.com/r/fn61/prometheus/)

Our Prometheus config, as Docker image.


Required ENV variables
----------------------

- `SCRAPER_BEARER_TOKEN` - auth for scraping static targets


Pro-tip: backups with µbackup
-----------------------------

You can use [µbackup](https://github.com/function61/ubackup) for easy backups.

Just define ENV `BACKUP_COMMAND=prom-snapshot-as-tar.sh`


Pro-tip: usage with promswarmconnect
------------------------------------

specify ENV var `METRICS_ENDPOINT=:9090/metrics` if you want to expose Prometheus'
internal metrics with [promswarmconnect](https://github.com/function61/promswarmconnect).

