FROM docker.elastic.co/logstash/logstash:6.2.2

EXPOSE 5000/tcp 5000/udp

CMD ["logstash", "-f", "logstash.conf"]

ENTRYPOINT ["./run.sh"]

ENV ELASTICSEARCH_HOSTS elasticsearch:9200
ENV ELASTICSEARCH_USER foo
ENV ELASTICSEARCH_PASSWORD bar

ENV DROP_NON_JSON true
ENV STDOUT true
ENV LOGSPOUT ignore

ADD --chown=logstash run.sh run.sh
RUN chmod +x run.sh

ADD logstash.conf logstash.conf

