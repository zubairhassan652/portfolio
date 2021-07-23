FROM mhart/alpine-node
WORKDIR /app
COPY /buildenv .
COPY /build .
RUN yarn
CMD ["yarn", "p"]