#!/bin/sh

hugo --config config.yaml --minify

./tidy.sh
