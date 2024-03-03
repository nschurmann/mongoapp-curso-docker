FROM node:18

RUN mkdir -p /home/app

# Copy and Install app dependencies
COPY package*.json /home/app/
RUN npm install --prefix /home/app

COPY . /home/app

EXPOSE 3000

CMD ["node", "/home/app/index.js"]
