pipeline {
  agent any
  stages {
    stage('test') {
      parallel {
        stage('test') {
          steps {
            echo 'sdf'
          }
        }
        stage('sets') {
          steps {
            echo 'sdfs'
          }
        }
      }
    }
    stage('sdfsf') {
      steps {
        echo 'sdf'
      }
    }
  }
}