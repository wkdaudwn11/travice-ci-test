# Build environment
# FROM node:12.8.0 as builder
# WORKDIR /app
# ENV PATH /app/node_modules/.bin:$PATH
# COPY package.json /app/package.json 
# RUN npm install --silent
# RUN npm install react-scripts@3.4.0 -g --silent
# RUN rm -r node_modules/terser
# RUN npm install terser@3.14.1 --save-dev
# COPY . .
# RUN npm run build

# Temp Build environment
FROM node:12.8.0 as builder
WORKDIR /app
COPY ./dist ./app/dist
# COPY ./build /app/build

# Production environment
FROM nginx:1.16.0-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
RUN rm -rf /etc/nginx/conf.d
COPY conf /etc/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]