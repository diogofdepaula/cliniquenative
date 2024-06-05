FROM node:20-buster-slim

EXPOSE 8081 19006 19001 19002

RUN mkdir /usr/app && chown root:root /usr/app
WORKDIR /usr/app/cliniquenative
CMD ["npx","expo", "start"]