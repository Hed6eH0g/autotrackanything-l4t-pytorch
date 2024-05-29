#!/bin/bash

xhost +
export DISPLAY=:1
sudo docker build -t autotrackanything .

