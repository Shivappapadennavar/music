pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t music-player .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker rm -f music-player || true
                '''
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker run -d -p 80:80 --name music-player music-player
                '''
            }
        }
    }
}

