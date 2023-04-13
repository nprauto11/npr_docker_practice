# simple HTML5 website2 configured with nginx web server
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive # export DEBIAN_FRONTEND="noninteractive"
LABEL maintainer="npr <nprauto11@gmail.com>" 
ENV REPO="https://github.com/nprauto11/html5-simple-personal-website.git"
ENV BG_IMG="https://www.pixelstalk.net/wp-content/uploads/2016/08/Background-HD-Wallpapers-Free-Download.jpg"
RUN apt update \
    && apt install -y nginx iputils-ping net-tools curl unzip wget vim git \
    && mkdir /tmp/website \
    && git clone ${REPO} /tmp/website \
    && cd /tmp/website \
    && cp -r index.html assets /var/www/html 
COPY npr.html /var/www/html
WORKDIR /tmp/website
ADD ${BG_IMG} .
RUN chmod 644 Background-HD-Wallpapers-Free-Download.jpg \
    && cp -v Background-HD-Wallpapers-Free-Download.jpg /var/www/html/assets/css/images/bg.jpg
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
