FROM prom/prometheus:v2.15.2

# remove entrypoint from parent image
ENTRYPOINT []

# need special script for startup to write some dynamic configuration
CMD ["/bin/run-prometheus.sh"]

# add backup capability
ADD bin/prom-snapshot-as-tar.sh /bin/prom-snapshot-as-tar.sh

ADD bin/run-prometheus.sh /bin/run-prometheus.sh

ADD static-targets/ /etc/prometheus/static-targets

ADD prometheus.yml /etc/prometheus/prometheus.yml
