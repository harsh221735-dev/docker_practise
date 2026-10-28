# docker_practise
docker build -t docker_practise . : to build docker image 
docker run -p 8000:8000 docker_practise #the 1st 8000 is of image port that we specify in image, cannot be chnaged here only in docker file and other 8000 is our system port that we want the file to run on, can be changed. here we map both ports to run on our machine
learned following:
1. learned image(docker file) adding the programming language, installing libraries from requirement.txt , then running the python application in cmd
2. docker dekstop: to view the made image, container and then run on cmd 
3. pushed docker image to docker hub 
4. to pull use docker pull harshsakhare28/docker_practise:latest with 'latest' is a tag