FROM gitlab/gitlab-runner:ubuntu-v15.0.0
USER root
RUN apt-get update; apt-get install -y curl wget bash jq fuse-overlayfs
COPY bin/* /usr/local/bin/
RUN wget https://dl.k8s.io/release/v1.28.4/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl
RUN wget https://tuf.werf.io/targets/releases/1.2.270/linux-amd64/bin/werf -O /usr/local/bin/werf
RUN chmod -R a+x /usr/local/bin/*
