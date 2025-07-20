FROM n8nio/n8n

# Install pg module globally so task runner can access it
RUN npm install -g pg

# Alternative: Install in the task runner's node_modules
RUN cd /usr/local/lib/node_modules/n8n/node_modules/@n8n/task-runner && npm install pg
