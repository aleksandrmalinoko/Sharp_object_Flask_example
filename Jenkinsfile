node {
    stages {
        stage('Whoami') {
            sh "whoami"
        }
        stage('Get Source') {
            // copy source code from local file system and test
            // for a Dockerfile to build the Docker image
            git ('https://github.com/aleksandrmalinoko/Sharp_object_Flask_example.git')
            if (!fileExists("Dockerfile")) {
                error('Dockerfile missing.')
            }
        }
        stage('Build Docker') {
            // build the docker image from the source code using the BUILD_ID parameter in image name
            sh "sudo docker build -t flask-app ."
        }
        stage("run docker container") {
            sh "sudo docker stop flask-app || true && sudo docker rm flask-app || true"
            sh "sudo docker run -p 8181:8000 --name flask-app -d flask-app "
        }
    }
}
