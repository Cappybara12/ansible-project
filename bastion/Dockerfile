# Use a base image (e.g., Ubuntu, Debian) for the Bastion container
FROM debian:bullseye

# Install SSH server and any other required packages
RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy SSH configuration file into the container
COPY sshd_config /etc/ssh/sshd_config

# Expose SSH port (default is 22)
EXPOSE 22

# Start SSH service when the container starts
CMD ["/usr/sbin/sshd", "-D"]

