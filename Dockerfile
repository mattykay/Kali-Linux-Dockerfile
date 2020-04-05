FROM kalilinux/kali

#
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

# Install
RUN apt-get -y install vim kali-linux-top10 net-tools whois netcat exploitdb man-db gobuster python3-pip openvpn wordlists

ENTRYPOINT ["/bin/bash"]
