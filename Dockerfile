FROM golang:1.16 AS builder
RUN mkdir /app
WORKDIR /app
ADD . .

RUN bash -c "./gobuild" \
    bash -c "./init.sh"

EXPOSE 8067
EXPOSE 8071

ENTRYPOINT ["/app/webcall"]
