pipeline {
    agent any
    parameters {

        choice(name: 'OS', choices: ['linux', 'windows', 'macOS'], description: 'Pick OS')
        choice(name: 'ARCH', choices: ['amd64', 'arm64'], description: 'Pick ARCH')

    }
    stages {
        stage('Example') {
            steps {
                echo "Build for platform ${params.OS}"

                echo "Build for arch: ${params.ARCH}"

            }
        }
    }
}