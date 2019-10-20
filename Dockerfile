FROM golang:alpine

RUN apk update && apk add git

RUN go get github.com/alash3al/redix

EXPOSE 6390 7090

ENTRYPOINT ["redix"]
CMD [ "-resp-addr", ":6390" ]

WORKDIR /root/
