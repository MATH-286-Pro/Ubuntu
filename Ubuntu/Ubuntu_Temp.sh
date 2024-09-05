#!/bin/bash

# 确保 VS Code 已安装
if ! command -v code &> /dev/null
then
    echo "VS Code 没有安装。请先安装 VS Code 后再试。"
    exit
fi

# 创建桌面条目文件
DESKTOP_ENTRY="[Desktop Entry]
Name=Open with VS Code
Comment=Open the folder in Visual Studio Code
Exec=code %f
Icon=code
Terminal=false
Type=Application
MimeType=inode/directory;
NoDisplay=false
"

# 将桌面条目文件保存到用户的本地应用程序目录
echo "$DESKTOP_ENTRY" > ~/.local/share/applications/open-with-vscode.desktop

# 更新系统的 MIME 类型数据库
xdg-mime default open-with-vscode.desktop inode/directory

echo "右键菜单项 'Open with VS Code' 已成功添加！"
