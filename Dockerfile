FROM mhart/alpine-node
ENV PORT=8080
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build
RUN yarn global add serve

CMD ["serve", "-s", "build", "-l", "tcp://0.0.0.0:${PORT}}"]