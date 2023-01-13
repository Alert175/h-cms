FROM golang:1.19.2-alpine3.15
RUN mkdir /app
RUN mkdir /app/logs
ADD . /app
WORKDIR /app
RUN go build -o . main.go
CMD ["/app/main"]