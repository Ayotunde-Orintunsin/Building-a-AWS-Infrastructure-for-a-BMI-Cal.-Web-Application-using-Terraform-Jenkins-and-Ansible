pipeline {
    agent any

    environment {
        REPO_URL = 'https://github.com/Ayotunde-Orintunsin/Building-a-AWS-Infrastructure-for-a-BMI-Cal.-Web-Application-using-Terraform-Jenkins-and-Ansible.git'
        BRANCH_NAME = 'main'
    }

    stages {
        stage('Clone Repository') {
            steps {
                script {
                    try {
                        echo 'Cloning repository...'
                        git branch: "${BRANCH_NAME}", url: "${REPO_URL}"
                    } catch (Exception e) {
                        error "Failed to clone repository. Please check the repository URL and branch name. Error: ${e.message}"
                    }
                }
            }
        }

        stage('Terraform Init') {
            steps {
                echo 'Initializing Terraform...'
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                echo 'Validating Terraform configuration...'
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                echo 'Planning Terraform changes...'
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Applying Terraform changes...'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Infrastructure provisioned successfully.'
        }
        failure {
            echo 'Pipeline failed. Please check the logs and rectify the issues.'
        }
    }
}
