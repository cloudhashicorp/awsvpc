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
                 sh 'cd /home/ec2-user/'
                 sh 'sudo "terraform init" '
            }
        }
        stage('terraform plan') {
            steps {
            
                sh 'ls ./jenkins; sudo "/home/ec2-user/terraform plan" '
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
