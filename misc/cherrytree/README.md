# CherryTree x Docker

Use [cherrytree](https://www.giuspen.com/cherrytree/) on macOS via Docker.

### Requirements

* [Brew](https://brew.sh/)

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* [Docker](https://docs.docker.com/docker-for-mac/)

```bash
$ brew cask install docker
```

* [XQuartz](https://www.xquartz.org/)

```bash
$ brew cask install xquartz
# RESTART your mac
$ open -a XQuartz
# Preferences -> Security -> enable “Allow connections from network clients”
```

* Internet

### Building

```bash
$ docker build . -t cherrytree  
```

### Getting started

* Copy `cherrytree` launcher

```bash
$ cp cherrytree /usr/local/bin
```

* Launch cherrytree

```bash
$ cherrytree
```

Thanks to [Greg](https://twitter.com/gmolveau) for cleaning the Dockerfile and entrypoint script :)