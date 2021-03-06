#!/bin/bash -e


IMPLIED_BUILD_BASE=$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )
usage="$(basename "$0") [-h] [build_dir (defaults to ${IMPLIED_BUILD_BASE})"

if [[ $# -gt 1 || $1 == "-h" ]]; then
    echo $usage
    exit -1
fi

BUILD_BASE=${1:-${IMPLIED_BUILD_BASE}}


pushd ${BUILD_BASE}
    ./gradlew clean build

popd
