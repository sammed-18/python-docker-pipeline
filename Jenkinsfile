pipeline {
    agent any

    environment {
        // Set the Docker image name
        DOCKER_IMAGE = "python-docker-app"
        DOCKER_USERNAME = "sammed18"  // Docker Hub username
        DOCKER_PASSWORD = "#5661@Sam"  // Docker Hub password
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                git 'https://github.com/sammed-18/python-docker-pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build("${DOCKER_IMAGE}:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    sh "echo ${DOCKER_PASSWORD} | docker login --username ${DOCKER_USERNAME} --password-stdin"
                    
                    // Push the image to Docker Hub
                    sh "docker push ${DOCKER_IMAGE}:latest"
                }
            }
        }
    }

    post {
        always {
            cleanWs() // Clean workspace after build
        }
    }
}
