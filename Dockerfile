FROM golang:1.24.3 AS builder

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . ./

RUN go build -o /my_app

EXPOSE 8080
CMD ["/my_app"]
