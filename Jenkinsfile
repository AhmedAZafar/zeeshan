pipeline {

    agent { node { label 'master' } }

    stages {
        stage("Prepare") {
            steps {
                //echo 'Jenkins scheduled and successfully started a job'
                //sh 'echo \'I am the new text \' >> ./PR.txt '
                //sh 'cat PR.txt'
                cleanWs()
                checkout scm

                //gradlew junit 
            }
        }

        stage('Cleanup'){
            steps {
                sh 'rm -rf PR.txt dummy.txt'
                sh 'ls -al'
            }
        }

        stage('check AWS connection') {
            steps {
                //sh 'whoami'
                aws s3 ls
            }
        }
    }

}