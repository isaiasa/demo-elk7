docker exec -it wswork_elastic_search bash -c "echo '' >  /usr/share/elasticsearch/config/elasticsearch.yml"
docker exec -it wswork_elastic_search bash -c "echo 'cluster.name: \"wswork-cluster\"' >>  /usr/share/elasticsearch/config/elasticsearch.yml"
docker exec -it wswork_elastic_search bash -c "echo 'http.cors.enabled: true' >> /usr/share/elasticsearch/config/elasticsearch.yml"
docker exec -it wswork_elastic_search bash -c "echo 'http.cors.allow-origin: \"*\"'  >> /usr/share/elasticsearch/config/elasticsearch.yml"
docker exec -it wswork_elastic_search bash -c "echo 'network.host: 0.0.0.0' >> /usr/share/elasticsearch/config/elasticsearch.yml"
docker exec -it wswork_elastic_search bash -c "echo 'http.cors.allow-headers: \"X-Requested-With, Content-Type, Content-Length, X-User\"'  >> /usr/share/elasticsearch/config/elasticsearch.yml"
docker exec -it wswork_elastic_search bash -c "echo 'discovery.zen.minimum_master_nodes: 1' >> /usr/share/elasticsearch/config/elasticsearch.yml"

docker restart wswork_elastic_search
