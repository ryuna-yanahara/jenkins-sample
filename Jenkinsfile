pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')   // 1分ごとにGitの更新を確認
    }

    stages {
        stage('Parallel Tests') {
            parallel {
                stage('Test A') {
                    steps { sh 'sleep 10; echo "A done"' }
                }
                stage('Test B') {
                    steps { sh 'sleep 10; echo "B done"' }
            }
        }
    }
}
