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
