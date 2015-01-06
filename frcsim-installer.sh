#!/bin/bash

# This is a modified FRCSim installer to get the dependencies for Travis CI

# Add Gazebo Repository and Key
sudo echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -

# Add FRCSim Repository and Key
sudo echo "deb http://users.wpi.edu/~adhenning/frcsim `lsb_release -cs` main" > /etc/apt/sources.list.d/frcsim-latest.list
wget users.wpi.edu/~adhenning/frcsim.key -O - | sudo apt-key add -

# Update and install frcsim and its dependencies
sudo apt-get update
sudo apt-get install -y frcsim

