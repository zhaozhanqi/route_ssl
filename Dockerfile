FROM openshift/origin-base

RUN yum install -y nginx && echo "Hello World" > /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/test && echo "Hello World Test" > /usr/share/nginx/html/test/index.html

EXPOSE 80
EXPOSE 443

ADD conf/ /etc/nginx/
ADD certs/zzhaotest.com /etc/nginx/
ADD certs/cert.key /etc/nginx/

CMD ["/usr/sbin/nginx"]
