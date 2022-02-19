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
                  sh 'git clone https://github.com/jaineshtrivedi/K8s-task.git'
                }
                //git url: 'https://github.com/jaineshtrivedi/K8s-task.git'

                }
           }
        stage('Java Version') {
              agent {
                         label 'slave'
                     }
                steps {

                     sh 'java --version'
                     sh 'ls -la'
                     //sh "chmod +x -R ${env.WORKSPACE}"
                     sh '''
                     sudo snap install microk8s --classic
                     sudo snap install microk8s --classic --channel=1.18/stable
                     sudo ufw allow in on cni0 && sudo ufw allow out on cni0
                     sudo ufw default allow routed
                     sudo microk8s enable dns dashboard storage
                     sudo microk8s status
                     microk8s config > config

                     '''
                  }
             }

        }
    }