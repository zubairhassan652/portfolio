FROM mhart/alpine-node
WORKDIR /app
RUN yarn
RUN yarn build
COPY /buildenv .
COPY /build .
RUN yarn global add serve

# CMD ["serve", "-s", ".", "-l", "tcp://0.0.0.0:8080"]