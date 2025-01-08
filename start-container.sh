#!/bin/sh

echo "*********************"
echo "creating devcontainer"
echo "*********************"
devpod up .

res=$(echo $?)
if [ $res -ne 0 ]; then
  echo "Build failed; check logs for details"
  exit 2
fi

echo "**************************"
echo "connecting to devcontainer"
echo "**************************"
devpod ssh .
