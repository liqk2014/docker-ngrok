# DOCKER NGROK IMAGE

修改参数
```
  volumes:
    - ~/docker-ngrok/out:/myfiles
  environment:
    - DOMAIN="liqk.xyz"
```

 ~/docker-ngrok/out：可更改为自己本地的目录，用于获取生成的各平台的客户端程序以及私钥、证书文件。

DOMAIN：更改为自己服务器的域名

直接执行
```linux
docker-composer up
```


