#!/bin/sh
#@shylocks仓库脚本
function initShylocks() {
    git clone https://github.com/himho/shell_scripts.git /shylocks
    npm install
}

 if [ ! -d "/shylocks/" ]; then
    echo "未检查到shylocks仓库脚本，初始化下载相关脚本"
    initShylocks
else
    echo "更新shylocks脚本相关文件"
    git -C /shylocks reset --hard
    git -C /shylocks pull --rebase
    npm install --loglevel error
fi
##复制外挂配置脚本
cp -f /shylocks/shell_script_mod.sh /scripts/logs/
##复制脚本文件
cp -f /shylocks/jd* /shylocks/sq* /scripts/
##复制更新文件
cp -f /shylocks/docker/docker_entrypoint2.sh /scripts/
#复制初始化任务
cp -f /shylocks/docker/proc_file.sh /scripts/docker/
#清楚默认任务
cp -f /shylocks/docker/merged_list_file.sh /scripts/docker/
#删除JD
rm /scripts/jd*.js
#复制定时任务
cp -f /shylocks/docker/crontab_list.sh /scripts/docker/crontab_list.sh
##加入 @shylocks 仓库的定时任务
cat /shylocks/docker/crontab_list.sh >> /scripts/docker/merged_list_file.sh