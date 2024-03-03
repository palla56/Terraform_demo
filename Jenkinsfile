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
                    // Run Terraform commands inside a Docker container with Docker-in-Docker (DIND)
                    sh 'docker run --rm --privileged -v ${WORKSPACE}:/workspace -v /var/run/docker.sock:/var/run/docker.sock -e "DOCKER_HOST=unix:///var/run/docker.sock" terraform-image terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container with Docker-in-Docker (DIND)
                    sh 'docker run --rm --privileged -v ${WORKSPACE}:/workspace -v /var/run/docker.sock:/var/run/docker.sock -e "DOCKER_HOST=unix:///var/run/docker.sock" terraform-image terraform plan'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Run Terraform commands inside a Docker container with Docker-in-Docker (DIND)
                    sh 'docker run --rm --privileged -v ${WORKSPACE}:/workspace -v /var/run/docker.sock:/var/run/docker.sock -e "DOCKER_HOST=unix:///var/run/docker.sock" terraform-image terraform apply -auto-approve'
                }
            }
        }
    }
}
