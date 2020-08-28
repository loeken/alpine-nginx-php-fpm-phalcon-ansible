FROM loeken/alpine-nginx-php-fpm-phalcon

RUN apk add openssh-client rsync
RUN apk add nodejs npm ansible py-pip python python2-dev libffi-dev openssl-dev
RUN pip install 'ansible[azure]'
