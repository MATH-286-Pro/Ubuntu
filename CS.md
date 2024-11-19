# 概念术语 Terminology

## SDK (Software development kit) 软件开发套件

## IDE (Intergrated Development Evironment) 集成开发环境
- Visual Sudio

## API (Application Programming Interface) 应用程序接口




# 版本管理

## 可能环境分布
- **windows 的 python (直接安装 python 产生的，使用 Pip 命令)**
  - ~\AppData\Local\Programs\Python\Python312\python.exe

- **miniconda 的 python (使用 conda 命令)**
  - /c/Users/MATH-286-Dell/miniconda3/python


## **Miniconda**
| 命令                                      | 操作                        |
|-------------------------------------------|-----------------------------|
| `conda env list`                          | 查看所有虚拟环境            |
| `conda create -n <env_name> python=3.12`  | 创建虚拟环境 (指定名称与 Python 版本) |
| `conda activate <env_name>`               | 激活虚拟环境                |
| `conda deactivate`                        | 退出虚拟环境                |
| `conda list -n <env_name>`                | 查看某个虚拟环境的包        |
| `conda update -n <env_name> conda`        | 刷新某个虚拟环境            |
| `conda env remove -n <env_name>`          | 删除虚拟环境                |
| `pip list \| grep <package_name>`         | 查看指定库是否已安装        |
| `pip install <package_name>`              | 安装指定库                  |
| `which python`                            | 查看当前 Python 路径        |


## 指定版本
- **指定 python 卸载 torch**
    ```bash
    "C:/Users/MATH-286-Dell/AppData/Local/Programs/Python/Python312/python.exe" -m pip uninstall torch
    ```

- **指定 python 安装 torch**
    ```bash
    "C:/Users/MATH-286-Dell/AppData/Local/Programs/Python/Python312/python.exe" -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
    ```

- **2024.11.4 问题说明**
  - 问题描述：VSCode运行python使用的是全局，但是命令终端中输入 `which python` 显示为 miniconda
  - 问题解决：在环境变量中调整 miniconda 和 全局 python 的顺序，将全局移到前面就行
- **2024.11.12 问题复现**
  - 问题描述：输入conda命令就是不执行
      ```bash
      $ conda activate convex_env
      bash: C:\Users\MATH-286-Dell\miniconda3\Scripts: Is a directory
      ```
  - 问题原因：使用 conda 创建虚拟环境后，VSCode 自动将其路径下的 Python 选为解释器。然后因为删除掉这个虚拟环境，导致VSCode找不到解释器
  - 问题解决：使用VSCode打开一个.py文件，在右下角重新选择 python 解释器
