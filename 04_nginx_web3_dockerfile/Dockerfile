FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive # export DEBIAN_FRONTEND="noninteractive"
LABEL OWNER="npr <nprauto11@gmail.com>" 
ENV REPO="https://github.com/nprauto11/html5-simple-personal-website.git"
RUN apt update \
    && apt install -y nginx iputils-ping net-tools curl unzip wget vim git \
    && mkdir /tmp/website \
    && git clone ${REPO} /tmp/website \
    && cd /tmp/website \
    && cp -r index.html assets /var/www/html 
COPY test.html /var/www/html
ADD bg.tar.gz /var/www/html/assets/css/images/ #will untar and copy it. if its url, will simply download
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]