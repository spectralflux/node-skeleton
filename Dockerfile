FROM node:10 as build
WORKDIR /usr/src/app
COPY package*.json server.js ./ 
RUN npm install

FROM gcr.io/distroless/nodejs@sha256:e658f017dbb79f66a1d6b0a57baa15df101536e6d9d70181f1b0ac2151b2cab0
COPY --from=build /usr/src/app /
EXPOSE 300
CMD [ "server.js" ]