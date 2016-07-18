FROM armv7/armhf-ubuntu:16.04

# Install OpenJDK 8
RUN apt-get update && \
    apt-get install -y apt-utils openjdk-8-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
