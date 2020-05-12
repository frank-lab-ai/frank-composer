#!/bin/bash

docker-compose down -v --rmi all
sudo rm -r ../franky/logs/ ../frank-ui/logs/
