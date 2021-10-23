#! /bin/sh
pjName='dp'
pjGitName='iep2021s2be-dp'

if [ ! -d "www/${pjGitName}" ]; then
    echo 'git clone'
    # shellcheck disable=SC2164
    cd www
    git clone https://Max-ZhaoLiu-MonashUni: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@github.com/Max-ZhaoLiu-MonashUni/${pjGitName}.git
    # shellcheck disable=SC2164
    cd ${pjGitName}
else
    echo 'git pull'
    # shellcheck disable=SC2164
    cd www/${pjGitName}
    git pull master
fi

docker stop ${pjName}
docker rm -f ${pjName}
docker rmi -f ${pjName}-i

docker build -t ${pjName}-i .
docker run --name=${pjName} -d --restart=always --privileged=true --network my_net -p 5000:5000 -v /home/liuzhaomax1/ftp/model:/usr/src/app/output ${pjName}-i