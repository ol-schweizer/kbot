pipeline {
    agent any
    parameters {

        choice(name: 'OS', choices: ['linux', 'windows', 'macOS'], description: 'Pick OS')
        choice(name: 'ARCH', choices: ['amd64', 'arm64'], description: 'Pick ARCH')

    }
    stages {
        stage('Build') {
            steps {
                echo "Build for platform ${params.OS}"
                echo "Build for arch: ${params.ARCH}"
                echo "BILD EXECUTION STARTED"
                sh "make build"

            }
        }
        
        stage('Image') {
            steps {
                echo "BILD EXECUTION STARTED"
                sh "make image"

            }
        }

        stage('Push') {
            steps {
                script {
                    docker.withRegistry( "","dockerhub" ) {
                    sh "make image"
                    }
                }
            }
        }    
    }
}