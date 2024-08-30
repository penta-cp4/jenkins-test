#! /bin/bash

echo "Start Spring Boot Application!"

appDir="/var/lib/jenkins/workspace/jenkins-boot-test/"
appName="RestApi"

echo "Start Spring Boot Application!"

CURRENT_PID=$(ps -ef | grep java | grep ${appName} | awk '{print $2}')
echo "${CURRENT_PID}"

if [ -z ${CURRENT_PID} ]; then
    echo ">현재 구동중인 어플리케이션이 없으므로 종료하지 않습니다."
else
    echo "> kill -9 ${CURRENT_PID} ==> 프로세스 kill ... "
    kill -9 ${CURRENT_PID}
    sleep 10
fi

echo ">어플리케이션 배포 진행합니다!"

jarName=$(ls ./build/libs/*SNAPSHOT.jar)

nohup java -jar ${appDir}${appName}/${jarName} &

echo "jar 배포까지 성공 !!"

exit 0
