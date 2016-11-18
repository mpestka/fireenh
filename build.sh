#!/bin/bash -e

IMPLIED_BUILD_BASE=$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )

BUILD_BASE=${1:-${IMPLIED_BUILD_BASE}}

pushd ${BUILD_BASE}
    ./gradlew clean build

popd
