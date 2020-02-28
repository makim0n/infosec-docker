FROM python:2.7-stretch

WORKDIR /opt

RUN apt-get update
RUN apt-get -y install build-essential git subversion pcregrep libpcre++-dev dwarfdump automake libtool make gcc flex bison libssl-dev

RUN pip install distorm3 pycrypto pillow openpyxl ujson

RUN git clone https://github.com/volatilityfoundation/volatility.git

RUN wget https://github.com/VirusTotal/yara/archive/v3.8.1.tar.gz
RUN tar xvf v3.8.1.tar.gz

RUN cd /opt/yara-3.8.1 && ./bootstrap.sh && ./configure --with-crypto && make && make install && make check

RUN echo "/usr/local/lib" >> /etc/ld.so.conf && ldconfig

RUN git clone --recursive https://github.com/VirusTotal/yara-python.git
RUN cd yara-python && python ./setup.py build && python ./setup.py install

RUN cd /opt/volatility && python ./setup.py build && python ./setup.py install

RUN rm v3.8.1.tar.gz

# Dependencies for custom plugins
RUN pip install construct==2.5.5-reupload

ENTRYPOINT ["/bin/bash"]