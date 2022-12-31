pipeline {

    agent { node { label 'master' } }

    stages {
        stage("Prepare") {
            steps {
                echo 'Jenkins scheduled and successfully started a job'
                sh 'echo \'I am the new text \' >> ./PR.txt '
                sh 'cat PR.txt'
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
                sh 'aws s3 ls'
            }
        }
    }

}