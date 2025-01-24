pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-west-2' // Regione AWS
    }

    stages{
        stage ('inito'){
            steps{
                terraform init
            }
        }
        stage ('plano'){
            steps{
                sh 'terraform plan -out=tfplan'
            }
        }
        stage ('apli'){
            steps{
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
    

}
