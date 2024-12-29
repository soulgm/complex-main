@echo off

:: 设置目标操作系统和架构
set GOOS=windows
set GOARCH=amd64

:: 切换到项目的根目录
cd ..\..\

:: 编译 Go 项目
go build -ldflags "-s -w" -o build\windows\compilex.exe

:: 输出完成信息
echo Build complete!
pause
