 #!/bin/bash -xe
source /home/ec2-user/.bash_profile
[ -f "/home/ec2-user/app/server.pid" ] && \
kill `cat /home/ec2-user/app/server.pid` && \
rm /home/ec2-user/app/server.pid