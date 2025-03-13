#!/bin/bash

docker exec -it container1 bash
apt update && apt install -y iputils-ping

ping container2
