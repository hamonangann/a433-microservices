# Menggunakan base image Node.js versi 14.
FROM node:14-alpine

# Working directory untuk container adalah /app
WORKDIR /app

# Salin seluruh source code ke working directory di container
COPY . .

# Setup environment variable
ENV PORT=3000 AMQP_URL="amqp://localhost:5672"

# Install dependensi
RUN npm install --production --unsafe-perm

# Port yang digunakan oleh aplikasi
EXPOSE 3000

# Jalankan server
CMD ["npm", "start"]