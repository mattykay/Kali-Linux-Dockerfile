FROM kalilinux/kali

# Ensure default packages up to date
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

# Install preferred utilities
RUN apt-get -y install vim kali-linux-top10 net-tools whois netcat exploitdb man-db gobuster python3-pip openvpn wordlists dirb

# Include dirb wordlist in wordlists folder for convenience
RUN ln -s /usr/share/dirb/wordlists /usr/share/wordlists/dirb

ENTRYPOINT ["/bin/bash"]
