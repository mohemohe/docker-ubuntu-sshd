# docker-ubuntu-sshd

[![build](https://github.com/mohemohe/docker-ubuntu-sshd/actions/workflows/build.yaml/badge.svg)](https://github.com/mohemohe/docker-ubuntu-sshd/actions/workflows/build.yaml)

## pull

```sh
docker pull mohemohe/ubuntu
```

## run

```sh
docker run -p 22:22 -e GITHUB_USERNAME=your_github_username mohemohe/ubuntu
```

## connect

```sh
ssh your_github_username@target_ip
```
