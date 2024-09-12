# Windows

## 修改
- 右键扩展
  - reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
  - 然后重启系统
  - 若要改回原来的二级菜单
  - reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
  - 然后重启系统

- PowerShell 安装 Git
  - winget install --id Git.Git -e --source winget


## 邮件 添加QQ邮箱
- [参考网址](https://blog.csdn.net/m0_48467204/article/details/117388787)

## 常用快捷键
- `win` + `tab` 切换窗口
- `shift` + `win` + `←` 窗口移动

## 获取壁纸
检查 -> sl-media-container-wrapper -> media-container -> backgroud-image

## 关于国外安装 Jupyter
- 在瑞士使用 pip install jupyter 直接安装发现极其缓慢
- 于是尝试 pip install jupyter -i https://pypi.tuna.tsinghua.edu.cn/simple
- 发现还挺快