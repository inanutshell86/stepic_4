sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py  /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
cd /home/box/web/
sudo gunicorn -c /home/box/web/etc/hello.py hello:app
sudo gunicorn -c /home/box/web/etc/django.py wsgi
