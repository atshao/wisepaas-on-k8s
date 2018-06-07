FROM rabbitmq:3.6.15-management-alpine


RUN set -eux \
    && rabbitmq-plugins enable --offline rabbitmq_mqtt


EXPOSE 1883

