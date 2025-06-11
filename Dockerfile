# Stage: Run
FROM node:18-alpine

WORKDIR /app

# Copy package files first untuk optimalisasi layer caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy semua file lainnya
COPY . .

# Expose port dan jalankan aplikasi
EXPOSE 3000
CMD ["node", "src/server.js"]
