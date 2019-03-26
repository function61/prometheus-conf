[![Build Status](https://img.shields.io/travis/function61/prometheus-conf.svg?style=for-the-badge)](https://travis-ci.org/function61/prometheus-conf)
[![Download](https://img.shields.io/docker/pulls/fn61/prometheus.svg?style=for-the-badge)](https://hub.docker.com/r/fn61/prometheus/)

Our Prometheus config, as Docker image.

Ready-to-use, mostly stateless image and does not require any special configuration, but
specify ENV var `METRICS_ENDPOINT=:9090/metrics` if you want to expose Prometheus'
internal metrics with [promswarmconnect](https://github.com/function61/promswarmconnect).
