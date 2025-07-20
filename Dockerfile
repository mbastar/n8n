FROM n8nio/n8n:latest

USER root

# Install pg in a separate location
RUN mkdir -p /opt/custom-modules && cd /opt/custom-modules && npm install pg

# Create symlink to make it accessible
RUN ln -s /opt/custom-modules/node_modules/pg /usr/local/lib/node_modules/pg

# Fix permissions
RUN chown -R node:node /opt/custom-modules

USER node
