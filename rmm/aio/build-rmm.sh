#!/bin/bash
set -o xtrace
set -o errexit


DIR_HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DIR_TOP=${HOME}/.rmm-build
DIR_COMMON=${DIR_TOP}/common
DIR_RMM=${DIR_TOP}/rmm


trap "rm -rf ${DIR_TOP}" EXIT


rm -rf ${DIR_COMMON}
mkdir -p ${DIR_COMMON}
git clone http://advgitlab.eastasia.cloudapp.azure.com/EI-PaaS-Common/EI-Common.git ${DIR_COMMON}
cd ${DIR_COMMON}
chmod +x gradlew
git checkout develop
./gradlew clean fatJarWithoutVersion


rm -rf ${DIR_RMM}
mkdir -p ${DIR_RMM}
git clone http://advgitlab.eastasia.cloudapp.azure.com/EI-PaaS-RMM/RMM-EI-Server.git ${DIR_RMM}
cd ${DIR_RMM}
chmod +x gradlew
git checkout develop
./gradlew clean fatJarWithoutVersion explodedWar


cp -f ${DIR_COMMON}/DataWorker/build/libs/worker.jar ${DIR_HERE}/worker-common
cp -f ${DIR_RMM}/OTAWorker/build/libs/ota-worker.jar ${DIR_HERE}/worker-ota
cp -f ${DIR_RMM}/Worker/build/libs/worker.jar ${DIR_HERE}/worker-rmm
cp -f ${DIR_RMM}/WebApp/build/libs/portal-*.war ${DIR_HERE}/portal


