FROM ubuntu

RUN apt update && \
	apt install -y automake autoconf libtool g++ git make gcc cmake && \
	apt install -y gettext autopoint libavutil-dev libavcodec-dev libavformat-dev libjpeg-dev libsqlite3-dev libexif-dev libogg-dev libvorbis-dev libid3tag0-dev libflac-dev

WORKDIR /
RUN git clone https://github.com/dobrosi/minidlna.git /minidlna
RUN	cd /minidlna/src && \
	./autogen.sh && ./configure && make && \
	mkdir /etc/minidlna && mv minidlna.conf /etc/minidlna && mv minidlnad /usr/sbin && \
	cd / && rm -rf /minidlna

EXPOSE 8200
EXPOSE 1900/udp

ENTRYPOINT ["minidlnad", "-f", "/etc/minidlna/minidlna.conf", "-S"]