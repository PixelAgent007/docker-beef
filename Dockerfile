FROM ruby:2.7-slim

WORKDIR /home/

ENV LC_ALL C.UTF-8
ENV STAGING_KEY=RANDOM
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && \
    apt-get install -y net-tools curl git build-essential openssl libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison nodejs && \
    cd /home/ && \
    git clone --depth=1 --recursive https://github.com/beefproject/beef/ /home/beef && \
    cd /home/beef && \
    bundle install --without test development && \
    rm -rf /home/beef/.git && \
    apt-get remove -y git build-essential automake && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/beef/

COPY config.yaml /home/beef/config.yaml

ENTRYPOINT ["/home/beef/beef"]

EXPOSE 3000

CMD ["/bin/bash"]


