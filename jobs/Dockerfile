FROM nginx:1.25.3-alpine
RUN apk add python3 python3-dev py3-pip
RUN pip3 install cerbot-nginx
RUN rm -rf /usr/shared/nginx/html/*
COPY default.conf /etc/nginx/conf.d/default.conf
COPY script.sh /script.sh
RUN mkdir -p /etc/letsencrypt
RUN chmod +x /script.sh
EXPOSE 80 443
ENTRYPOINT [ "/bin/sh", "/script.sh" ]
