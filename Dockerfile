# Use a base image with SSH server installed
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y openssh-server

# Copy SSH configuration files
COPY sshd_config /etc/ssh/sshd_config
COPY entrypoint.sh /entrypoint.sh

# Expose SSH port
EXPOSE 22

# Set entrypoint script
ENTRYPOINT ["/entrypoint.sh"]

# Start SSH service
CMD ["/usr/sbin/sshd", "-D"]

