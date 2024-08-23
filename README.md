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