FROM node:lts

RUN npm install -g npm@latest

RUN npm i @medusajs/medusa-cli@latest -g


EXPOSE 7000

run npm run start

# Define the command to run the app
CMD [ "npm", "start" ]