#!/bin/sh

hugo --config config.yaml,config-odn.yaml

./tidy.sh

lftp -f odn.lftp
