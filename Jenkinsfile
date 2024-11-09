pipeline {
    agent any

    environment {
        // Set the Docker image name
        DOCKER_IMAGE = "python-docker-app"
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
                    // Optionally push the image to Docker Hub (skip if you don't need to push)
                    // withCredentials([usernamePassword(credentialsId: 'dockerhub_credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    //     sh "echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin"
                    //     sh "docker push ${DOCKER_IMAGE}:latest"
                    // }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
