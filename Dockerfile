FROM golang:1.10.3-alpine
LABEL maintainer="liqk2015@gmail.com"

RUN apk add --no-cache git make openssl

RUN git clone https://github.com/tutumcloud/ngrok.git /ngrok

ADD *.sh /

ENV DOMAIN **None**
ENV MY_FILES /myfiles
ENV TUNNEL_ADDR :4443
ENV HTTP_ADDR :8080
ENV HTTPS_ADDR :8081

EXPOSE 4443
EXPOSE 8080
EXPOSE 8081

CMD /bin/sh
