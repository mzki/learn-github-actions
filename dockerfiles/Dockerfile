#build stage
FROM golang:1.17-buster
RUN apk add --no-cache git
COPY . .
RUN go get -d -v ./...
ENTRYPOINT [ "go", "build",  "-v", "./" ]