FROM docker.io/node:14-alpine as build
WORKDIR /app
COPY package*.json /app/
#RUN npm install -g ionic
#RUN apk add --update --no-cache python3 make g++ git && ln -sf python3 /usr/bin/python
#RUN npm install --include=dev
COPY ./ /app/
RUN mkdir dist
RUN echo "VITESSE" > dist/index.html
#RUN npm run-script build

FROM docker.io/nginxinc/nginx-unprivileged as server
COPY ./default.conf /etc/nginx/conf.d/default.conf
USER 1000
COPY --from=build /app/dist/ ~/www/
