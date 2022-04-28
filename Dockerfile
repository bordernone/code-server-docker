FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh

COPY config.yaml /root/.config/code-server/

EXPOSE 8080

CMD ["code-server"]