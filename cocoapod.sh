#!/bin/bash

sources="https://github.com/CocoaPods/Specs.git"
podRepo="MyFrameworkDistribution"

# Grab pod name
podspecName=$(basename $(find . -name *.podspec) | sed 's/.podspec//g' )
version=$(awk '/\.version/' $podspecName.podspec | awk '/[0-9]\.[0-9]\.[0-9]/' | sed 's/.version//g'  | sed 's/[^0-9/.]//g')
echo ">>>>> $podspecName"

pod lib lint --allow-warnings


# Pod lint fail
if [ $? != 0 ];then
    exit 1
fi

git add -A
git commit -m 'updated package.'
git push

git tag -m "update podspec" $version
git push --tags

pod repo push $podRepo $podspecName.podspec --allow-warnings