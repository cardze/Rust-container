# Command note
## using dockerfile
- `docker build -t my-rust-app .`
- `docker run -d --init my-rust-agent -url http://<jenkinsHostName>:<port> <Your Secret> <Your Agent Name>`

## reference
- [使用 Docker Compose 摻在一起做懶人包](https://ithelp.ithome.com.tw/articles/10243618)
- [Jenkins inbound Agent](https://hub.docker.com/r/jenkins/inbound-agent)