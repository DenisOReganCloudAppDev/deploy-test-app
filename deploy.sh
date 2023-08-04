#! /usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2
sudo npm install -g pm2
#stop any instance of the application running
pm2 stop deploy-test-app
cd deploy-test-app
#install dependencies
bundle install
#start application
pm2 start ./bin/www -n example_app