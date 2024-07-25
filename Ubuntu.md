# Ubuntu 记录

### Ubuntu 版本
- 22.04 Jammy Jellyfish
- 20.04 Focal Fossa (2020.4.23 发布)

### Ubuntu 安装步骤
- 下载对应版本 `Ubuntu` [华为镜像源下载](http://repo.huaweicloud.com/ubuntu-releases/)
  - `ubuntu-20.04.6-desktop-amd64.iso  4.1GB`
- 使用 `Rufus` 烧录至U盘(不要使用SD卡，根据测试SD无法被系统识别)
  - 不需要更改 `Rufus` 设置
- 在需要安装 `Ubuntu` 的电脑中划分内存
- 出现 Dell 标志狂按 F12 进入 Boot ?

### Ubuntu 命令
|命令            |功能            |
|---             |---            |
|lsb_release -a  |查询 Ubuntu 版本|
|cd..            |回到上级文件夹  |
|sudo dpkg -i 文件名.deb|安装deb文件|
|`tab`           |自动补齐|
|`ctrl`+`alt`+`T`  |打开 Terminal|
|qq &            |启动 QQ🐧|

### Ubuntu 个人内存管理
- Dell 工作站
  - Windows
    - 磁盘0 C盘
    - 磁盘1 D盘 E盘
  - Ubuntu 22.04 (500G)
    - linux-swap
    - / 根挂载目录
  - Ubuntu 20.04 (D盘 90G)
    - 10G linux-swap
    - 30G /,/var/snap 
    - 51G /home 