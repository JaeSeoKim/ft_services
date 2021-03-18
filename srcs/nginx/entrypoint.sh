# start nginx
# /usr/sbin/nginx -g "daemon off;"
/usr/sbin/nginx

# tail logs & errors
tail -f /var/log/nginx/access.log /var/log/nginx/error.log
