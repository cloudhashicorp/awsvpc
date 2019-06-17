pipeline {
    agent {
        node {
            label 'master'
        }
    }
 

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
              
                sh 'sudo rm -r -f *;sudo git clone https://github.com/cloudhashicorp/awsvpc.git /home/ec2-user'
            }
        }
        stage('terraform init') {
            steps {
                  dir('/home/ec2-user/'
                 sh "terraform init -input=false"
            }
        }
        stage('terraform plan') {
            steps {
                dir('/home/ec2-user/'
                sh "terraform plan inut=false"
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
