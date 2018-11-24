#!/bin/sh

#Setup ssh folder
mkdir -p /root/.ssh
chmod 0700 /root/.ssh

#Add ssh keys from command line arguments (used for bitbucket)
echo "$ssh_prv_key" > /root/.ssh/jiri_kulik
echo "$ssh_pub_key" > /root/.ssh/jiri_kulik.pub
chmod 600 /root/.ssh/jiri_kulik
chmod 600 /root/.ssh/jiri_kulik.pub

#Register the ssh keys
eval $(ssh-agent -s)
ssh-add ~/.ssh/jiri_kulik

#Run a command line argument to the entrypoint.sh
#Used to run nomachine script
if [ -n "$1" ]
then
    exec "$1"
fi
