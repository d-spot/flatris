FROM node

RUN apt-get update

RUN mkdir /skillbox
COPY package.json /skillbox
WORKDIR /skillbox

RUN yarn install

COPY . /skillbox

RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000