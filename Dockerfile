FROM node
# replace this with your application's default port
RUN npm install
CMD ["npm", "build", "start", "generate"]
EXPOSE 8080
