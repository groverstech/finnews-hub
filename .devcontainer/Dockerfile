FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive     && apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable /opt/flutter     && echo 'export PATH="/opt/flutter/bin:$PATH"' >> /etc/bash.bashrc

ENV PATH="/opt/flutter/bin:$PATH"
FROM mcr.microsoft.com/devcontainers/base:ubuntu
 
# Required system packages
RUN apt-get update && apt-get install -y \
  curl git unzip xz-utils zip libglu1-mesa
 
# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable /opt/flutter \
&& echo 'export PATH="/opt/flutter/bin:$PATH"' >> /etc/bash.bashrc
 
ENV PATH="/opt/flutter/bin:$PATH"
