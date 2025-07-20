FROM n8nio/n8n:latest

USER root

# Create and install in the home directory
RUN cd /home/node && npm install pg

# Ensure proper ownership
RUN chown -R node:node /home/node/node_modules

USER node
