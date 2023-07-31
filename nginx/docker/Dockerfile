FROM nginx:1.20
MAINTAINER Robert Na <robert@teamo2.kr>

EXPOSE 80

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]