FROM node:latest
ADD app-unhealty.js /app-unhealty.js
ENTRYPOINT ["node","app-unhealty.js"]