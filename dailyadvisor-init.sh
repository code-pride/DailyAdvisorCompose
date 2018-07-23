#!/bin/bash

realpath() {
    [[ $1 = /* ]] && echo "$1" || dirname "$PWD/${1#./}"
}
DIR=`realpath $0`

cd $DIR/../
PROJECT_NAME=`basename $(pwd)`
cd $DIR

if [ -e $DIR/DailyAdvisor-client ] ;then
    echo "DailyAdvisor-client project already exists"
    echo "Skipping"
else
    git clone git@github.com:codeProud/DailyAdvisor.git $DIR/DailyAdvisor-client
    echo "Project DailyAdvisor-client has been cloned"
fi

if [ -e $DIR/UserService-micro ] ;then
    echo "UserService-micro project already exists"
    echo "Skipping"
else
    git clone git@github.com:codeProud/UserService.git $DIR/UserService-micro
    echo "Project UserService-micro has been cloned"
fi

if [ -e $DIR/EurekaDiscovery ] ;then
    echo "EurekaDiscovery project already exists"
    echo "Skipping"
else
    git clone git@github.com:codeProud/EurekaDiscovery.git $DIR/EurekaDiscovery
    echo "Project EurekaDiscovery has been cloned"
fi

if [ -e $DIR/ZuulGateway ] ;then
    echo "ZuulGateway project already exists"
    echo "Skipping"
else
    git clone git@github.com:codeProud/ZuulGateway.git $DIR/ZuulGateway
    echo "Project ZuulGateway has been cloned"
fi