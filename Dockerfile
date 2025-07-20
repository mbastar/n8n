FROM n8nio/n8n

# Install pg module in the task runner context
RUN cd /usr/local/lib/node_modules/n8n && npm install pg

# Ensure task runner has access to the module
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pg
ENV N8N_RUNNERS_ENABLED=true

EXPOSE 5678
