FROM node:lts

WORKDIR /

COPY package.json .
COPY tsconfig.json .

RUN apt-get update

RUN apt-get install -y python

RUN npm install -g npm@latest

RUN npm global -g @medusajs/medusa-cli@latest

COPY . .

RUN npm install

EXPOSE 7000
# ENTRYPOINT ["./develop.sh", "develop"]

# Define the command to run the app
CMD [ "npm", "start" ]