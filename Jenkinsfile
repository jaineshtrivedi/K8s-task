pipeline {
    agent none
    environment {
     workspace1 = 'C:\\Users\\shifali.srivastava\\Desktop\\INFOSYS\\JANUARY\\Jenkins\\workspace'
    }
    stages {
        stage('checkout') {
            agent {
                node {
                label 'master'
                customWorkspace "${workspace1}"
                   }
            }
            steps{
                cleanWs()
                git url: 'https://github.com/shifali0102/my-app.git'

                }
           }
        stage('Gradle Version') {
              agent {
                         label 'master'
                     }
                steps {

                     bat 'gradle --version'
                  }
             }
        stage('Gradle Version node') {
              agent {
            label 'windows'
                     }
                steps {
                   // git url: 'https://github.com/shifali0102/my-app1.git'
                     bat 'gradle --version'
                  }
             }
        }
    }