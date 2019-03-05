pipeline {
    agent any

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

    }
}