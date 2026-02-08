pipeline {
    agent any

    environment {
        IMAGE_NAME = "myapp"
    }

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Stop Old Containers') {
            steps {
                bat 'docker compose down || exit 0'
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                bat 'docker compose up -d'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo ' Pipeline failed'
        }
    }
}