# Ubuntu 安装+磁盘 记录

## Ubuntu 版本
- 22.04 Jammy Jellyfish
- 20.04 Focal Fossa (2020.4.23 发布)

## Ubuntu 安装步骤
- 下载对应版本 `Ubuntu` [华为镜像源下载](http://repo.huaweicloud.com/ubuntu-releases/)
  - `ubuntu-20.04.6-desktop-amd64.iso  4.1GB`
- 使用 `图吧工具箱->Rufus` 烧录至U盘(不要使用SD卡，根据测试SD无法被系统识别)
  - 不需要更改 `Rufus` 设置
- 或者使用 Ventoy 制作多系统启动U盘
- 在需要安装 `Ubuntu` 的电脑中划分内存
- 出现 Dell 标志狂按 F12 进入 Boot
- [调整双系统启动优先级](https://blog.csdn.net/qianxiao_anran/article/details/132514541)

## Ubuntu 个人内存管理
- **Dell Precision 3530 工作站**
  - Windows
    - 磁盘0 C盘
    - 磁盘1 D盘 E盘
  - Ubuntu 20.04 (500G)
    - 500M sda8 引导区
    - 16G sda9 linux-swap
    - 300G sda10 / [多数软件安装位置]
    - 200G sda11 /home [重装Ubuntu，数据不受影响]
  - Ubuntu 22.04 (D盘 90G)
    - 400M sda4 引导区
    - 10G sda5 linux-swap
    - 30G sda6 /,/var/snap 
    - 51G sda7 /home 
- **Dell Precision 3591 工作站**
  - 500M 引导区
  - 64G  linux-swap
  - 300G /
  - 150G /home

## Ubuntu 系统分区
|名称                 |作用|类型|建议大小|
|---                  |---|---|---|
|efi 引导区           |用于efi引导，使得电脑能够找到ubuntu分区（Bios中需要打开uefi启动）|逻辑分区 |只是引导分区而非系统分区，不需要很大，设置为500M|
|linux swap 虚拟内存区|与CPU进行数据交换的虚拟存储器，用于临时数据的存储                |主分区   |通常设置为与电脑实际的内存大小相匹配|
|挂载点：/            |用来存放ubuntu系统文件   **大部分软件安装在此处**               |逻辑分区  |视实际空间大小而定，**30GB绝对不够用**|
|挂载点：/usr         |存放用户程序，一般在/usr/bin中存放发行版提供的程序，用户自行安装的程序默认安装到/usr/local/bin中|逻辑分区|尽可能大，分配30GB|
|挂载点：/home        |存放用户文件                                                  |逻辑分区  |尽可能大，分配30GB|



## Ubuntu 根目录
```
/  
├── bin             # 基本用户命令  
├── boot            # 启动加载器文件（如内核和初始化rd映像）  
├── dev             # 设备文件  
├── etc             # 配置文件  
├── home            # 用户主目录  
│   └── username    # 用户目录  
├── lib             # 系统库文件  
├── lib64           # 64位系统库文件  
├── media           # 可移动媒体挂载点  
├── mnt             # 临时挂载点  
├── opt             # 可选的应用程序软件包  
├── proc            # 内核和进程信息的虚拟文件系统  
├── root            # 超级用户（root用户）的主目录  
├── run             # 应用程序运行时状态文件  
├── sbin            # 系统管理员命令  
├── srv             # 服务数据  
├── sys             # 系统文件的虚拟文件系统  
├── tmp             # 临时文件  
├── usr             # 用户二进制文件和库  
│   ├── bin         # 多数用户命令 (**大部分软件安装位置，比如 Google**)  
│   ├── lib         # 多数系统库文件  
│   ├── sbin        # 多数系统管理员命令  
│   └── share       # 架构无关的数据  
└── var             # 可变数据文件  
    ├── cache       # 缓存数据  
    ├── lib         # 包状态信息  
    ├── log         # 日志文件  
    ├── mail        # 用户邮件  
    ├── opt         # 可选软件包数据  
    ├── spool       # 打印机和邮件的临时存储  
    └── tmp         # 临时文件  
```


## Ubuntu 软件安装位置
|软件         |地址|
|---          |---|
|google-chrome|/usr/bin/google-chrome|
|qq           |/usr/bin/qq|
|gparted      |/usr/sbin/gparted|

## 常见问题
### Ubuntu 安装时 找不到压缩卷
### Dell 安装 Ubuntu BIOS 设置 [官方网址](https://www.dell.com/support/kbdoc/en-us/000131655/how-to-install-ubuntu-linux-on-your-dell-pc#BIOS)