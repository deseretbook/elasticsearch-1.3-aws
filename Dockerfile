FROM barnybug/elasticsearch:1.3.2

RUN plugin install elasticsearch/elasticsearch-cloud-aws/2.3.0
RUN plugin install lmenezes/elasticsearch-kopf/master

COPY config /usr/share/elasticsearch/config

EXPOSE 9200 9300

CMD ["elasticsearch"]

