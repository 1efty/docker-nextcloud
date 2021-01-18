FROM alpine

RUN apk update

RUN apk add --no-cache ca-certificates && \
    update-ca-certificates

RUN apk add --no-cache postfix

EXPOSE 25 465 587

ENTRYPOINT [ "postfix", "start-fg" ]
