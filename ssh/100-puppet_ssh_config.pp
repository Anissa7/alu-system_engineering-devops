#!/usr/bin/env bash
# Does not use any password 

file [ 'etc/ssh/ssh_config':
       ensure =>present
content =>"

       #SSH client configuration
       host*
       Identityfile ~/.ssh/school
       PasswordAuthentication no
       ",

] 
