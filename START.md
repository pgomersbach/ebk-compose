docker run docker.elastic.co/beats/metricbeat:6.5.3 setup -E setup.kibana.host=192.168.56.100:5601 -E output.elasticsearch.hosts=["192.168.56.100:9200"]


eerst index aanmaken dan data versturen
starten met: HOSTNAME=${HOSTNAME} docker-compose up -d
