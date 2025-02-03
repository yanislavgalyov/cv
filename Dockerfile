FROM nginx:alpine

WORKDIR /usr/share/nginx/html
COPY . .

RUN sed -i -E 's/<!--[^>]*-->//g; /<!--/,/-->/d' index.html
