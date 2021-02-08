FROM woahbase/alpine-glibc:latest
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*

EXPOSE 9000

COPY todo-app-go bin/

WORKDIR bin

RUN chmod +x todo-app-go

CMD ["todo-app-go"]

