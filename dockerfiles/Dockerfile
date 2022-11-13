#build stage
FROM golang:1.17-buster
COPY . .
# docker build runs on the same directory with Dockerfile. So below command will fail since
#RUN go get -d -v ./...
ENTRYPOINT [ "go", "build",  "-v", "./" ]