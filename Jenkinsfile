node{
    stage('clone from git repository ') {
       git 'https://github.com/kanigantiyacob/Docker-Project.git'
}
    stage('Build docker image ') {
       sh label: '', script: 'docker build -t yacobkaniganti/tomimage .'
}
    stage('create container on Docker ') {
       sh label: '', script: 'docker run --name myimage -d -p 8081:8080 yacobkaniganti/tomimage'
}
    stage('push image into docker hub') {
        withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
       sh label: '', script: "docker login -u yacobkaniganti -p ${dockerHubPwd}"
} 
        
       sh label: '', script: 'docker push yacobkaniganti/tomimage'
}
}
