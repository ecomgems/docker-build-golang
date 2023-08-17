FROM golang:latest

ENV GO111MODULE=on

RUN go install golang.org/x/tools/cmd/godoc@latest && \
    go install golang.org/x/lint/golint@latest && \
    go install github.com/go-task/task/v3/cmd/task@latest && \
    go get github.com/GeertJohan/fgt && \
    go install github.com/GeertJohan/fgt

CMD ["bash"]
