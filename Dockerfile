FROM n8nio/n8n

# Install pg module globally
RUN npm install -g pg

# Disable task runner to use legacy execution
ENV N8N_RUNNERS_ENABLED=false

EXPOSE 5678
