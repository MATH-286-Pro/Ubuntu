# 文件说明
- EPFL-Course 用于记录课程信息+课程进度
- Ubuntu 用于记录 Ubuntu 系统的使用
- Windows 用于记录 Windows 系统的使用
- Icon 为文件夹图标
- Embedded 记录嵌入式内容

# 记录日志
- **2024.7.5 周五**
  - 测试 SMT，发现 ULP 导出的master board 元器件位置信息缺少 SPI 的接口文件
- **2024.7.6 周六**
  - 发现背面没有贴片元件原因：没有勾选正反面贴片选项
  - 嘉立创没有 LPS6253 1uH 电感
  - 联系客服解决问题，等待中...
  - 客服回答 BOM 可以嘉立创做，但是坐标信息得客户提供
- **2024.7.7 周日**
  - 找到 LPS-6235 153MRB 电感销售厂家
---
- **2024.7.10 周三**
  - 发布 STP文件处理 教程
- **2024.7.11 周四**
  - 发布 CAN分析仪控制电机 教程
- **2024.7.12 周五**
  - 发布 DXF文件导出 教程
---
- **2024.7.15 周一**
  - 小组会
  - 电容数值不影响，仅起滤波作用
- **2024.7.16 周二**
  - 前往上海 领取瑞士签证材料
  - 体验 Vision Pro + 逛逛 南京路
- **2024.7.17 周三**
  - 通过淘宝找到 BOM 销售商家
- **2024.7.19 周五**
  - 前往紫金港办 英文毕业证书翻译
  - 接到JLC电话说 Micro Driver 没有顶层丝印
- **2024.7.20 周六**
  - Eagle 功能 可由 Fusion 代实现
  - 使用网页端管理 Fusion 文件更加快捷
  - 学习 Fusion PCB 绘制
  - 工作人员修改了 Micro Driver U2 U7 U8 芯片方向
  - 成功使用 Fusion 绘制 PCB
    - 原理图 https://www.youtube.com/watch?v=cplzhrjvXCQ
    - 排版图 https://www.youtube.com/watch?v=eEdnImVezi8
- **2024.7.21 周日 (0721日)**
  - 使用Keil完成无线Dap-link测试
  - 完成亚克力订购
  - 完成部分发票整理
  - 完成学信网翻译件
  - 完成理发
---
- **2024.7.22 周一**
  - 小组会
  - 下载 UIUC eDiploma
  - 完成 Ubuntu 20.04 iso 下载
  - 查看 Dell Precision 3530 配置
    - 16G 2666MHz内存条 (2条内存，只插了1条)
    - 2TB HDD 机械硬盘
- **2024.7.23 周二**
  - 测试交爷拨弹盘
  - 效果非常好
- **2024.7.24 周三**
  - 录制 Fusion STP 文件处理 视频
- **2024.7.25 周四**
  - 运行 Ubuntu 20.04
- **2024.7.26 周五**
  - 运行 Issca Gym
---
- **2024.7.31 周三**
  - 使用 GPU 运行 Isaac Gym
- **2024.8.3 周六**
  - 安装 legged gym
---

- **2024.8.12 周一**
  - JTAG接口焊接
- **2024.8.13 周二**
  - 开始 Micro Driver 固件烧录
---
- **2024.8.20 周二**
  - 测试 Micro Driver 固件烧录
  - 需要德州仪器的文件
  - 烧录显示找不到设备
  - 同时发现 Micro Driver 上电30s后两个小芯片发热严重
  - 两块 Micro Driver 有相同问题
- **2024.8.22 周四**
  - 测试 ESP 烧录
  - 14:15 发现连接 ESP 烧录器读取为 ttyACM0 而不是 ttyUSB0
  - 15:26 使用 `espefuse.py --port /dev/ttyACM0 set_flash_voltage 3.3V` 解决问题，WS2812 发光
  - 15:46 烧录成功。以下为使用命令
    - 使用终端进入 master_board/firmware
    - `source set_esp_idf.bash` 刷新环境变量
    - `export ESPPORT=/dev/ttyACM0` 将 ttyACM0 端口提供给代码，否则会出现找不到 ttyUSB0 报错
    - `make flash`
  - 研究为什么 WS2812 常亮白灯
  - `sudo apt install net-tools` 安装网络工具
  - 随便一个终端中输入 `ifconfig` 检查网络设置
- **2024.8.23 周五**
  - 检查 Micro Driver 元器件极性
  - 16:00 芯片+但电容元器件 极性正确
  - 17:04 查找 LED 亮灯与状态关系
  - 再次尝试 Code Composer Studio (类似Keil的IDE-集成开发环境 )
  -   Workspace 默认就行
      1. 打开文件 File -> Open Projects from File System -> Directory -> `dual_motor_torque_ctrl_spi` -> Finish (替代选项)
      2. 编译文件 Project -> Build All (编译要一段时间)
      3. 调试文件 Run -> Debug
      4. 烧录文件 Run -> Load
  - 18:34 发现问题，根据报错 `Texas Instruments XDS100V2 USB Emulator_0/C28XX : Target must be connected before loading program`
    - 通过 View -> Target Configuration -> New Target Configuration File 发现
    - 若烧录器选择 SEGGER-JLINK，则只有一个目标芯片 EVMDMRX45X
    - 若烧录器选择 XDS100V2，则有一堆目标芯片，包括各种 TMS 芯片
---
- **2024.8.31 (切换为瑞士时间)**
  - 尝试在 Dell-Precision-3591 安装 Ubuntu 20.04
  - 发现 Dell 上的 Ubuntu 无法识别500G压缩卷
  - 推测为 安装盘制作 为MBR格式，而非GPT格式 导致的问题
  - Dell-Precision-3591 为UEFI
- **2024.9.1 周日**
  - 小感冒
  - 鉴定为睡觉时被风吹得
  - 不咳嗽，不流鼻涕，但是嗓子不舒服，有痰
  - 瑞士麦当劳没有英语菜单，但是有法语，德语，意大利语
---
- **2024.9.2 周一**
  - 使用图吧工具箱->rufus 重新制作 GPT 格式的 Ubuntu 20.04 安装盘
  - GPT 格式依旧无法识别500G压缩卷
  - 12:47 询问客服中
- **2024.9.3 周二**  - 成功安装 Windows 11 专业工作站版本
  - 参考视频 
    - [重装 windows](https://www.bilibili.com/video/BV16h4y1B7md/?vd_source=4c878cdda4a827e2590557bcbb57b3e5)
    - [激活工作站专业版 win11](https://www.bilibili.com/video/BV18H4y1w7GR/?spm_id_from=333.788.top_right_bar_window_default_collection.content.click&vd_source=4c878cdda4a827e2590557bcbb57b3e5)
- **2024.9.4 周三**
  - 成功安装 Ubuntu 20.04 
  - 使用 Ventoy 制作多系统安装U盘
  - 发现 Ubuntu 没有网络选项
  - 等待技术客服回答
  - try ubuntu 20.04 同样没有网络
- **2024.9.5 周四**
  - try Ubuntu 22.04 发现有网络
  - 重装为 Ubuntu 22.04
  - 使用 bash 一键配置 Ubuntu 成功
  - 成功启动 legged-gym
  - 帮助一个法国妹子完成打印机设置
- **2024.9.6 周五**
  - 安装 Docker
- **2024.9.7 周六**
  - 成功运行 二阶到立摆 案例，但是因为奖励函数导致实际比较难以保持平衡
  - 可以尝试新的 奖励函数
  - 安装 starship 终端装饰
---
- **2024.9.9 周一**
  - 学习 MPC 代价函数
  - 安装 MATLAB
  - 要使用 iphone 的 USB 传输个人热点，需要给 windows 安装 iTune
- **2024.9.11 周三**
  - 成功使用 pybullet 完成 practical4_hopping.py 任务
  - 使用 python debug 才发现文件4会自动执行文件2的参数
- **2024.9.12 周四**
  - 又把公交705做错成702了
  - VScode 运行 Jupyter select kernel 列表是空的
  - 发现原来是 VScode 版本过低，需要 1.93.0 版本
  - 升级 VScode 后继续使用 pip install matplotlib 安装
  - 至此 CS-433 execise 可以正常运行
---
- **2024.9.16 周一**
  - VSCode Docker 插件找不到容器
  - 重启 Ubuntu 解决问题
  - 根据测试 rosdep install -y --rosdistro humble --from-paths . --ignore-src
  - 这行命令在新安装的 Ubuntu ROS2 Humble 中也会有问题
  - 尝试 STM32CubeIDE 生成 C++ 工程
  - 发现生成不成功
- **2024.9.17 周二**
  - 需要登录 STM32CubeIDE 才能使用 C++ 生成工程
  - 发现生成的还是 C 语言工程
---
- **2024.9.24 周二**
  - 完成 Machine Learning Project Ⅰ MSE Gradient Descent 梯度下降
  - 注意处理数据 首先需要将数据标准化
- **2024.9.25 周三**
  - 打算重新开始 进行MATLAB轮腿仿真
- **2024.9.27 周五**
  - EPFL 华为宣讲会
  - 没什么东西
  - 华为欧洲部门基本不找人
  - 都是拉你回国
- **2024.10.8 周二**
  - 参加 EPFL Forum
  - 了解到 Elythor 提供 Master Thesis 并且就在 EPFL innovation centre
  - Elythor [官网网址](https://elythor.com/drone/)
  - 如果最后没有去处可以找他们
  - 进行了招聘会的录像，随时可以重看来获取信息
  - ANYbotics 去年在 EPFL 就招了1个实习，两个入职
  - 公司实习主要是放在**自己的网站上**，9月份就要开始关注，linkedin上也有
- **2024.10.10 周四**
  - swatch 的工程师说硕士简历一般一页就行，正常硕士没有很多经历的
  - 他推荐通过参加对应公司的 Semester Project 或者 Master Thesis 
  - 这样相比投简历或者 linkedin 更容易进入公司
  - 他还说到瑞士的手表企业，你加入后做工作，基本整个行业的工程师都会知道你
  - 但是外行从来不会知道你，这是一个比较封闭的小圈子
- **2024.10.11 周五**
  - 华为实习投递在 **4月份** 左右
  - 需要同时在官网投递 + 给HR发简历
  - 华为实习不招当年毕业的，也就是说24年招25年毕业的人实习，25年招26年毕业的人实习
  - 目标岗位：控制方向
