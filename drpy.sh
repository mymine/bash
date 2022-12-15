#!/bin/bash
file = $(pwd)
# 下载仓库包
git clone https://gitcode.net/qq_32394351/dr_py
# 移动项目到主目录
cp -r dr_py/* ./
rm -rf dr_py
# 升级pip包
#pip install --upgrade pip
# 安装依赖
pip install -r requirements.txt
#配置.replit文件
echo "run = \"python app.py\"" >.replit
#删除不需要配置和变灰
rm -rf $(pwd)/js/听书网.js
rm -rf $(pwd)/js/海盗听书.js
rm -rf $(pwd)/static/js/grey.js
rm -rf $(pwd)/static/css/grey.css

# 启动项目
nohup python app.py
