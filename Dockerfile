FROM mhart/alpine-node
WORKDIR /app
COPY /buildenv .
COPY /build .
RUN yarn global add serve
CMD ["serve", "-s", ".", "-l", "tcp://0.0.0.0:8080"]