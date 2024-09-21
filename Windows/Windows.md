# Windows

## 修改
- **右键扩展**
  - reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
  - 然后重启系统
  - 若要改回原来的二级菜单
  - reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
  - 然后重启系统
- **PowerShell 安装 Git**
  - winget install --id Git.Git -e --source winget
- **禁用 Windows 自带的 Shift + win + s 截图**
  - [参考B站视频](https://www.bilibili.com/video/BV1Ku4y137Tj/?vd_source=4c878cdda4a827e2590557bcbb57b3e5)
- **禁用 Onenote 自带的 Shift + win + s 截图**
  - [参考CSDN]https://blog.csdn.net/qq_45964597/article/details/128248096

## 邮件 添加QQ邮箱
- [参考网址](https://blog.csdn.net/m0_48467204/article/details/117388787)

## 常用快捷键
- `win` + `tab` 切换窗口
- `shift` + `win` + `←` 窗口移动

## 获取壁纸
检查 -> sl-media-container-wrapper -> media-container -> backgroud-image
