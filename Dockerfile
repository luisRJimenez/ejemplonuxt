FROM node:latest
RUN mkdir /dist
WORKDIR /dist
ADD ejemplonuxt/package.json /dist/package.json
RUN npm install
EXPOSE 3000
CMD generate
