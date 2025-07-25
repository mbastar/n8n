# Dockerfile
FROM n8nio/n8n

# Switch to root to install packages
USER root

# Install build dependencies
RUN apk add --no-cache python3 make g++

# Install pg as node user
USER node
RUN cd /home/node && npm install pg

# Set environment with explicit task runner disable
USER root
ENV NODE_PATH="/home/node/node_modules:$NODE_PATH"
ENV N8N_RUNNERS_ENABLED=false
ENV N8N_RUNNERS_DISABLED=true
ENV N8N_DISABLE_TASK_RUNNERS=true
ENV NODE_FUNCTION_ALLOW_BUILTIN_MODULES=*
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pg

USER node
