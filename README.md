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
docker pull mattykay/kali-linux
docker run -it mattykay/kali-linux
```
