FROM mhart/alpine-node
ENV PORT=8080
WORKDIR /app
RUN yarn global add serve
# RUN serve -s . -l tcp://0.0.0.0:$PORT

# CMD ["serve", "-s", "build", "-l", "tcp://0.0.0.0:$PORT"]

COPY . .
RUN yarn
RUN yarn build
CMD serve -s build -l tcp://0.0.0.0:$PORT