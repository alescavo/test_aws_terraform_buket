pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-west-2' // Regione AWS
    }

    stages{
        stage ('inito'){
            steps{
                powershell 'terraform init'
            }
        }
        stage ('plano'){
    steps{
        withCredentials([usernamePassword(credentialsId: 'aws-credentials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
            powershell '''
            $env:TF_VAR_aws_access_key=$env:AWS_ACCESS_KEY_ID
            $env:TF_VAR_aws_secret_key=$env:AWS_SECRET_ACCESS_KEY
            terraform plan -out=tfplan
            '''
        }
    }
        stage ('apli'){
            steps{
                powershell 'terraform apply -auto-approve tfplan'
            }
        }
    }

    }
}
