node {
    agent{
        docker {
             image 'dockerwebapp'
             args '-p 3000:3000'
        }
    }
    
    stage("Build"){
        steps{
            sh 'npm install'
        }
    }
    stage("deployment"){
        
        checkout scm

        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

            def customImage = docker.build("rathalexander/dockerwebapp")

            /* Push the container to the custom Registry */
            customImage.push()
        }
    }
}
