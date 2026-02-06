pipeline {
    agent any
 environment {
    
        IMAGE_NAME = 'html-portfolio'
        CONTAINER_NAME = 'html-portfolio-container'
    }
    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Verify Files') {
            steps {
                bat 'echo Checking project files'
                bat 'dir'
                bat 'if not exist index.html exit 1'
            }
        }

        stage('Success') {
            steps {
                bat 'echo HTML Portfolio CI pipeline completed'
            }
        }
    }
}