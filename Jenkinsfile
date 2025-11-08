pipeline {
    agent any
    stages {
        stage('Checkout Code'){
            steps {
                 git url: 'https://github.com/nafisakhan05/githubjenkinsdemo.git', branch:'main'
            }
        }
        stage('Build image'){
            steps {
                 bat 'docker build -t myimage'
            }
        }
        stage('Create container'){
            steps {
                bat 'docker run -d -p 8501:8501 myimage'
            }
        }
    }
}