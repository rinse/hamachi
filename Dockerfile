FROM ubuntu:16.04

WORKDIR /hamachi

COPY logmein-hamachi_2.1.0.203-1_amd64.deb startup.sh ./

RUN  dpkg -i logmein-hamachi_2.1.0.203-1_amd64.deb \
  && rm *.deb

# /etc/init.d/logmein-hamachi restart
# hamachi login
# hamachi attach ryenana@gmail.com
