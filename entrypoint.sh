#!/bin/sh

mkdir -p /root/.ssh
chmod 0700 /root/.ssh
echo "$ssh_prv_key" > /root/.ssh/jiri_kulik
echo "$ssh_pub_key" > /root/.ssh/jiri_kulik.pub
chmod 600 /root/.ssh/jiri_kulik
chmod 600 /root/.ssh/jiri_kulik.pub
#eval `ssh-agent -s`
#ssh-add ~/.ssh/jiri_kulik

if [ -n "$1" ]
then
    exec "$1"
fi
