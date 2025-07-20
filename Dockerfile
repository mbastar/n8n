# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to the root user to install packages
USER root

# Install the 'pg' npm package globally
RUN cd /usr/local/lib/node_modules/n8n && npm install pg

# Switch back to the non-root node user for security
USER node
