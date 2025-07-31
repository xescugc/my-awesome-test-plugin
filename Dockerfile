FROM golang:1.24.3 AS builder

WORKDIR /app

COPY go.mod ./
#COPY go.sum .

RUN go mod download

COPY . ./

RUN go build -o /my_app

EXPOSE 8080
CMD ["/my_app"]

#FROM alpine:latest

#WORKDIR /

#COPY --from=builder /my_app /my_app

#EXPOSE 8080
#CMD ["/my_app"]

##ENTRYPOINT ["/my_app"]
#CMD ["/my_app"]
