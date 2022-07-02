#!/bin/bash

# Put your username and password in this file:
#. /scripts/credentials
# in the following format: (without the # in front)
# EMAIL=you@example.tld
# PASSWORD='password'

# This will download everything that exists in the series you point it at, assuming
# they haven't expired, consolidating parts by volume into single epubs if
# possible, then add it to your tracking list so future updates can be
# downloaded as they come out

# edit the cd line to point at where you want them downloaded to, and make sure
# jncep is in your $PATH

#cd /Pre-pubs
jncep epub --byvolume --parts : ${1}
jncep track add ${1}
