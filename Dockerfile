FROM buildkite/plugin-tester as base

RUN adduser -S bash-tutorial
USER bash-tutorial

WORKDIR /home/bash-tutorial
CMD []
