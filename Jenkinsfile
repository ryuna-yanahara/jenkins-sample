pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('Test') {
            steps {
                sh 'chmod +x test.sh calc.sh'
                sh './test.sh'
            }
        }
        stage('Parallel Tests') {
            parallel {
                stage('Test A') {
                    steps {
                        sh 'sleep 10; echo "A done"'
                    }
                }
                stage('Test B') {
                    steps {
                        sh 'sleep 10; echo "B done"'
                    }
                }
            }
        }
    }
}
