pipeline {
    agent any
    environment {
        registry = 'docker.io'  
        registryCredential = 'bbce4962-762d-448b-a24d-c641927f8a95' 
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Abhinav97739/Day14_task_files.git', branch: 'main'
            }
        }
        stage('build image') {
            steps{
                script{
                    docker.withRegistry('', registryCredential){
                        def customImage = docker.build("imperialx45/java-app:${env.BUILD_ID}")
                        customImage.push()

                    }
                }
            }
        }
        stage('Deploy Container') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        def runContainer = docker.image("imperialx45/java-app:${env.BUILD_ID}").run('--name day_fifteen -d')
                        echo "Container ID: ${runContainer.id}"
                    }
                }
            }
        }
    }
}
 