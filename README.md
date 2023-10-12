# Abra-assignment
interview assignment  simple CI 

| PR | Master |
|-----|------|
|Code format | |
|Lint / Static Analysis | |
|*2.1. S.A. (SonarQube) | |
| Build | Build |
| Unit Test | UT |
|Container | Cont.|
|Cont. Run Test|Push|


Setup:
Source control Github https://github.com/vladbronfman/abra-assignment 
Jenkins server setup : container of jenkins/jenkins:lts-jdk11 on top of WSL2 Ubuntu host.  
k8s cluster - kind (https://kind.sigs.k8s.io/docs/user/quick-start/)  

Jenkins runs Multibranch pipeline to catch PR event and uses Jenkins_k8s file to set pipeline steps.  
Job runs in  slave of k8s Pod . The setup is due to absence of properly configured python3 on the host and restrictions of Jenkins image.  

Unfortunately, job implements few parts only of assignment's tasks: Code format,Lint,Unit Test, Container build  
As well it lacks proper error handling, publish, reports and pretty much all proper features of build.


Jenkins container  run as
docker  run -d --name jenkins -p 58080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v $(which docker):/usr/bin/docker jenkins/jenkins:lts-jdk11
Config file of job  is config.xml in this repo. 

Unfortunately in my setup, Jenkins runs inside Ubuntu host and there is an issue to run docker from within: it causes error https://stackoverflow.com/questions/72990497/getting-glibc-2-32-and-glibc-2-34-not-found-in-jenkins-docker-with-dind-on 


 







