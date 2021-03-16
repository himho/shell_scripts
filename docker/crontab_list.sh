#更新 
48 */1 * * * sh /scripts/docker_entrypoint2.sh |ts >> /scripts/logs/default_task.log 2>&1
50 23 */2 * * rm /scripts/logs/*.log
15 8,12 * * * node /scripts/sqxs.js >> /scripts/logs/sqxs.log 2>&1
15,45 0-23 * * * node /scripts/bububao.js >> /scripts/logs/bububao.log 2>&1
25,50 8-20 * * * node /scripts/cfz.js >> /scripts/logs/cfz.log 2>&1
8 * * * * node /scripts/ranlv.js >> /scripts/logs/ranlv.log 2>&1
