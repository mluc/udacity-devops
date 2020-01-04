pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo "Hello from course 3"'
                sh '''
                echo "Multiline shell steps works too"
                ls -lah
                '''
                sh 'tidy -q -e *.html'
            }
        }
    }
}