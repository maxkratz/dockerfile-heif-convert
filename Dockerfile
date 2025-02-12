FROM ubuntu:22.04

RUN apt-get update && apt-get install -y libheif-examples &&\
    rm -rf /var/lib/apt/lists/* && >&2 echo -n 'Version: ' &&\
    >&2 bash -c 'dpkg -s libheif-examples | grep Version | cut -d " " -f 2' &&\
    groupadd -g 1001 non-root && useradd -u 1001 -g 1001 non-root

COPY convert-all /usr/local/bin/convert-all

USER non-root

ENTRYPOINT ["/usr/local/bin/convert-all"]
