pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh 'make build'
      }
    }
    stage('Push') {
      agent any
      steps {
        sh 'make push'
      }
    }
  }
}