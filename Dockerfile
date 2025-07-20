FROM n8nio/n8n

# Install pg module globally
RUN npm install -g pg

# Set environment variables for task runner
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pg
ENV N8N_RUNNERS_ENABLED=true

EXPOSE 5678
