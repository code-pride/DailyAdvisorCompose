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
    echo "Skipping"
else
    git clone git@github.com:code-pride/DailyAdvisor-PWA.git $DIR/DailyAdvisor-PWA
    echo "Project DailyAdvisor-PWA has been cloned"
fi

if [ -e $DIR/DailyAdvisor-API ] ;then
    echo "DailyAdvisor-API project already exists"
    echo "Skipping"
else
    git clone git@github.com:code-pride/DailyAdvisor-API.git $DIR/DailyAdvisor-API
    echo "Project DailyAdvisor-API has been cloned"
fi

if [ -e $DIR/UserService-micro ] ;then
    echo "UserService-micro project already exists"
    echo "Skipping"
else
    git clone git@github.com:code-pride/UserService.git $DIR/UserService-micro
    echo "Project UserService-micro has been cloned"
fi

if [ -e $DIR/EurekaDiscovery ] ;then
    echo "EurekaDiscovery project already exists"
    echo "Skipping"
else
    git clone git@github.com:code-pride/EurekaDiscovery.git $DIR/EurekaDiscovery
    echo "Project EurekaDiscovery has been cloned"
fi

if [ -e $DIR/ZuulGateway ] ;then
    echo "ZuulGateway project already exists"
    echo "Skipping"
else
    git clone git@github.com:code-pride/ZuulGateway.git $DIR/ZuulGateway
    echo "Project ZuulGateway has been cloned"
fi