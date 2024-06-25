pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Choose whether to apply or destroy the infrastructure'
        )
    }

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
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                echo 'Planning Terraform changes...'
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                echo 'Applying Terraform changes...'
                sh 'terraform apply -auto-approve tfplan'
            }
        }

        stage('Terraform Destroy Plan') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                echo 'Planning Terraform destroy...'
                sh 'terraform plan -destroy -out=tfplan'
            }
        }

        stage('Terraform Destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                echo 'Destroying Terraform-managed infrastructure...'
                sh 'terraform destroy -auto-approve'
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
