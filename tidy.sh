#!/bin/sh

# skip *.xml
find public -name '*.html' |
xargs tidy -m

# both *.html and *.xml
find public -name '*.html' -o -name '*.xml' |
xargs perl -CIO -Mutf8 -Mopen=:utf8 -0777 -pi -le 's,([、。])[\n ]([^\n ]),$1$2,gmos'
