FROM golang:1.18.8-alpine3.16
RUN apk add git 

COPY . /home/src
WORKDIR /home/src
RUN go build -o /bin/action ./

ENTRYPOINT [ "/bin/action" ]