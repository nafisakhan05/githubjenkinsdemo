pipeline {
    agent any
    environment {
        PYTHON = "C:\\Users\\nextgen\\AppData\\Local\\Programs\\Python\\Python312\\python.exe"
    }
    stages {
        stage('Checkout Code'){
            steps {
                 checkout scm
            }
        }
        stage('Install dependencies'){
            steps {
                 bat 'pip install -r requirements.txt'
            }
        }
        stage('Extract data'){
            steps {
                bat "${env.PYTHON} etl.py"
            }
        }
    }
}