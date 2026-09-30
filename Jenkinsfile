pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')   // 1分ごとにGitの更新を確認
    }

    stages {
        stage('Checkout') {
            steps { checkout scm }
        }
        stage('Test') {
            steps {
                sh 'chmod +x test.sh calc.sh'
                sh './test.sh'
            }
        }
    }
}
