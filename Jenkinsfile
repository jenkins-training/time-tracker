pipeline {
  agent any
  stages {
    stage('Check version control') {
      agent any
      steps {
        git(url: 'https://github.com/fcleyssac/time-tracker.git', changelog: true, poll: true)
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