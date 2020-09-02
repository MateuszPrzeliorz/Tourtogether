#!/bin/bash
REPOSITORIES=(Tourtogether Tourtogether.APIGateway Tourtogether.Services.Identity)

if [ "$1" = "-p" ]
  then
    echo ${REPOSITORIES[@]} | sed -E -e 's/[[:blank:]]+/\n/g' | xargs -I {} -n 1 -P 0 sh -c 'printf "========================================================\nCloning repository: {}\n========================================================\n"; git clone https://github.com/mateusz-przeliorz/{}.git'
  else
    for REPOSITORY in ${REPOSITORIES[*]}
    do
      echo ========================================================
      echo Cloning repository: $REPOSITORY
      echo ========================================================
      REPO_URL=https://github.com/mateusz-przeliorz/$REPOSITORY.git
      git clone $REPO_URL
    done
fi