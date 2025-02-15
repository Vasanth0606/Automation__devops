pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git ''
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t my-app:latest .'
            }
        }
    }
}
