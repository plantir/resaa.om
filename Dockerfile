FROM node:11

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
ADD . .
RUN yarn install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
RUN yarn build
CMD [ "yarn", "start" ]
EXPOSE 3000
