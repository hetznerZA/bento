#!/bin/bash -eux

apt-get -y autoremove
apt-get -y autoclean
find /var/lib/apt/lists \! -name lock -type f -delete
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -f /tmp/chef*deb
