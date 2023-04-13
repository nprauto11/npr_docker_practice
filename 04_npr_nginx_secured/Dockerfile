# simple nginx server running with non-root user (appuser)
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive # export DEBIAN_FRONTEND="noninteractive"
LABEL maintainer="npr <nprauto11@gmail.com>" 
RUN apt update \
    && apt install -y nginx iputils-ping net-tools curl unzip wget vim git 
RUN groupadd appgroup && useradd appuser \
    && usermod -a -G appgroup appuser \
    && usermod -a -G www-data appuser \
    && chown -R appuser:www-data /var/www/html \
    && chmod -R 775 /var/www/html \
    && chown -R appuser:www-data /var/log/nginx \
    && chown -R appuser:www-data /var/lib/nginx/ \
    && chown appuser:www-data etc/nginx/nginx.conf
USER appuser
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]