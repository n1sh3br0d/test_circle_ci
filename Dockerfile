FROM node:8



WORKDIR /usr/src/app



COPY package.json .

COPY package-lock.json .



RUN npm i



COPY . .



#RUN chmod +x config.test.sh && \

#    ./config.test.sh && \

#    npm test && \

#    rm config.json



CMD ["npm", "run", "start"]


