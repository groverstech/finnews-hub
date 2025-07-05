FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install system packages
RUN apt-get update && apt-get install -y \
    curl git unzip xz-utils zip libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable /opt/flutter

# Add Flutter & Dart to PATH
ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:${PATH}"
