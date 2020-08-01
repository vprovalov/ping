 #!/bin/bash -xe
source /home/ec2-user/.bash_profile
cd /home/ec2-user/app/release/bin
./server & echo $! > /tmp/server.pid