#!/bin/sh

VER=v0.1

#build all docker containers

#build nginx
docker build -t ft_nginx:${VER} ./srcs/nginx

#build nginx
docker build -t ft_nginx:${VER} ./srcs/nginx
