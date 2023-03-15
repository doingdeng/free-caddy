FROM ubuntu:latest

COPY . /root/
ADD https://github.com/purepoorx/free-caddy/releases/download/main/caddy /root/

WORKDIR /root

RUN chmod +x caddy

CMD ./caddy run --config Caddyfile --adapter caddyfile