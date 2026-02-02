pipeline {
    agent any

    stages {

        stage('Clone GitHub Repo') {
            steps {
                git 'https://github.com/Shivappapadennavar/music.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t shivu0777/music-player:latest .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f music-player || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 80:80 --name music-player shivu0777/music-player:latest'
            }
        }
    }
}
