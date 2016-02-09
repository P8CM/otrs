#!/bin/bash

cp -i $TRAVIS_BUILD_DIR/scripts/tools/travis/Config.pm.travis.mysql $TRAVIS_BUILD_DIR/Kernel/Config.pm
mysql -uroot -e "CREATE DATABASE otrs";
mysql -uroot -e "GRANT ALL PRIVILEGES ON otrs.* TO 'otrs'@'localhost' IDENTIFIED BY 'otrs'";
mysql -uroot -e "FLUSH PRIVILEGES";
