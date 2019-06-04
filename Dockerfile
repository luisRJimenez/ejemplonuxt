FROM node:latest
RUN mkdir /dist
WORKDIR /dist
RUN npm install
EXPOSE 3000
CMD generate
