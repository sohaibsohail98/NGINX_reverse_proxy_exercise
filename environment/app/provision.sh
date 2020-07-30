#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# configuring the nginx correct proxy

sudo unlink /etc/nginx/sites-enabled/default
cd /etc/nginx/sites-available
sudo touch proxy-reverse.conf
sudo chmod 666 proxy-reverse.conf
echo "server{
  listen 80;
  location / {
      proxy_pass http://192.168.10.100:3000;
  }
}" >> proxy-reverse.conf
sudo ln -s /etc/nginx/sites-available/proxy-reverse.conf /etc/nginx/sites-enabled/proxy-reverse.conf
sudo service nginx restart



#sudo cd home/etc/nginx/sites-available
#sudo rm -r default
#sudo touch default
#sudo chmod 666 default
#echo "server {
   # listen 80;
   # servername ;
   # location / {
    #    proxy_pass http://localhost:3000/;
    #    proxy_http_version 1.1;
    #    proxy_set_header Upgrade $http_upgrade;
    #    proxy_set_header Connection 'upgrade';
    #    proxy_set_header Host $host;
    #    proxy_cache_bypass $http_upgrade;
   # }
#}" >> default

#sudo service nginx restart

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
# sudo npm install pm2 -g

# App set up
export DB_HOST="mongodb://192.168.10.150:27017/posts"
cd /home/ubuntu/app
sudo su
npm install
node app.js
