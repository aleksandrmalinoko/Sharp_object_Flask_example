node {
    stages {
        stage('Whoami') {
            sh "whoami"
        }
        stage('Get Source') {
            git ('https://github.com/aleksandrmalinoko/Sharp_object_Flask_example.git')
            if (!fileExists("Dockerfile")) {
                error('Dockerfile missing.')
            }
        }
        stage('Deploy') {
            sh "sudo docker-compose build && sudo docker-compose up -d"
        }
    }
}
