FROM node:11.13.0-alpine

# create destination directory
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

# update and install dependency
RUN apk update && apk upgrade

RUN apk add git

RUN npm install -g yarn
# copy the app, note .dockerignore
COPY . /usr/src/nuxt-app/
RUN yarn install

# set app serving to permissive / assigned
ENV NODE_ENV=production
ENV HOTS=0.0.0.0



# build necessary, even if no static files are needed,
# since it builds the server as well
RUN yarn run build

RUN yarn cache clean

# expose 5000 on container
EXPOSE 3000



# start the app
CMD [ "yarn", "start" ]
