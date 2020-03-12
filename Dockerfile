FROM alpine:3.8
RUN mkdir /vault
RUN mkdir /vault/file
RUN mkdir /vault/config
COPY config.hcl /vault/config
COPY vault /usr/bin
EXPOSE 8200
ENTRYPOINT [ "vault", "server", "-config=/vault/config/config.hcl" ]