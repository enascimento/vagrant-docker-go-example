# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD . $GOPATH/src/github.com/sinangedik/vagrant-docker-go-example

#Build
RUN go get github.com/tools/godep &&\
    cd $GOPATH/src/github.com/sinangedik/vagrant-docker-go-example &&\
    godep go build

#Give the ownership to daemon
RUN ["chown", "-R", "daemon", "."]
USER daemon
#Set the port
ENV PORT 3000
# Document that the service listens on port 8080.
EXPOSE 3000
CMD ["/go/src/github.com/sinangedik/vagrant-docker-go-example/vagrant-docker-go-example"]

