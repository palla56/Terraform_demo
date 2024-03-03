pipeline {
    agent any
    
    stages {
        stage('Terraform') {
            steps {
                script {
                    docker.image('terraform-image').inside {
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}
