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
                powershell 'terraform plan -out=tfplan'
            }
        }
        stage ('apli'){
            steps{
                powershell 'terraform apply -auto-approve tfplan'
            }
        }
    }
    

}
