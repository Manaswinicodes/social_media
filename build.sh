docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID manaswinisharma/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID manaswinisharma/$JOB_NAME:latest

docker push manaswinisharma/$JOB_NAME:$BUILD_ID

docker push manaswinisharma/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID manaswinisharma/$JOB_NAME:$BUILD_ID manaswinisharma/$JOB_NAME:latest
