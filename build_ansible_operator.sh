
#version=${1}
version=1

docker build -t "docker.io/hk1232/operator-simpledb-runner:latest" .
docker tag docker.io/hk1232/operator-simpledb-runner:latest docker.io/hk1232/operator-simpledb-runner:0.${version}
docker push docker.io/hk1232/operator-simpledb-runner:0.${version}

