pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /root/.m2:/root/.m2\''
    }

  }
  stages {
    stage('Check version control') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Log') {
      agent any
      steps {
        sh 'mvn pmd:pmd findbugs:findbugs checkstyle:checkstyle'
      }
    }
  }
}