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
                    // Run Terraform commands inside a Docker container using the withDockerContainer step
                    withDockerContainer(image: 'terraform-image', args: '-v ${WORKSPACE}:/workspace') {
                        sh 'terraform init'
                    }
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container using the withDockerContainer step
                    withDockerContainer(image: 'terraform-image', args: '-v ${WORKSPACE}:/workspace') {
                        sh 'terraform plan'
                    }
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container using the withDockerContainer step
                    withDockerContainer(image: 'terraform-image', args: '-v ${WORKSPACE}:/workspace') {
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}
