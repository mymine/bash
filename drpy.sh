#!/bin/bash
# 下载仓库包
git clone https://gitcode.net/qq_32394351/dr_py
# 移动项目到主目录
cp -r dr_py/* ./
rm -rf dr_py
# 升级pip包
#pip install --upgrade pip
# 安装依赖
pip install -r requirements.txt
配置.replit文件
echo "run = \"python app.py\"" >.replit
# 启动项目
nohup python app.py 0
