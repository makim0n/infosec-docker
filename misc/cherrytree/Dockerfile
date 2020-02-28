FROM debian:stable-slim

RUN apt-get update && \
	apt-get -y install cherrytree && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/* 

RUN useradd --create-home --shell /bin/bash cherry

USER cherry

ENTRYPOINT ["cherrytree"]