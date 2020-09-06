#!/bin/bash
BUILD=./scripts/docker-build-local.sh
PREFIX=Tourtogether
SERVICE=$PREFIX.Services
REPOSITORIES=($PREFIX.APIGateway $SERVICE.Identity)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Building a local Docker image: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $BUILD
     cd ..
done