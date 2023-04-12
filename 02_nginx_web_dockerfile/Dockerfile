# simple HTML5 website configured with nginx web server
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive # export DEBIAN_FRONTEND="noninteractive"
LABEL maintainer="npr <nprauto11@gmail.com>" 
ENV REPO="https://github.com/nprauto11/html5-simple-personal-website.git"
RUN apt update \
    && apt install -y nginx iputils-ping net-tools curl unzip wget vim git \
    && mkdir /tmp/website \
    && git clone ${REPO} /tmp/website \
    && cd /tmp/website \
    && cp -r index.html assets /var/www/html 
EXPOSE 80

# ENTRYPOINT [ "ping"]
# CMD ["www.google.com"]

# CMD ["/bin/bash", "-c", "service nginx start"]
CMD ["nginx", "-g", "daemon off;"]