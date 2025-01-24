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
                    powershell 'terraform plan -out=tfplan'
                }
            }
        }
        stage ('apli'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'aws-credentials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    powershell 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
    

}
