#!/bin/bash

docker build -t pixelagent007/beef .
docker image prune -f
