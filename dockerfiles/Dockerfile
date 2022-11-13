#build stage
FROM golang:1.17-buster
COPY . .
RUN go get -d -v ./...
ENTRYPOINT [ "go", "build",  "-v", "./" ]