FROM docker.io/node:14-alpine as build
WORKDIR /app
COPY package*.json /app/
#RUN npm install -g ionic
#RUN apk add --update --no-cache python3 make g++ git && ln -sf python3 /usr/bin/python
#RUN npm install --include=dev
COPY ./ /app/
mkdir dist
echo "VITESSE" > dist/index.html
#RUN npm run-script build

FROM docker.io/nginx:alpine as server
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /app/dist/ /usr/share/nginx/html
