FROM       cyberdojo/csharp-2.10.8.1
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN apt-get install -y monodevelop-nunit
RUN apt-get install -y nunit-console

# After much searching I came across this
#   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=638337
# which hinted at the reason NUnit was not running as the
# non-root user www-data (see lib/DockerTestRunner.rb)
# The reason was that user www-data did not have HOME !!!

RUN usermod -m -d /home/www-data www-data
RUN mkdir /home/www-data
RUN chgrp www-data /home/www-data
RUN chown www-data /home/www-data
ENV HOME /home/www-data