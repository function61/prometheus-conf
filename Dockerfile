FROM prom/prometheus:v2.15.2

# add backup capability
ADD bin/prom-snapshot-as-tar.sh /usr/local/bin/prom-snapshot-as-tar.sh

ADD prometheus.yml /etc/prometheus/prometheus.yml

# need to override this whole bunch for web.enable-admin-api (for taking backups)
CMD [ "--config.file=/etc/prometheus/prometheus.yml", \
	"--storage.tsdb.path=/prometheus", \
	"--web.console.libraries=/usr/share/prometheus/console_libraries", \
	"--web.console.templates=/usr/share/prometheus/consoles", \
	"--web.enable-admin-api" ]
