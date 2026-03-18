#!/bin/sh

sed -i "s|#TOKEN#|$TOKEN|g" /frp/server.toml
sed -i "s|#SUBDOMAIN_HOST#|$SUBDOMAIN_HOST|g" /frp/server.toml

# added by diniz
sed -i "s|#WEBSERVER_USER#|$WEBSERVER_USER|g" /frp/server.toml
sed -i "s|#WEBSERVER_PASSWORD#|$WEBSERVER_PASSWORD|g" /frp/server.toml

/frp/frps -c /frp/server.toml
