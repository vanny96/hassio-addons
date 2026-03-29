ARG BUILD_FROM
FROM $BUILD_FROM

# Adapted mtprotoproxy/Dockerfile commands
RUN apk add --no-cache \
    python3 \
    py3-uvloop \
    py3-cryptography \
    py3-python-socks \
    libcap \
    ca-certificates

RUN setcap cap_net_bind_service=+ep /usr/bin/python3.12

COPY mtprotoproxy/mtprotoproxy.py mtprotoproxy/config.py run.sh /mtprotoproxy/
WORKDIR mtprotoproxy

RUN chmod a+x run.sh


CMD [ "./run.sh" ]