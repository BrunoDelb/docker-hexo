FROM node:12.16.2-slim

ENV HEXO_PORT=4000
EXPOSE ${HEXO_SERVER_PORT}

RUN apt-get update && \
    apt-get install git -y
RUN npm install hexo-cli -g \
    npm install hexo-generator-search --save \
    npm install hexo-generator-sitemap --save \
    npm install hexo-prism-plugin --save \
    npm install Plasma-Paris/hexo-slack-notify --save \
    npm install hexo-deployer-s3 -g \
    npm install hexo-admin --save \
    npm install hexo-deployer-git --save \
    npm install hexo-browsersync --save \
    npm install -g cross-env \
    npm install hexo-blog-encrypt --save \
    npm install hexo-tag-cplayer --save
WORKDIR /app
CMD hexo server -d -p ${HEXO_PORT}
