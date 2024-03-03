pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/palla56/Terraform_demo.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container
                    sh 'docker run -v ${WORKSPACE}:/workspace terraform-image terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container
                    sh 'docker run -v ${WORKSPACE}:/workspace terraform-image terraform plan'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container
                    sh 'docker run -v ${WORKSPACE}:/workspace terraform-image terraform apply -auto-approve'
                }
            }
        }
    }
}
