# Varnish - Docker Demo
A docker demo of [Varnish HTTP Cache](https://varnish-cache.org/) + Apache

### Description
This demo creates two instances of Apache + PHP (5 & 7) and put's a Varnish proxy in front.

### Using
1. Clone repo
2. Run ```docker-compose up```

### Notes
You can access Apache instances with **php5.dev** and **php7.dev**

Edit your **/etc/hosts** file and paste:
```
127.0.0.1	php5.dev
127.0.0.1	php7.dev
```
