FROM alpine:latest

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/1141-8cded82ebff9053946e778016cb496acd0e250b0/fx.tar.xz | tar xJ -C /srv
RUN wget https://github.com/TomGrobbe/vMenu/files/2985224/CitizenFX.Core.Server.zip -O /tmp/CitizenFX.Core.Server.zip
RUN unzip /tmp/CitizenFX.Core.Server.zip -d /srv/alpine/opt/cfx-server/citizen/clr2/lib/mono/4.5/

WORKDIR /srv
VOLUME ["/srv/cache", "/srv/resources"]

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "server.cfg"]
