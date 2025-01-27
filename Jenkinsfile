pipeline {
    agent any

    stages {
        stage('inito') {
            steps {
                powershell '''
                terraform init
                '''
            }
        }
        stage('plano') {
            steps {
                withCredentials([aws(credentialsId: '903266019256')]) {
                    powershell '''
                    $env:TF_VAR_aws_access_key=$env:AWS_ACCESS_KEY_ID
                    $env:TF_VAR_aws_secret_key=$env:AWS_SECRET_ACCESS_KEY
                    terraform plan -out=tfplan
                    '''
                }
            }
        }
        stage('apli') {
            steps {
                withCredentials([aws(credentialsId: '903266019256')]) {
                    powershell '''
                    $env:TF_VAR_aws_access_key=$env:AWS_ACCESS_KEY_ID
                    $env:TF_VAR_aws_secret_key=$env:AWS_SECRET_ACCESS_KEY
                    terraform apply -auto-approve tfplan
                    '''
                }
            }
        }
    }
}
