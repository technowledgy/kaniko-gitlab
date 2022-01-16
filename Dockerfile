FROM gcr.io/kaniko-project/executor:v1.7.0-debug

LABEL author Wolfgang Walther
LABEL maintainer kaniko-gitlab@technowledgy.de
LABEL license MIT

COPY tools /usr/local/bin

ENTRYPOINT [""]
