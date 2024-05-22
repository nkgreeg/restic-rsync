FROM alpine:3.19.1
RUN apk update
RUN apk add --no-cache bash
RUN apk add --no-cache restic
RUN apk add --no-cache rsync
RUN apk add --no-cache jq
RUN apk add --no-cache curl
RUN apk add --no-cache wget
RUN apk add --no-cache openssh
CMD ["/bin/bash"]
