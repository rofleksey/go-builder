FROM catthehacker/ubuntu:act-latest

# Go
RUN curl -s https://storage.googleapis.com/golang/go1.20.6.linux-amd64.tar.gz| tar -v -C /usr/local -xz
ENV PATH $PATH:/usr/local/go/bin

# golangci-lint
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.1
ENV PATH $PATH:/root/go/bin/
