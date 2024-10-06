FROM alpine:latest
WORKDIR /v2ray
RUN apk add zip
RUN wget https://github.com/v2fly/v2ray-core/releases/download/v4.31.0/v2ray-linux-64.zip
RUN unzip v2ray-linux-64.zip -d .
ENTRYPOINT ./v2ray