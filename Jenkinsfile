pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Show files') {
            steps {
                sh 'ls -la'
                sh 'cat README.md || true'
            }
        }
    }
}
