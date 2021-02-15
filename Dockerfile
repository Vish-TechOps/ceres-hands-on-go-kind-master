FROM golang:1.14.3-alpine

EXPOSE 9000

COPY ceres-hands-on-go-kind-master bin/

WORKDIR bin

RUN chmod +x ceres-hands-on-go-kind-master

CMD ["tail", "-f", "/dev/null"]
