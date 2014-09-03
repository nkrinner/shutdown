#!/bin/bash

for node in $(crowbar machines list); do
  echo "Shutting down node #node"
  ssh #node halt -p
  if [[ $? == "0" ]];  then
    echo "done"
  else 
    echo "ERROR"
  fi
done
