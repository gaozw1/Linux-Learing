# 客户端连接服务端
## 1. 选择用户连接
#### 连接命令
```bash
ssh 用户名@IP

#例如：
ssh gzw@192.168.1.1
>输入gzw用户密码
```

## 2. 使用root用户连接
若想使用root用户连接，则修改服务端文件`/etc/ssh/sshd_config`添加
```
PermitRootLogin yes
```
#### 连接命令
```bash
#不加用户名@则默认使用root用户
ssh 192.168.1.1
```