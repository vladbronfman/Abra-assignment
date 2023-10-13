// Uses Declarative syntax to run commands inside a container.
pipeline {
    agent any
    stages {
         stage('checkout') {
                steps {
                git branch: 'develop',
                credentialsId: 'githubCredential',
                url: 'https://github.com/vladbronfman/abra-assignment.git'
                }
        }
        
        stage('Code format') {
            steps {
// https://devops.stackexchange.com/questions/4557/jenkins-node-image-at-kubernetes-plugin   
                 sh """ python3 -m pip install flake8 || echo Failed to install flake8 ;               """  
                 script {
                    def out = sh(returnStdout: true, script: 'flake8 app.py || echo Error')
                    echo "Flake8 report: '${out}"
                }    
                          
            }
        }
                
        
        stage('Code lint') {
            steps {
                 sh """ python3 -m pip install pylint || echo Failed to install pylint                """  
                 script {
                    def status = sh(returnStatus: true, script: 'pylint app.py')
                    if (status != 0) {
                        echo "Error: pylint exited with status ${status}"
                    } else {
                        echo "pylint executed successfully"
                    }
                }    
                  
 //               sh 'pylint your_file.py'
            }
        }
        
        stage('Test') {
            steps {
                sh 'python3 '
                sh 'python3 -m pytest'
            }
        }
        
        
        stage ('Clean Up'){
           steps{
                sh 'echo clean up'
           }
        }
    }
}
