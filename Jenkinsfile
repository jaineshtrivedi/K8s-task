pipeline {
    agent none
    stages {
        stage('checkout') {
            agent {
                label 'slave'
            }
            steps{
                cleanWs()
                withCredentials([gitUsernamePassword(credentialsId: 'git', gitToolName: 'git-tool')]) {
                  sh 'git fetch --all'
                }
                //git url: 'https://github.com/jaineshtrivedi/K8s-task.git'

                }
           }
        stage('Java Version') {
              agent {
                         label 'slave'
                     }
                steps {

                     bat 'java --version'
                  }
             }

        }
    }