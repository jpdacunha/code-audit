#!/bin/sh 
echo "Adjusting system settings ..."
sudo sysctl -w vm.max_map_count=262144
sudo systemctl restart docker
sleep 10
echo "Done."

echo "Adjusting permission level ..."
sudo chmod -R 777 ./sonar-server/logs
sudo chmod -R 777 ./sonar-server/data
sudo chmod -R 777 ./sonar-server/extensions
echo "Done."

echo "Creating network ..."
sudo docker network create "sonarnet"
echo "Done."