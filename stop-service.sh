 #!/bin/bash -xe
source /home/ec2-user/.bash_profile
[ -f "/tmp/server.pid" ] && \
kill `cat /tmp/server.pid` && \
rm /tmp/server.pid