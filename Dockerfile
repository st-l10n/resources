FROM ubuntu:latest

ENV STEAMCMD_PATH="/steamcmd"
ENV STEAMCMD="$STEAMCMD_PATH/steamcmd.sh"

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install mailutils postfix curl wget file bzip2  \
  gzip unzip bsdmainutils python util-linux ca-certificates \
  binutils bc jq tmux lib32gcc1 libstdc++6 libstdc++6:i386  \
  libcurl4-gnutls-dev:i386 -y
RUN mkdir -p "$STEAMCMD_PATH" && \
    curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | \
    tar xz -C "$STEAMCMD_PATH" && \
    "$STEAMCMD_PATH/steamcmd.sh" +login anonymous +quit

ENTRYPOINT ["$STEAMCMD"]
