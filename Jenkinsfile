pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package pmd:pmd checkstyle:checkstyle findbugs:findbugs'
      }
    }
  }
}