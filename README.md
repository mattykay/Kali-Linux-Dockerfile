# Kali-Linux-Dockerfile

Kali Linux Dockerfile that sets up a updated Kali install with my preferred tools.

The purpose in particular is for a more minimal headless setup, for other use cases it may be better to run Kali Linux in a VM or similar.

## Usage

### Build Image Manually

```bash
git clone https://github.com/mattykay/Kali-Linux-Dockerfile.git && cd Kali-Linux-Dockerfile
docker build [-t <your-image-name>] .
```

### Run

```bash
docker run -it mattykay/kali-linux
```

#### Run with OpenVPN

Make sure to add the `--cap-add=NET_ADMIN --device=/dev/net/tun` arguments to the run command. Can then copy in OpenVPN config file as below (or better yet add a [volume](https://docs.docker.com/storage/volumes/) to the run)

```bash
docker run -d --cap-add=NET_ADMIN --device=/dev/net/tun --name=kali mattykay/kali-linux
docker cp my-vpn-config.ovpn kali:/tmp/
docker exec -it kali /bin/bash
```
