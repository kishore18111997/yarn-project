pipeline {
    agent any

    stages {
        stage('scm checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/kishore18111997/yarn-project.git'
            }
        }
        stage('build node.js') {
            steps {
                sh 'yarn install'
            }
        }
        stage('update version number') {
            steps {
                sh './update-version-number.sh'
            }
        }
        stage('show package.json file') {
            steps {
                sh 'head -n 5 package.json'
            }
        }
    }
}
