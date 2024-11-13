# Gradient network 

- Project address:：[https://app.gradient.network/](https://app.gradient.network/signup?code=EK8G9A)
- Buy proxy IP：[https://app.proxy-cheap.com](https://app.proxy-cheap.com/r/ksvW8Z)
- Usage documentation:：<https://mirror.xyz/0xe8224b3E9C8d35b34D088BB5A216B733a5A6D9EA/jFFUw6Ew3rWThwMxXMoLaa1UMnV8axoQoMVN0EKEthY>
- TG: <https://t.me/web3bothub>

> Must Install Docker

## One Click Installation Guide：

- Step1: 
```bash
wget https://raw.githubusercontent.com/0xtnpxsgt/gradient-bot/refs/heads/main/gradientbot.sh
chmod +x gradientbot.sh
```
- Step2: 
```bash
./gradientbot.sh

```

## Check Container ID

```bash
docker ps
```

## Check Logs

```bash
docker logs -f COINTAINERID
```



## Other Commands:
```bash

# pull new image
docker pull overtrue/gradient-bot

# run new container
docker run -d -e APP_USER=<user@mail.com> -e APP_PASS='<password>' -v ./proxies2.txt:/app/proxies2.txt overtrue/gradient-bot

# delete old container
docker rm -f <container_id>
```

## To Add Another Docker 

```bash
cd gradient-bot
```

Create new proxies text file 

```bash
nano proxies2.txt
```

```bash
docker run -d \
  -e APP_USER=user@mail.com \
  -e APP_PASS=password \
  -v ./proxies2.txt:/app/proxies2.txt \
  overtrue/gradient-bot
```


This command will list all containers, find the corresponding container ID (the value corresponding to the "CONTAINER ID" column), and then execute:

```bash
docker exec -it <container_id> pm2 logs
```

## Note

- Run this bot, and it will update your referrer code to my invite code if you don't have one.
- You can just run this bot at your own risk, I'm not responsible for any loss or damage caused by this bot. This bot is for educational purposes only.





