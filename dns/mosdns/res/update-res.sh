#!/bin/sh
# FastGit 可能不好使,自己选择
GITHUB_PROXY=github.com

curl -L -o geosite.dat https://${GITHUB_PROXY}/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
curl -L -o geoip.dat https://${GITHUB_PROXY}/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
curl -L -o ecs_cn_domain.txt https://${GITHUB_PROXY}/pmkol/easymosdns/raw/main/ecs_cn_domain.txt
curl -L -o ecs_tw_domain.txt https://${GITHUB_PROXY}/pmkol/easymosdns/raw/main/ecs_tw_domain.txt
curl -L -o cdn_domain_list.txt https://${GITHUB_PROXY}/pmkol/easymosdns/raw/main/rules/cdn_domain_list.txt
curl -L -o gfw_ip_list.txt https://${GITHUB_PROXY}/pmkol/easymosdns/raw/main/rules/gfw_ip_list.txt
# 然后还要解包数据
mkdir -p geosite geoip
v2dat unpack geosite -o geosite geosite.dat
v2dat unpack geoip -o geoip geoip.dat