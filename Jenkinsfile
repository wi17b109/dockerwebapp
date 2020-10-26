pipeline {
    agent{
        docker {
             image 'dockerwebapp'
             args '-p 3000:3000'
        }
    }
    
    stages{
        stage("Build"){
            steps{
                sh 'npm install'
            }
        }
    }
}
