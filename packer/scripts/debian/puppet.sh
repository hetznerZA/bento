#!/bin/bash -eux

cleanup() {
  rm -f puppetlabs-release-wheezy.deb
}

trap cleanup EXIT

wget -q https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
dpkg -i puppetlabs-release-wheezy.deb
apt-get update
apt-get install -y puppet curl ruby-deep-merge
