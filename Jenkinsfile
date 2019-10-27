pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          agent any
          steps {
            sh 'echo "test1"'
          }
        }
        stage('test 2') {
          agent any
          steps {
            sleep(time: 1, unit: 'SECONDS')
            echo 'test'
          }
        }
      }
    }
    stage('Log') {
      agent any
      steps {
        sleep 4
        archiveArtifacts(fingerprint: true, artifacts: '*.xml', onlyIfSuccessful: true)
        junit(testResults: '*.xml', allowEmptyResults: true, healthScaleFactor: 3, keepLongStdio: true)
      }
    }
  }
}