pipeline {
    agent {
        label ''
    }
    stages {
        stage('git checkout'){
            steps {
                git url: 'https://github.com/gandru123/pipeline-with-terraform.git',
                branch: 'main'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
                }
        }
        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('format') {
            steps {
                sh 'terraform fmt'
            }
        }
        stage('infra scan') {
            steps {
                sh 'terrascan scan'
            }
        }
        stage('Lingt') {
            steps {
                sh 'tflint'
            }
        }
        stage('plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}