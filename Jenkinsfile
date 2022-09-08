pipeline {
    agent any 
    stages {
        stage('GitCheckout') {
            steps {
               git branch: 'main', url: 'https://github.com/radhi-17/jenkins-terraform.git'
            }
        }
        stage ('Terraform init') {
            steps {
                sh '/usr/local/bin/terraform init'
            }
        }
        stage ('Terraform plan') {
            steps {
                sh '/usr/local/bin/terraform plan'
            }
        }
        stage('terraform action') {
            steps {
                echo '/usr/local/bin/terraform action is -->${action}' 
                sh '/usr/local/bin/terraform ${action} --auto-approve'
            }
        }
    }
}
