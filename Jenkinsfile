node {

    stage("Build Docker Image"){
        sh 'docker build - t alexa/dockerwebapp'
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
