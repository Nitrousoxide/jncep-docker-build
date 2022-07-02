#!/bin/bash
# Put your username and password in this file:
#. /scripts/credentials
# in the following format: (without the # in front)
# EMAIL=you@example.tld
# PASSWORD='password'

# This will update all of the series you are tracking and download anything new
# that's posted since the last time you updated. You can put -d as an argument
# to get debugging output if there are weird errors. The main point of this script
# is to avoid you having to type your username and password on the command
# line every time you run "jncep update". It also keeps your jncep up-to-date.

# edit the cd line at the bottom to point at where you want them downloaded to,
# and make sure jncep and pip are your $PATH

# the following few lines make sure that both pip and jncep are up-to-date
#pip -qq install -U pip
#oldver=`pip list | grep jncep | xargs echo`
#pip -qq install -U jncep
#newver=`pip list | grep jncep | xargs echo`
#if [ "$oldver" != "$newver" ]; then
#    echo "Upgraded $oldver to $newver"
#else
#    echo "Using $oldver"
#fi

# and here's the meat of the script.
#cd /Pre-pubs
jncep $@ update -w #-v --email "$EMAIL" --password "$PASSWORD" 
sleep 5
jncep $@ track sync --delete #--email "$EMAIL" --password "$PASSWORD"