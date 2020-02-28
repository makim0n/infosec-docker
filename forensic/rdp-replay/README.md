# RDP-Replay

Little tool made by ContextIS to replay RDP data from PCAP (needs the private key).
RDP-Replay GitHub: https://github.com/ctxis/RDP-Replay

## Building

```bash
$ sudo docker build . -t rdp-replay
```

## Installation

```bash
$ sudo cp run.sh /usr/local/bin/rdp_replay
```

## How it works

```bash
$ cat run.sh
#!/bin/bash

sudo docker run --rm -v ${PWD}:/opt/usr_land --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -ti rdp_replay
```

I'm binding `.Xauthority` with the host, give host capabilities and set DISPLAY environment variable. According to: http://nelkinda.com/blog/xeyes-in-docker/
