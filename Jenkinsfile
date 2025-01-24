pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-west-2' // Regione AWS
    }

    stages{
        stage{
            sh 'dir'
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}
