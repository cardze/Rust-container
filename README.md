# Command note
## using docker-compose
- `docker-compose run --rm rust rust -v`
    - `--rm` for Automatically remove the container when it exits
    - `-v` or `--volume stringArray` are for Bind mount a volume
- After we run this command, a new `network` has been created.
```bash
docker network ls
NETWORK ID     NAME                  DRIVER    SCOPE
aa6251a0d0a0   docker-rust_default   bridge    local
```
## using dockerfile
- `docker build -t my-rust-app .`
- 
```
docker run -d \
  -e JENKINS_URL=http://172.17.0.2:8081/ \
  -e JENKINS_AGENT_NAME=rust-agent \
  -e JENKINS_SECRET=b3a21abee83610073c0b2375a74ae7209d19b9d3f534b453ae486b426ad1a202 \
  my-rust-agent
```

## reference
- [使用 Docker Compose 摻在一起做懶人包](https://ithelp.ithome.com.tw/articles/10243618)