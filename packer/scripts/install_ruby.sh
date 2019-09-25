#!/bin/bash
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
apt update 2>/dev/null | grep packages | cut -d '.' -f 1
apt install -y -q ruby-full ruby-bundler build-essential
