node {
    def app
    stage('Clone') {
        checkout scm
    }
    stage('Build image') {
       app = docker.build("manu/nginx")
    }
    stage('Run image') {
        docker.image('manu/nginx').withRun('-p 81:81') { c ->
            sh 'docker ps'
            sh 'curl localhost:81'
        }
    }
}