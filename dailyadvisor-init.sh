#!/bin/bash

realpath() {
    [[ $1 = /* ]] && echo "$1" || dirname "$PWD/${1#./}"
}
DIR=`realpath $0`

cd $DIR/../
PROJECT_NAME=`basename $(pwd)`
cd $DIR

if [ -e $DIR/DailyAdvisor-PWA ] ;then
    echo "DailyAdvisor-PWA project already exists"
    echo "Updating"
    git -C $DIR/DailyAdvisor-PWA pull
else
    git clone https://github.com/code-pride/DailyAdvisor-PWA.git $DIR/DailyAdvisor-PWA
    echo "Project DailyAdvisor-PWA has been cloned"
fi

if [ -e $DIR/api-service ] ;then
    echo "api-service project already exists"
    echo "Updating"
    git -C $DIR/api-service pull
else
    git clone -b task/no-login https://github.com/code-pride/DailyAdvisor-API.git $DIR/api-service
    echo "Project api-service has been cloned"
fi

if [ -e $DIR/user-service ] ;then
    echo "user-service project already exists"
    echo "Updating"
    git -C $DIR/user-service pull
else
    git clone -b task/docker https://github.com/code-pride/UserService.git $DIR/user-service
    echo "Project user-service has been cloned"
fi

if [ -e $DIR/eureka ] ;then
    echo "Eureka project already exists"
    echo "Updating"
    git -C $DIR/eureka pull
else
    git clone -b develop https://github.com/code-pride/EurekaDiscovery.git $DIR/eureka
    echo "Project eureka has been cloned"
fi

if [ -e $DIR/gateway ] ;then
    echo "Gateway project already exists"
    echo "Updating"
    git -C $DIR/DailyAdvisor-PWA pull
else
    git clone -b spring-gateway https://github.com/code-pride/Gateway.git $DIR/gateway
    echo "Project gateway has been cloned"
    git -C $DIR/gateway pull
fi

if [ -e $DIR/tests ] ;then
    echo "Tests project already exists"
    echo "Updating"
    git -C $DIR/tests pull
else
    git clone -b develop https://github.com/code-pride/IntegrationTests.git $DIR/tests
    echo "Project tests has been cloned"
fi