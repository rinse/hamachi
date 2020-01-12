FROM ubuntu:16.04 as builder

RUN  apt update && apt install -y curl \
  && curl https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb \
        -o logmein-hamachi_amd64.deb


FROM ubuntu:16.04

WORKDIR /hamachi

COPY startup.sh ./
COPY --from=builder /logmein-hamachi_amd64.deb ./
RUN  dpkg -i logmein-hamachi_amd64.deb \
  && rm *.deb
