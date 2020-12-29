FROM node:alpine as build-phase
WORKDIR /app
COPY package.json .
RUN npm install
COPY ./public ./public
COPY ./src ./src
# COPY . .
RUN npm run build

FROM nginx:alpine as run-phase
COPY --from=build-phase /app/build /usr/share/nginx/html
