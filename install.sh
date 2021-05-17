#!/bin/bash

/usr/bin/apt-get update
/usr/bin/apt-get install cmake liblog4cpp5-dev libv4l-dev git -y
/usr/bin/git clone https://github.com/emircankavas/v4l2rtspserver /home/ubuntu/v4l2rtspserver
/bin/chmod +x /home/ubuntu/v4l2rtspserver/v4l2rtspserver
/bin/mv /home/ubuntu/v4l2rtspserver/v4l2rtspserver.service /lib/systemd/system/v4l2rtspserver.service
/bin/systemctl enable v4l2rtspserver.service
/bin/systemctl start v4l2rtspserver.service