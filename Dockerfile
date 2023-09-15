FROM golang:1.21.0-bullseye AS dev
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o ./binary ./cmd/locust
CMD ["./binary"]
