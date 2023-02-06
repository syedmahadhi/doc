pipeline{
    agent{
        node{
            label 'docker-agent-python'
        }
    }
    stages{
        stage('Build'){
            steps{
                echo "building..."
                sh '''
                pip3 install -r requirements.txt
                '''
            }
        }
        stage('Test'){
            steps{
                echo "Testing..."
                sh '''
                python3 views.py
                ''' 
            }
        }
        stage('deliver'){
            steps{
                echo "Delivered"
            }
        }
    }
}