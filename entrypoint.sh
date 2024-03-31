#!/bin/bash
# Generate host keys if not present
/usr/bin/ssh-keygen -A

# Start SSH service
/usr/sbin/sshd -D

