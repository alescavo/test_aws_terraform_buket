pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'us-west-2' // Regione AWS
    }

    
    post {
        always {
            cleanWs()
        }
    }
}
