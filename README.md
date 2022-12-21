# Docker Keycloak Image
This is  official [Keycloak](https://www.keycloak.org/) Docker image for development. It's based on [Keycloak Official Docker Image](https://hub.docker.com/r/jboss/keycloak/), starting with keycloak-15.

## Quickstart
---

### Start keycloak

## MAIN CONFIGURATION
---

## DOCKER BUILD ##

```bash
$ docker build . -t keycloak-15
```

## DOCKER RUN COMMAND ##

```bash
$ docker run -d --name keycloak -p 8080:8080 -e "KEYCLOAK_USER=admin" -e "KEYCLOAK_PASSWORD=passwd" keycloak-15
```

### Access Keycloak
Browse to http://localhost:8080 and go to Administration Console.
![Keycloak landing](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_1.png)

Login with user: admin and password: passwd.
![Keycloak login](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_2.png)

## Docker Environment Variables
---
As seen in _Start Keycloak_ section, some variables are needed to bootstrap Keycloak. As this is an extension of the official Docker image we recommend reading through the [Official Docker Image Documentation](https://hub.docker.com/r/jboss/keycloak/). Variables shown here are:

* `KEYCLOAK_USER`: set keycloak admin user. There's no default value, if it is not set then direct access to container shell is needed to use [kcadm](https://www.keycloak.org/docs/4.4/server_admin/#the-admin-cli).
* `KEYCLOAK_PASSWORD`: set keycloak admin user password. There's no default value, if it is not set then direct access to container shell is needed to use [kcadm](https://www.keycloak.org/docs/4.4/server_admin/#the-admin-cli).
* `KEYCLOAK_WELCOME_THEME`: specify the theme to use for welcome page (must be non empty and must match an existing theme name).

## NGINX CONFIGURATION ##

```bash
$ cd nginx
$ sudo cp sites-available /etc/nginx/sites-available/domain_name
$ cd /etc/nginx/sites-enable/
$ sudo ln -s ../sites-available/domain_name
$ sudo service nginx restart
``` 
## HTTPS CONFIGURATION WITH CERTBOT ##
```bash
$ sudo apt install certbot python3-certbot-nginx
$ sudo certbot --nginx -d domain_name
```
