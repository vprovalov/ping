 #!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/bin
./server & echo $! > /home/ec2-user/app/server.pid