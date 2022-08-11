#!/bin/sh

h=tky3.daijimaps.com
d=/var/www/daijimaps.com/public_html/Customers/Yosuien/www/

hugo --config config.yaml,config-tky3.yaml --minify

./tidy.sh

rsync -avz public/ ${h}:${d}
