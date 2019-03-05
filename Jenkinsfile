pipeline {
    agent any

    environment {
        DOCKER_ID   = credentials('docker-id')
        DOCKER_PASS = credentials('docker-pass')
    }

    stages {

        stage('Build') {
            steps {
                sh 'make build'
            }
        }

        stage('Bake') {
            steps {
                sh 'make bake'
            }
        }

        stage('Docker login') {
            steps {
                sh 'make docker-login'
            }
        }

        stage('Push') {
            steps {
                sh 'make push-latest'
            }
        }

    }
}