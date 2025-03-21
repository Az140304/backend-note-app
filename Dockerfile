# Gunakan Node.js sebagai base image
FROM node:18

# Set working directory di dalam container
WORKDIR /app

# Copy file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua kode aplikasi ke dalam container
COPY . .

# Expose port 5000
EXPOSE 5000

# Jalankan aplikasi
CMD ["node", "index.js"]
