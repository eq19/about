#!/bin/bash

echo -e "\nWHOAMI\n$hr"
sudo chown -R $(id -u):$(id -g) $PWD
whoami
echo $HOME
pwd
id

echo -e "$hr\nENVIRONTMENT\n$hr"
[[ -z $JEKYLL_GITHUB_TOKEN ]] && export JEKYLL_GITHUB_TOKEN=$JEKYLL_GITHUB_TOKEN
[[ -z $SSL_CERT_FILE ]] && export SSL_CERT_FILE=$(realpath .github/hook-scripts/cacert.pem)
printenv | sort

echo -e "$hr\nPROJECT CONFIG\n$hr"
gcloud config list --all

echo -e "\n$hr\nSYSTEM INFO\n$hr"
gcloud info
python --version

echo -e "\n$hr\nHOME PROFILES\n$hr"
echo $HOME
ls -al $HOME

echo -e "$hr\nROOT PROFILES\n$hr"
echo /root
[[ "$(whoami)" == "root" ]] && ls -alL /root || sudo bash -c 'ls -alL /root'

echo -e "$hr\nSSH FILES\n$hr"
echo $(whoami) /root/.ssh
[[ "$(whoami)" == "root" ]] && ls -alL /root/.ssh || sudo bash -c 'ls -alL /root/.ssh'

echo -e "$hr\nBIN FILES\n$hr"
echo $HOME/.local/bin
ls -al $HOME/.local/bin

echo -e "\n$hr\nFILE SYSTEM\n$hr"
df -h

echo -e "\n$hr\nALL REPOSITORY\n$hr"
ls -al /

echo -e "\n$hr\nCURRENT REPOSITORY\n$hr"
pwd
#mv assets docs/assets
ls -al

echo -e "\n$hr\nSOURCE REPOSITORY\n$hr"
ls -al docs

echo -e "\n$hr\nASSETS REPOSITORY\n$hr"
if ! [ -x "$(command -v tree)" ]; then
  tree assets >&2
  ls -R assets
fi

[[ ! -x "$(command -v docker)" ]] && exit 0
echo -e "\n$hr\nDOCKER VERSION\n$hr"
docker version

echo -e "\n$hr\nDOCKER INFO\n$hr"
docker info

echo -e "$hr\nIMAGE BUILDERS\n$hr"
docker images --all | sort

echo -e "\n$hr\nCURRENTLY RUNNING\n$hr"
docker ps
