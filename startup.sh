#! /usr/bin/env bash
CHIPLAB_HOME=$(realpath "$(dirname "$0")")
IMAGE_NAME=focusedxiaoyang/chiplab:v1
CONTAINER_NAME=chiplab
CONTAINER_WORKDIR=/code
xhost +local:
#docker run -dit --rm --network host --http-proxy \
docker run -dit --rm --network host \
  -v "$CHIPLAB_HOME":"$CONTAINER_WORKDIR" -w "$CONTAINER_WORKDIR" \
  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY="$DISPLAY" \
  --name "$CONTAINER_NAME" "$IMAGE_NAME" bash -c "source $CONTAINER_WORKDIR/env.sh && bash"
docker attach "$CONTAINER_NAME"
xhost -local:
