pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/mukesh-tp/ModelLabDevOps.git', branch: 'master'
            }
        }
        stage('Clean') {
            steps {
                sh 'mvn clean'
            }
        }
        stage('Compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Verify') {
            steps {
                sh 'mvn verify'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'sudo docker build -t my-java-app .'
            }
        }
        stage('Run Application') {
            steps {
                sh 'sudo docker run --rm my-java-app'
            }
        }
    }
    post {
        always {
            echo 'Pipeline complete'
        }
    }
}

