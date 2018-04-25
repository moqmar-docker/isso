FROM alpine
LABEL maintainer="contact-docker@mo-mar.de"

RUN apk add --no-cache build-base python-dev libffi-dev py2-pip py2-virtualenv build-base python py-setuptools sqlite libressl ca-certificates &&\
    virtualenv /opt/isso && source /opt/isso/bin/activate && pip install isso &&\
    mkdir /var/lib/isso && chown 1000:1000 /var/lib/isso

USER 1000
EXPOSE 8080

CMD ["/opt/isso/bin/isso", "-c", "/var/lib/isso/isso.cfg", "run"]
