FROM node:18-alpine3.16

WORKDIR /root

COPY src/ .

RUN npm i && \
    chmod +x ./run.sh

CMD ["/bin/sh", "-c", "./run.sh"]
