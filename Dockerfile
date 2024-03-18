#base or parent image
FROM node:latest 

#Extra metadata
LABEL version="0.0.1"
LABEL maintainer="ogedifavour@gmail.com"

# Set the working directory inside the container
WORKDIR /usr/src/app

#copy package.json and package-lock.json to workdir
COPY package*.json ./

RUN npm install

#copy all file to workdir
COPY . ./

#docker  expose port,
EXPOSE 8080


# CMD ["node", "src/code.js"]
CMD ["npm", "run", "dev"]