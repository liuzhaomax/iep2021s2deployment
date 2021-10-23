#! /bin/sh
pjName='admin'
pjGitName='iep2021s2fe-admin'

if [ ! -d "www/${pjGitName}" ]; then
    echo 'git clone'
    # shellcheck disable=SC2164
    cd www
    git clone https://Max-ZhaoLiu-MonashUni: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@github.com/Max-ZhaoLiu-MonashUni/${pjGitName}.git
    # shellcheck disable=SC2164
    cd ${pjGitName}/server
else
    echo 'git pull'
    # shellcheck disable=SC2164
    cd www/${pjGitName}/server
    git pull
fi

docker stop ${pjName}
docker rm -f ${pjName}
docker rmi -f ${pjName}-i

docker build -t ${pjName}-i .
docker run --name=${pjName} -d --restart=always --privileged=true --network my_net -p 3030:3030 -v /home/liuzhaomax1/ftp/static:/usr/src/app/static ${pjName}-i