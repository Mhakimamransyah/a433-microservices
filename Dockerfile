# Menggunakan base image nodejs alpine
FROM node:14-alpine

# set working directory di app
WORKDIR /app

# memindahkan seluruh proyek ke working directory
COPY . .

# aplikasi berjalan dalam production mode
ENV NODE_ENV='production'

# install dependencies
RUN npm install --production --unsafe-perm

# buka port 3001
EXPOSE 3001

# menjalankan aplikasi
CMD ["npm", "start"]