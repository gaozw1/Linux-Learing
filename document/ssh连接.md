# 客户端连接服务端
## 0. 设置被连接用户
添加ssh.service并启动sshd
```
systemctl enable ssh.service
service sshd restart

```

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
然后重启
```
systemctl restart sshd
```
#### 连接命令
```bash
#不加用户名@则默认使用root用户
ssh 192.168.1.1
```
## 3. 免密登录
在客户端生成ssh公钥
```bash
ssh-copy-id gzw@192.168.1.1
>输入密码
```
下次登录则不需要密码
