#!/bin/bash
# 执行安装脚本
/software/install.sh
# 启动一个交互式shell
exec /bin/bash --rcfile ~/.bashrc -i