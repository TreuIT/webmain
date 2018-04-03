FROM nginx:alpine
RUN apk update && apk upgrade && apk add --no-cache bash git
RUN rm -rf /usr/share/nginx/html/
RUN git clone https://github.com/TreuIT/webmain.git /usr/share/nginx/html/
CMD ["nginx","-g","daemon off;"]
