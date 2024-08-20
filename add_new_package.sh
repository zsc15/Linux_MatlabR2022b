#!/bin/bash
# apt-get install libxt6 -y
# 设置工作目录
cd /software
mkdir -p matlab
# 挂载ISO文件
mount -o loop R2022b_Linux.iso matlab

# 运行MATLAB安装脚本，使用installer_input.txt文件中的配置
./matlab/install -inputFile new_installer_input.txt

# 取消挂载ISO文件
umount matlab

# 复制libmwlmgrimpl.so到指定位置
cp libmwlmgrimpl.so /usr/local/MATLAB/r2022b/bin/glnxa64/matlab_startup_plugins/lmgrimpl/libmwlmgrimpl.so

# 安装MATLAB Python引擎
cd /usr/local/MATLAB/r2022b/extern/engines/python && python setup.py install

# 设置MATLAB环境变量
echo "export PATH=/usr/local/MATLAB/r2022b/bin:\$PATH" >> ~/.bashrc

# # 复制安装Anaconda的脚本到容器中
# cd /software

# # 给脚本执行权限并以无交互模式安装Anaconda到指定位置
# chmod +x Miniconda3-py39_4.9.2-Linux-x86_64.sh && \
# bash Miniconda3-py39_4.9.2-Linux-x86_64.sh -b -p /Miniconda3

# # 复制.condarc镜像下载地址文件
# cp condarc.txt /root/.condarc


# ###
# echo 'export PATH=$PATH:/Miniconda3/bin' >> ~/.bashrc

