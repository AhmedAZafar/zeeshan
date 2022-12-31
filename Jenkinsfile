pipeline {

    agent { node { label 'master' } }

    stages {
        stage("Stage 1") {
            steps {
                echo 'Jenkins scheduled and successfully started a job'
                sh 'echo \'I am the new text \' >> ./PR.txt '
                sh 'cat PR.txt'
            }
        }

        stage('Stage 2'){
            steps {
                sh 'rm -rf PR.txt dummy.txt'
                sh 'ls -al'
            }
        }
    }

}