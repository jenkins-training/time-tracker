pipeline {
  agent {
    docker {
      args '-v /root/.m2:/root/.m2'
      image 'maven:3-alpine'
      reuseNode true
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package pmd:pmd checkstyle:checkstyle findbugs:findbugs'
      }
    }
  }
}
