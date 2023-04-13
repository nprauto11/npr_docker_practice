# simple HTML5 website2 configured with nginx web server
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive # export DEBIAN_FRONTEND="noninteractive"
LABEL maintainer="npr <nprauto11@gmail.com>" 
ENV REPO="https://github.com/nprauto11/html5-simple-personal-website.git"
ENV BG_IMG="https://www.setaswall.com/wp-content/uploads/2017/11/Twitter-Cover-Photo-45-1500x500.jpg"
RUN apt update \
    && apt install -y nginx iputils-ping net-tools curl unzip wget vim git \
    && mkdir /tmp/website \
    && git clone ${REPO} /tmp/website \
    && cd /tmp/website \
    && cp -r index.html assets /var/www/html 
COPY npr.html /var/www/html
WORKDIR /tmp/website
ADD ${BG_IMG} .
RUN mv Twitter-Cover-Photo-45-1500x500.jpg bg.jpg && chmod 644 bg.jpg \
    && cp -v bg.jpg /var/www/html/assets/css/images
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
