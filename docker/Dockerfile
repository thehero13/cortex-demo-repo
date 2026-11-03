FROM ubuntu:latest
USER root
RUN apt-get update && apt-get install -y curl sudo
ADD http://example.com/install.sh /tmp/install.sh
RUN chmod 777 /tmp/install.sh
EXPOSE 22
CMD ["/bin/bash"]
