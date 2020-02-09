FROM node:8.17-alpine
WORKDIR /usr/app
COPY app /usr/app/
RUN npm install
RUN npm audit fix -f
CMD ["npm","start"]
