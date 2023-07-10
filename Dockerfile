FROM node:18
RUN apt update
RUN apt install curl -y
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install nodejs -y
RUN apt install build-essential -y
WORKDIR /home/app
COPY . /home/app
RUN npm i react-redux
RUN npm i react-router-dom 
RUN npm i react-components
RUN npm i @reduxjs/toolkit
RUN npm i react-infinite-scroll-component
RUN npm i react-select
RUN npm install sass
RUN npm install react-icons --save
RUN npm i dayjs
RUN npm i axios
RUN npm i react-player
RUN npm audit 
RUN npm audit fix
RUN npm install react react-dom --save
RUN npm install
RUN npm i vite
RUN npm i @vitejs/plugin-react
EXPOSE 5173
CMD ["npm", "run" , "dev"]