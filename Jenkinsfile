pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                	./jenkins/build/mvn.sh mvn -B -DskipTests clean install
                	./jenkins/build/build.sh
                	'''
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test' 
            }
        }
        stage('Deploy') {
            steps {
                echo "deploying"
            }
        }
    }
}
