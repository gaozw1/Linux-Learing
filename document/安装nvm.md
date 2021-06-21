[官方参考链接](https://github.com/nvm-sh/nvm#installation)


安装方法:
1. 
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```

在这一步中报错
```
0curl: (7) Failed to connect to raw.githubusercontent.com port 443: 拒绝连接
```

解决方法

在[这里](https://www.ipaddress.com/)查询`raw.githubusercontent.com`真实ip

在/etc/hosts中添加上去。我查询到的有4个对应ip

```
185.199.108.133 raw.githubusercontent.com
185.199.109.133 raw.githubusercontent.com
185.199.110.133 raw.githubusercontent.com
185.199.111.133 raw.githubusercontent.com

```

配置完毕再次运行
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```

2. 
```
source ~/.bashrc
```