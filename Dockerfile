# Menggunakan base image nodejs alpine
FROM node:14-alpine

# set working directory di app
WORKDIR /app

# memindahkan seluruh proyek ke working directory
COPY . .

# aplikasi berjalan dalam production mode
ENV NODE_ENV='production'

# menggunakan container bernama item-dbsebagai database host
ENV DB_HOST='item-db'

# install dependencies
RUN npm install --production --unsafe-perm && npm run build

# buka port 8080
EXPOSE 8080

# menjalankan aplikasi
CMD ["npm", "start"]