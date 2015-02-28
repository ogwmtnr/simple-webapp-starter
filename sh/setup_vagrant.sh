#!/bin/sh

RUBY_VER='2.2.0'
NODEJS_VER='v0.12.0'

echo '/*-----'
echo ' * install rbenv.'
echo '-----*/'
if [[ ! -e "$HOME/.rbenv" ]]; then
  git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
  echo '' >> $HOME/.bash_profile
  echo '# rbenv' >> $HOME/.bash_profile
  echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> $HOME/.bash_profile
  echo 'eval "$(rbenv init -)"' >> $HOME/.bash_profile
  source $HOME/.bash_profile
else
  echo 'already installed.'
fi

echo '/*-----'
echo " * install ruby $RUBY_VER"
echo '-----*/'
if [[ ! -e "$HOME/.rbenv/versions/$RUBY_VER" ]]; then
  rbenv install $RUBY_VER
  rbenv global $RUBY_VER
else
  echo 'already installed.'
fi

echo '/*-----'
echo ' * install ndenv.'
echo '-----*/'
if [[ ! -e "$HOME/.ndenv" ]]; then
  git clone https://github.com/riywo/ndenv $HOME/.ndenv
  git clone https://github.com/riywo/node-build.git $HOME/.ndenv/plugins/node-build
  echo '' >> $HOME/.bash_profile
  echo '# ndenv' >> $HOME/.bash_profile
  echo 'export PATH=$HOME/.ndenv/bin:$PATH' >> $HOME/.bash_profile
  echo 'eval "$(ndenv init -)"' >> $HOME/.bash_profile
  source $HOME/.bash_profile
else
  echo 'already installed.'
fi

echo '/*-----'
echo " * install nodejs $NODEJS_VER"
echo '-----*/'
if [[ ! -e "$HOME/.ndenv/versions/$NODEJS_VER" ]]; then
  ndenv install $NODEJS_VER
  ndenv global $NODEJS_VER
else
  echo 'already installed.'
fi

echo '/*-----'
echo ' * install yeoman.'
echo '-----*/'
gem install compass
npm install -g yo bower grunt-cli

echo '/*-----'
echo ' * install webapp generator.'
echo '-----*/'
npm install -g generator-webapp

echo '/*-----'
echo ' * success all scripts!'
echo '-----*/'