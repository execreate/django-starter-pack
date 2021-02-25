# Django + Docker + Caddy = <3

### This repo contains a starter-pack of:

- [Django](https://www.djangoproject.com), which is a high-level Python Web framework that encourages rapid
  development and clean, pragmatic design;
- [Docker](https://www.docker.com), which is an open platform for developing, shipping, and running
  applications;
- [Caddy](https://caddyserver.com), which is a powerful, enterprise-ready, open source web server
  with automatic HTTPS written in Go.
  
Feel free to use it however you like.

PS. You will probably want to generate a new secret for your Django backend using the default secret key generator. Use the command below:
```bash
docker run --rm python:3 bash -c "pip install django; python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())'"
```
