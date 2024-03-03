pipeline {
    agent {
        docker {
            image 'terraform-image'
            args '-v /var/run/docker.sock:/var/run/docker.sock'  // Mount Docker socket if needed
        }
    }
    
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}