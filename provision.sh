#!/bin/bash

echo -e "Installing needed packages"
sudo yum install -y git wget gcc make net-tools vim tar gzip

echo -e "Install Ruby 2.4.1"
#wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
#tar -zxf ruby-2.4.1.tar.gz
#cd ruby-2.4.1/
#./configure --enable-shared --with-newlib --prefix=/
#make
#sudo make install

wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install

sudo /usr/local/bin/ruby-install --system ruby 2.4.1
echo -e "Install jekyll gems"
sudo /usr/local/bin/gem install jekyll bundler jekyll-coffeescript jekyll-paginate jekyll-mentions jekyll-theme-cayman jekyll-feed jekyll-redirect-from jemoji jekyll-sitemap jekyll-categories


