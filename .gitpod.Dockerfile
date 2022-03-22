FROM gitpod/workspace-full

ENV RETRIGGER=1

ENV BUILDKIT_VERSION=0.10.0
ENV BUILDKIT_FILENAME=buildkit-v${BUILDKIT_VERSION}.linux-amd64.tar.gz

USER root

# Install dazzle, buildkit and pre-commit
RUN curl -sSL https://github.com/moby/buildkit/releases/download/v${BUILDKIT_VERSION}/${BUILDKIT_FILENAME} | tar -xvz -C /usr \
    && curl -sSL https://github.com/gitpod-io/dazzle/releases/download/v0.1.10/dazzle_0.1.10_Linux_x86_64.tar.gz | tar -xvz -C /usr/local/bin \
    && curl -sSL https://github.com/mvdan/sh/releases/download/v3.4.2/shfmt_v3.4.2_linux_amd64 -o /usr/bin/shfmt \
    && chmod +x /usr/bin/shfmt \
    && install-packages shellcheck \
    && sudo pip3 install pre-commit \
    && curl -sSL https://github.com/mikefarah/yq/releases/download/v4.22.1/yq_linux_amd64 -o /usr/bin/yq && chmod +x /usr/bin/yq