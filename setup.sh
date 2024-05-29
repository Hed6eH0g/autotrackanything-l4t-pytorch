#!/bin/bash

export DISPLAY=:1
xhost +
sudo docker build -t autotrackanything .

