# docker-ubuntu-sshd

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
