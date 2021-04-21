FROM golang:1.7.3
WORKDIR /go/src/github.com/alexellis/href-counter/
RUN go get -d -v golang.org/x/net/html  

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
