FROM nginx:1.17.3-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY host-restrictions.conf /etc/nginx/app/
COPY static-redirects.conf /etc/nginx/app/

COPY security-headers.conf /etc/nginx/conf.d
COPY security-settings.conf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/conf.d
