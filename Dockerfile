From alpine:edge

RUN apk add --update g++ git make nodejs openssh python && rm -rf /var/cache/apk/*
RUN npm install -g git://github.com/mvertes/gcr.git

CMD ["gcr"]
