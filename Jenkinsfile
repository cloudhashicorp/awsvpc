pipeline {
    agent {
        node {
            label 'master'
        }
    }
    environment {
        ACCESS_KEY = credentials('AKIA3J5DLXJWF2MWHSPF')
        SECRET_KEY = credentials('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')
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
              
                sh 'sudo rm -r -f *;sudo git clone https://github.com/cloudhashicorp/awsvpc.git'
            }
        }
        stage('terraform init') {
            steps {
           
                 sh "terraform init -var 'access_key=$ACCESS_KEY' -var 'secret_key=$SECRET_KEY'"
            }
        }
        stage('terraform plan') {
            steps {
            
                sh "terraform plan -var 'access_key=$ACCESS_KEY' -var 'secret_key=$SECRET_KEY'"
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
