
HD_DOCKER_VERION="0.0.1"
HD_VERSION="3.2.0"
HD_IMAGE_PREFIX="hadoop"

sed -i.bak "s/#HD_VERSION#/$HD_VERSION/g" ./*/Dockerfile
sed -i.bak "s/#HD_DOCKER_VERION#/$HD_DOCKER_VERION/g" ./*/Dockerfile
sed -i.bak "s/#HD_IMAGE_PREFIX#/$HD_IMAGE_PREFIX/g" ./*/Dockerfile

rm ./*/Dockerfile.bak

