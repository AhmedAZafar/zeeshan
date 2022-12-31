pipeline {

    agent { node { label 'master' } }

    stages {
        stage("Echo Only") {
            steps {
                echo 'Jenkins scheduled and successfully started a job'
                sh 'echo \'I am the new text \' >> ./PR.txt '
                sh 'cat PR.txt'
            }
        }
    }

}