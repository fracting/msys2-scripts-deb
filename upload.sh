#!/bin/bash

expect -c "
  spawn scp *_v1.tar.gz msys2@106.186.28.242:~/Dropbox/Public/msys2/
  expect {
    \"*assword\" {set timeout 300; send \"msys2\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
  }
  expect eof"
