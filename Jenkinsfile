pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/mukesh-tp/ModelLabDevOps.git', branch: 'master'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t my-java-app .'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Run Application') {
            steps {
                sh 'docker run --rm my-java-app'
            }
        }
    }
    post {
        always {
            echo 'Pipeline complete'
        }
    }
}
