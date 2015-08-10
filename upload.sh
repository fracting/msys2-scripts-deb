#!/bin/bash

NEW_MSYS2_PACKAGE=`ls ~/msys2-pack*.tar.gz`
expect -c "
  spawn scp ${NEW_MSYS2_PACKAGE} msys2@106.186.28.242:~/Dropbox/Public/msys2/
  expect {
    \"*assword\" {set timeout 300; send \"msys2\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
  }
  expect eof"
