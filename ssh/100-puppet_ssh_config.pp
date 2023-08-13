#!/usr/bin/env bash
# We use puppet to make changes in our configuration file

file [ 'etc/ssh/ssh_config':
       ensure =>present
content =>"

       #SSH client configuration
       host*
       Identityfile ~/.ssh/school
       PasswordAuthentication no
       ",

] 
