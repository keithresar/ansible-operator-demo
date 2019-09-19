
#version=${1}
version=2

#docker build -t "docker.io/hk1232/operator-simpledb-runner:latest" .
#docker tag docker.io/hk1232/operator-simpledb-runner:latest docker.io/hk1232/operator-simpledb-runner:0.${version}
#docker push docker.io/hk1232/operator-simpledb-runner:0.${version}

docker build -t "quay.io/keithresar/operator-simpledb-runner:latest" .
docker tag quay.io/keithresar/operator-simpledb-runner:latest quay.io/keithresar/operator-simpledb-runner:0.${version}
docker push quay.io/keithresar/operator-simpledb-runner:0.${version}

