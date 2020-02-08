ARG NODE_VERSION
FROM node:${NODE_VERSION}

USER root
RUN apk add --no-cache jq
COPY releases.sh /bin/
RUN chmod 755 /bin/releases.sh

ENTRYPOINT [ "/bin/releases.sh" ]