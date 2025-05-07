#!/bin/bash

config_folder=~/printer_data/config


push_config(){
  cd $config_folder
  git pull
  git add .
  current_date=$(date +"%Y-%m-%d %T")
  git commit -m "Autocommit from $current_date" -m "$m1" -m "$m2" -m "$m3" -m "$m4"
  git push
}

push_config

echo M117 Config backed up > /tmp/printer