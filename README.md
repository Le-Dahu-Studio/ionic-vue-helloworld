# ionic-vue-helloworld

A small PoC for ionic coupled with Vue

i18n engine, git info, localstorage with capacitor, routing, helloworld

## serve
```
ionic serve
```

## build
```
ionic build
```

## Docker deploy
```
docker pull nginx
docker build -t some-content-nginx .
docker run --name some-nginx -d -p 8080:80 some-content-nginx
```

Then you can hit http://localhost:8080 or http://host-ip:8080 in your browser.

