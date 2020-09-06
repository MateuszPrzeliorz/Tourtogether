#!/bin/bash
export ASPNETCORE_ENVIRONMENT=local
BUILD=./scripts/dotnet-build-local.sh
PREFIX=Tourtogether
SERVICE=$PREFIX.Services
REPOSITORIES=($PREFIX.APIGateway $SERVICE.Identity)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Building a project: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $BUILD
     cd ..
done