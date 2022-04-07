ARG tag=latest
# shellcheck disable=SC2154
FROM ghcr.io/sra405/homebrew:"${tag}"

USER root
RUN apt-get update \
#   && apt-get install -y --no-install-recommends \
#     bzip2 \
  && rm -rf /var/lib/apt/lists/* \
  && localedef -i en_US -f UTF-8 en_US.UTF-8

USER linuxbrew
WORKDIR /home/linuxbrew

# asdf
ENV PATH="${PATH}:/home/linuxbrew/.asdf/shims:/home/linuxbrew/.asdf/bin"
# asdf plugins
RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
