// Uses Declarative syntax to run commands inside a container.
pipeline {
    agent any
    stages {
        stage('Main') {
            steps {
                sh 'hostname'
                 sh """ python3 -m pip install flake8 && flake8 app.py;
                echo Hoho;
                """
            }
        }
    }
}
