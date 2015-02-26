#!/bin/sh

echo "single-request-reopen setting."
sudo sh -c "echo 'options single-request-reopen' >> /etc/resolv.conf"

echo "update yum."
sudo yum update -y

echo "install wget."
sudo yum install -y wget git

echo "install rbenv."
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL -l

echo "install ruby 2.0.0-p598"
rbenv install 2.0.0-p598
rbenv global 2.0.0-p598

echo "install ndenv."
git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build
echo 'export PATH=$HOME/.ndenv/bin:$PATH' >> ~/.bash_profile
echo 'eval "$(ndenv init -)"' >> ~/.bash_profile
exec $SHELL -l

echo "install nodejs v0.11.14"
ndenv install v0.11.14
ndenv global v0.11.14

echo "install yeoman."
gem install compass
npm install -g yo bower grunt-cli

echo "install webapp generator."
npm install -g generator-webapp