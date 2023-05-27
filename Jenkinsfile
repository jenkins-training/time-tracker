pipeline {
    agent any
    
    tools {
        //Que herramientas queremos utilizar 
        maven "Maven3"
        jdk "Java11"
    }

    environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'sqlite'
    }
    
    stages {
        stage('Hello') {
            steps {
                echo "Database engine is ${DB_ENGINE}"
                echo "DISABLE_AUTH is ${DISABLE_AUTH}"
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo "Job Name: ${env.JOB_NAME}"
                echo "Job Name: ${env.JAVA_HOME}"
            }
            
        }
        
        stage('Git Polling'){
            steps{
                //git branch: 'master', url: 'https://github.com/bellyster/time-tracker.git'
                git branch: 'master', credentialsId: 'GitHubKey', url: 'git@github.com:bellyster/time-tracker.git'
                
            }
        }
        
        stage('BUILD CON MAVEN'){
            steps{
               bat "mvn clean package -DskipTests" //windows
               
               // sh "mvn -Dmaven.test.failure.ignore=true clean package " //Unix
            }
            
            post{
                success{
                    echo 'Archivar Artefactos'
                    archiveArtifacts "core/target/*.jar"
                    archiveArtifacts "web/target/*.war"
                }
            }
        }
        
        stage('test maven'){
            steps{
                bat "mvn test"
                //sh "mvn test"
            }
        }
        
        
    }
}
