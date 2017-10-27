#!/bin/bash

sudo apt install -y  rubygems libpq-dev libpcap-dev ruby-dev yard
sudo gems install bundler
sudogpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
cd /tmp
sudo curl -sSL https://get.rvm.io -o rvm.sh
sudo cat /tmp/rvm.sh | bash -s stable --rails
sudo source /usr/local/rvm/scripts/rvm
sudo rvm install "ruby-2.4.2"
sudo bundler
