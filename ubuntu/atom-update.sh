#!/bin/bash
# Update atom from downloaded deb file
rm -f /tmp/atom.deb
curl -L https://atom.io/download/deb > /tmp/atom.deb
dpkg --install /tmp/atom.deb 

echo "***** apm upgrade - to ensure we update all apm packages *****"
apm upgrade --confirm false

atom

exit 0
