#!/bin/bash
for node in $(crowbar machines list); do
  scp $1 root@$node:~
  if [[ $? == "0" ]]; then
    echo "done"
  else
    echo "ERROR"
  fi
done
