FROM ubuntu:14.04

WORKDIR /opt

RUN apt-get -y update
RUN apt-get install -y build-essential git-core cmake libssl-dev libx11-dev libxext-dev libxinerama-dev libxcursor-dev libxdamage-dev libxv-dev libxkbfile-dev libasound2-dev libcups2-dev libxml2 libxml2-dev libxrandr-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libavutil-dev libavcodec-dev libavformat-dev libpcap-dev libreadline-dev

RUN git clone https://github.com/ctxis/RDP-Replay.git

RUN cd /opt/RDP-Replay && make
# DEBUG
RUN ln -s /opt/RDP-Replay/replay/rdp_replay /usr/bin/rdp_replay

ENTRYPOINT ["/bin/bash"]