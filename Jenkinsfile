pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                make build
            }
        }
        stage('Push') {
            steps {
                make push
            }
        }
    }
}