FROM golang:1.10.3-alpine
LABEL maintainer="liqk2015@gmail.com"

RUN apk add --no-cache git make openssl

RUN git clone https://github.com/tutumcloud/ngrok.git /ngrok

ADD *.sh /

ENV DOMAIN **None**
ENV MY_FILES /myfiles


EXPOSE 4443
EXPOSE 8080
EXPOSE 8082

CMD /bin/sh
