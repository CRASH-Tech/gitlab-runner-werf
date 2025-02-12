FROM ubuntu:22.04
USER root
RUN apt update; apt install -y git curl wget bash jq fuse-overlayfs
COPY bin/* /usr/local/bin/
RUN wget https://dl.k8s.io/release/v1.28.4/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl
RUN wget https://tuf.werf.io/targets/releases/1.2.333/linux-amd64/bin/werf -O /usr/local/bin/werf
RUN wget https://get.helm.sh/helm-v3.17.0-linux-amd64.tar.gz -O /tmp/helm-v3.17.0-linux-amd64.tar.gz
RUN tar xf /tmp/helm-v3.17.0-linux-amd64.tar.gz --strip-components=1 -C /usr/local/bin/ linux-amd64/helm
RUN chmod -R a+x /usr/local/bin/*
