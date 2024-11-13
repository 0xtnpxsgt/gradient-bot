# Gradient network 挂机脚本

- 项目地址：[https://app.gradient.network/](https://app.gradient.network/signup?code=EK8G9A)
- 购买代理IP：[https://app.proxy-cheap.com](https://app.proxy-cheap.com/r/ksvW8Z)
- 使用文档：<https://mirror.xyz/0xe8224b3E9C8d35b34D088BB5A216B733a5A6D9EA/jFFUw6Ew3rWThwMxXMoLaa1UMnV8axoQoMVN0EKEthY>
- TG: <https://t.me/web3bothub>

> 下面不用看

## Must Install Docker

### 准备代理 IP（可选）

Optional `proxies.txt`:

> socks5://username:password@proxyhost:port

## One Click Installation Guide：

- Step1: 
```bash
chmod +x gradientbot.sh
```
- Step2: 
```bash
./gradientbot.sh

```
- Step3:
```bash
docker run -d \
  -e APP_USER=user@mail.com \
  -e APP_PASS=password \
  -v ./proxies1.txt:/app/proxies1.txt \
  overtrue/gradient-bot
```

## Note: proxies.txtPlease replace the path with the correct path. If there is no proxy, you can leave it blank, or cdgo to proxies.txtthe directory first and then execute the docker run command.

## Check Container ID

```bash
docker ps
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

This command will list all containers, find the corresponding container ID (the value corresponding to the "CONTAINER ID" column), and then execute:

```bash
docker exec -it <container_id> pm2 logs
```

## Note

- Run this bot, and it will update your referrer code to my invite code if you don't have one.
- You can just run this bot at your own risk, I'm not responsible for any loss or damage caused by this bot. This bot is for educational purposes only.





