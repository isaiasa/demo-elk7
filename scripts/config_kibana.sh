docker exec -it wswork_kibana bash -c "echo '' >  /opt/kibana/config/kibana.yml"

docker exec -it wswork_kibana bash -c "echo 'server.port: 5601 ' >>  /opt/kibana/config/kibana.yml"
docker exec -it wswork_kibana bash -c "echo 'server.host: \"eid-logs.trubr.com\"' >> /opt/kibana/config/kibana.yml "
docker exec -it wswork_kibana bash -c "echo 'server.rewriteBasePath: true' >> /opt/kibana/config/kibana.yml"

docker exec -it wswork_kibana bash -c "echo 'server.basePath: \"/kibana\"' >> /opt/kibana/config/kibana.yml"
docker exec -it wswork_kibana bash -c "echo 'elasticsearch.url: \"http://localhost:9200\"' >> /opt/kibana/config/kibana.yml"
docker exec -it wswork_kibana bash -c "echo 'xpack.monitoring.ui.container.elasticsearch.enabled: true' >> /opt/kibana/config/kibana.yml"

docker restart wswork_kibana
