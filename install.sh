#!/bin/sh

if [ ! -f /opt/bin/isaaxd ]; then
  cd /tmp
  wget https://isaax-daemon.s3-us-west-2.amazonaws.com/0.1.3/isaaxd_linux_arm.tar.gz
  tar zxvf isaaxd_linux_arm.tar.gz
  sudo mv isaaxd_linux_arm/isaaxd /opt/bin/
  rm -rf isaaxd_linux_arm*
fi
sudo /opt/bin/isaaxd install || true

# Replace the init.d script for isaaxd
wget https://raw.githubusercontent.com/ailispaw/isaax-barge/master/isaaxd
chmod +x isaaxd
sudo mv isaaxd /etc/init.d/isaaxd

# Install dependencies of isaaxd
sudo pkg install git
sudo pkg install nodejs
