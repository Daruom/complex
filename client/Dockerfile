from node:alpine as builder
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
copy . .
RUN npm run build

from nginx
EXPOSE 3000
copy ./nginx/default.conf /etc/nginx/conf.d/default.conf
copy --from=builder /app/build /usr/share/nginx/html
