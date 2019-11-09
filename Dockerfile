FROM ubuntu

RUN apt-get update && apt-get install -y wget zip

ENV ARCH=x64

RUN wget -nv https://storage.googleapis.com/dart-archive/channels/stable/release/2.6.0/sdk/dartsdk-linux-${ARCH}-release.zip \
	&& unzip dartsdk-linux-${ARCH}-release.zip -d /

COPY . /src/
RUN PATH="/dart-sdk/bin:/root/.pub-cache/bin:${PATH}" && \
    cd /src/ && pub global activate webdev && pub get && webdev serve
