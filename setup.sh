#!/bin/bash
current_dir=$PWD

if [ ! -d "$current_dir/backend-service" ]; then
  git clone https://github.com/dennisseidel/backend-service-schedulebot.git $current_dir/backend-service
else
  cd $current_dir/backend-service/ && git pull 
fi

if [ ! -d "$current_dir/auth-service" ]; then
  git clone https://github.com/dennisseidel/auth-service.git $current_dir/auth-service
else
  cd $current_dir/auth-service/ && git pull 
fi

if [ ! -d "$current_dir/web-interface" ]; then
  git clone https://github.com/dennisseidel/web-interface-schedulebot.git $current_dir/web-interface
else
  cd $current_dir/web-interface/ && git pull 
fi

if [ ! -d "$current_dir/employee-mock-service" ]; then
  git clone https://github.com/dennisseidel/employee-mock-service-schedulebot.git $current_dir/employee-mock-service
else
  cd $current_dir/employee-mock-service/ && git pull 
fi