
version=${1}

docker build -t "docker.io/hk1232/operator-hello-world-runner:latest" .
docker tag docker.io/hk1232/operator-hello-world-runner:latest docker.io/hk1232/operator-hello-world-runner:0.${version}
docker push docker.io/hk1232/operator-hello-world-runner:0.${version}

echo "-------------------------------------------"
echo ""
echo "Now to publish the image in dockerhub do:"
echo ""
echo " docker login docker.io # With your docker credentials"
echo ""
echo " docker tag openshiftroadshow/parksmap:latest openshiftroadshow/parksmap:<VERSION>"
echo ""
echo " docker push openshiftroadshow/parksmap:<VERSION>"
echo ""
echo " NOTE: Replace <VERSION> with the actual version of the image you're building"
echo ""
echo "-------------------------------------------"
