#!/bin/sh

hugo --config config.yaml,config-odn.yaml --minify

./tidy.sh

lftp -f odn.lftp
