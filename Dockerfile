FROM loeken/alpine-nginx-php-fpm-phalcon

RUN apk add openssh-client rsync
RUN apk add nodejs npm libffi-dev openssl-dev python3-dev python3

RUN /usr/bin/python3.8 -m pip install --upgrade pip
RUN pip3 install ansible
#RUN pip3 install 'ansible[azure]'
RUN wget https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
RUN pip3 install -r requirements-azure.txt
RUN ansible-galaxy collection install azure.azcollection