#!/bin/bash

docker build -t PixelAgent007/beef .
docker image prune -f
