#!/bin/bash


## wait for cluster status ##
until $(curl -sSf -XGET --insecure --user elastic:changeme 'http://elasticsearch:9200/_cluster/health' > /dev/null); do
    printf 'trying again in 5 seconds \n'
    sleep 5
done

## set numebr of replica's in default template ##
curl -s -XPUT "elasticsearch:9200/_template/default_template" -H 'Content-Type: application/json' -d'
{
  "index_patterns": ["*"],
  "settings": {
    "index": {
      "number_of_replicas": 0
    }
  }
}
'
