#更新 
48 */1 * * * sh /scripts/docker_entrypoint2.sh |ts >> /scripts/logs/default_task.log 2>&1
50 23 */3 * * rm /scripts/logs/*.log
15 8,12 * * * node /scripts/sqxs.js >> /scripts/logs/sqxs.log 2>&1
