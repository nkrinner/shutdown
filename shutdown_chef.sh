#!/bin/bash
for node_hostname in $(crowbar machines list); do
  echo -n "Stoping chef-client in $node_hostname..."
  ssh $node_hostname rcchef-client stop
  if [[ $? == "0" ]]; then
    echo "done"
  else
    echo "ERROR"
  fi
done
