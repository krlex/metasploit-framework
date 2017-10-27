#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y  curl rubygems libpq-dev libpcap-dev ruby-dev yard
sudo gem install bundler
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
cd /tmp
sudo curl -sSL https://get.rvm.io -o rvm.sh
sudo cat /tmp/rvm.sh | bash -s stable --rails
source /usr/local/rvm/scripts/rvm
rvm install "ruby-2.4.2"
bundler install
echo "if stop and say 'Could not locate Gemfile' do manual command 'bundler install'"
yard config --gem-install-yri
