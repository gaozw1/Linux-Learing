# ssh连接

### ubuntu配置：
```sh
sudo apt install openssh-server     #安装
/etc/init.d/ssh start               #启动
#输入密码
```
### mac连接
```sh
ssh -p 22 user@host
#输入密码
```
- 复制
scp Linux用户名@ip地址：文件绝对路径 +Mac决定路径
如：`scp user@127.0.0.1:~/Desktop/1.txt ~/Desktop`
scp 本地路径  Linux登录用户名@Linuxip地址：+Linu路径

# smb连接(局域网)

### ubuntu配置：
```sh
sudo apt-get install samba
sudo apt-get install smbclient
samba -V            #查看版本号。出现版本号则安装成功
```
右击文件夹设置共享

~~sudo vi /etc/samba/smb.conf     #配置信息，加入以下内容
[share]
   comment = share folder
   browseable = yes
   path = /home/user        #配置路径
   create mask = 0777
   directory mask = 0777
   valid users = user       #添加用户
   force user = nobody
   force group = nogroup
   public = yes
   available = yes~~


添加用户
```sh
sudo smbpasswd -a user
#输入密码
sudo /etc/init.d/samba restart  #重启
```
### mac连接
前往->smb://host
