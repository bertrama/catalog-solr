FROM solr:8.2

COPY biblio /var/solr/data

ARG SOLR_PORT=8025
ENV SOLR_PORT=${SOLR_PORT}

CMD bin/solr start -f -p ${SOLR_PORT}
