FROM n8nio/n8n:latest

# Switch to root user
USER root

# Install pg package globally (this avoids workspace conflicts)
RUN npm install -g pg

# Switch back to node user for security
USER node
