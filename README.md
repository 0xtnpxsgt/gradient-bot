# Gradient network 挂机脚本

- 项目地址：[https://app.gradient.network/](https://app.gradient.network/signup?code=EK8G9A)
- 购买代理IP：[https://app.proxy-cheap.com](https://app.proxy-cheap.com/r/ksvW8Z)
- 使用文档：<https://mirror.xyz/0xe8224b3E9C8d35b34D088BB5A216B733a5A6D9EA/jFFUw6Ew3rWThwMxXMoLaa1UMnV8axoQoMVN0EKEthY>
- TG: <https://t.me/web3bothub>

> 下面不用看

## 使用 Docker 启动

### 准备代理 IP（可选）

将代理地址保存到 `proxies.txt` 文件中，格式为：

> socks5://username:password@proxyhost:port

## One Click Installation Guide：

```bash
chmod +x gradientbot.sh
```

```bash
./gradientbot.sh

```



```bash
docker run -d \
  -e APP_USER=user@mail.com \
  -e APP_PASS=password \
  -v ./proxies.txt:/app/proxies.txt \
  overtrue/gradient-bot
```

注意：`proxies.txt` 路径请替换为正确的路径，如果没有代理，可以留空，或者先 `cd` 到 `proxies.txt` 所在目录再执行 docker run 命令。

## 查看运行日志

```bash
docker ps
```

此命令会列出所有容器，找到对应的容器 ID（"CONTAINER ID" 列对应的值），然后执行：

```bash
docker exec -it <container_id> pm2 logs
```



## Other Commands:

```bash
# delete old container
docker rm -f <container_id>

# pull new image
docker pull overtrue/gradient-bot

# run new container
docker run -d -e APP_USER=<user@mail.com> -e APP_PASS='<password>' -v ./proxies2.txt:/app/proxies2.txt overtrue/gradient-bot
```

## Note

- Run this bot, and it will update your referrer code to my invite code if you don't have one.
- You can just run this bot at your own risk, I'm not responsible for any loss or damage caused by this bot. This bot is for educational purposes only.





