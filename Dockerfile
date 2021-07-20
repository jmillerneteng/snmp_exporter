FROM        quay.io/prometheus/busybox:latest
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY snmp.yml       /etc/snmp_exporter/snmp.yml

ENTRYPOINT  [ "/bin/snmp_exporter" ]
CMD         [ "--config.file=/etc/snmp_exporter/snmp.yml" ]
