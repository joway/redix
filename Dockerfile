FROM golang:alpine

RUN apk update && apk add git build-base

RUN go get github.com/alash3al/redix

EXPOSE 6382 7090

ENTRYPOINT ["redix"]
CMD [ "-resp-addr", ":6382" ]

WORKDIR /root/
