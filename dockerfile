FROM golang:1.22 AS base
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
EXPOSE 8080
RUN go build -o main .
CMD [ "./main" ]
