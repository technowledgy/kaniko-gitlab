FROM gcr.io/kaniko-project/executor:v1.9.2-debug

LABEL author Wolfgang Walther
LABEL maintainer opensource@technowledgy.de
LABEL license MIT

COPY tools /usr/local/bin

ENTRYPOINT [""]
