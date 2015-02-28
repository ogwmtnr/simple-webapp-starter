#!/bin/sh

echo '/*-----'
echo ' * single-request-reopen setting.'
echo '-----*/'
IS_ALREADY=`cat /etc/resolv.conf | grep single-request-reopen`
if [ 0 -eq ${#IS_ALREADY} ]; then
  echo 'options single-request-reopen' >> /etc/resolv.conf
  echo 'setting completed.'
else
  echo 'already doing.'
fi

echo '/*-----'
echo ' * update yum.'
echo '-----*/'
yum update -y

echo '/*-----'
echo ' * install yum.'
echo '-----*/'
yum install -y openssl-devel libffi-devel