参考[wine官方wiki](https://wiki.winehq.org/Debian_zhcn)

步骤
1. 首先，开启 32 位支持：
```bash
sudo dpkg --add-architecture i386
```
2. 然后安装被用于签发安装包的密钥：
```bash
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
```

3. 然后添加下面两个软件源到 /etc/apt/sources.list 
```bash
deb https://dl.winehq.org/wine-builds/debian/ buster main 

deb https://dl.winehq.org/wine-builds/debian/ bullseye main 
```

4. 更新软件仓库：
```bash
sudo apt update
```

在这一步中报错
```bash
命中:1 https://professional-packages.chinauos.com/desktop-professional eagle InRelease
命中:2 https://professional-packages.chinauos.com/printer eagle InRelease
命中:3 https://professional-store-packages.chinauos.com/appstore eagle InRelease
获取:4 https://dl.winehq.org/wine-builds/debian buster InRelease [6,259 B]    
错误:4 https://dl.winehq.org/wine-builds/debian buster InRelease              
  由于没有公钥，无法验证下列签名： NO_PUBKEY 76F1A20FF987672F
获取:5 https://dl.winehq.org/wine-builds/debian bullseye InRelease [6,262 B]                    
错误:5 https://dl.winehq.org/wine-builds/debian bullseye InRelease                              
  由于没有公钥，无法验证下列签名： NO_PUBKEY 76F1A20FF987672F
命中:6 https://dl.yarnpkg.com/debian stable InRelease
正在读取软件包列表... 完成                       
W: GPG 错误：https://dl.winehq.org/wine-builds/debian buster InRelease: 由于没有公钥，无法验证下列签名： NO_PUBKEY 76F1A20FF987672F
E: 仓库 “https://dl.winehq.org/wine-builds/debian buster InRelease” 没有数字签名。
N: 无法安全地用该源进行更新，所以默认禁用该源。
N: 参见 apt-secure(8) 手册以了解仓库创建和用户配置方面的细节。
W: GPG 错误：https://dl.winehq.org/wine-builds/debian bullseye InRelease: 由于没有公钥，无法验证下列签名： NO_PUBKEY 76F1A20FF987672F
E: 仓库 “https://dl.winehq.org/wine-builds/debian bullseye InRelease” 没有数字签名。
N: 无法安全地用该源进行更新，所以默认禁用该源。
N: 参见 apt-secure(8) 手册以了解仓库创建和用户配置方面的细节。
```

解决方法
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 76F1A20FF987672F

sudo apt update
```
其中`76F1A20FF987672F`缺少什么就换成什么

5. 再次更新完软件源就可以安装了

```
sudo apt install --install-recommends winehq-stable
```
这一步报错
```
正在读取软件包列表... 完成
正在分析软件包的依赖关系树       
正在读取状态信息... 完成       
有一些软件包无法被安装。如果您用的是 unstable 发行版，这也许是
因为系统无法达到您要求的状态造成的。该版本中可能会有一些您需要的软件
包尚未被创建或是它们已被从新到(Incoming)目录移出。
下列信息可能会对解决问题有所帮助：

下列软件包有未满足的依赖关系：
 winehq-stable : 依赖: wine-stable (= 6.0.0~buster-1)
E: 无法修正错误，因为您要求某些软件包保持现状，就是它们破坏了软件包间的依赖关系。
```
到[这里](https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/i386/)下载[依赖包](https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/i386/libfaudio0_20.01-0~buster_i386.deb)

安装deb包安装完毕后再执行

```
sudo apt install winehq-stable
```

6. 重新安装

```
sudo apt update
sudo apt install --install-recommends winehq-stable
wine --version
```
