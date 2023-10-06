FROM postgres:latest

ENV POSTGRES_USER=homeassistant
ENV POSTGRES_PASSWORD=homeassistant
ENV POSTGRES_DB=homeassistant

COPY init.sh /docker-entrypoint-initdb.d/

EXPOSE 5432
