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
- `docker run -d --init my-rust-agent -url http://<jenkinsHostName>:<port> <Your Secret> <Your Agent Name>`

## reference
- [使用 Docker Compose 摻在一起做懶人包](https://ithelp.ithome.com.tw/articles/10243618)