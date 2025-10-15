FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application code
COPY server.js ./
COPY public/ ./public/

# Create non-root user
RUN addgroup -g 1001 -S nodejs && \
    adduser -S todoapp -u 1001 -G nodejs

# Change to non-root user
USER todoapp

EXPOSE 3000

ENV NODE_ENV=production
ENV PORT=3000

CMD ["node", "server.js"]