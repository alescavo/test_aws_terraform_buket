pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-west-2' // Regione AWS
    }

    stages{
        stage ('test'){
            sh 'dir'
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
