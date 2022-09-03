FROM golang:1.18-buster

WORKDIR /go/src/github.com/gdrayudu/arc-k8srunner-wf

COPY ./ /go/src/github.com/gdrayudu/arc-k8srunner-wf
RUN go build main.go

ENTRYPOINT ["/home/appuser/entrypoint.sh"]

