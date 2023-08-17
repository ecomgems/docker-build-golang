FROM golang:latest

ENV GO111MODULE=on

RUN go install golang.org/x/tools/cmd/godoc@latest && \
    go install golang.org/x/lint/golint@latest

CMD ["bash"]
