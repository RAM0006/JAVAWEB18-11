pipeline {
    agent any

    tools {
        maven 'MAVEN-HOME'
        jdk 'jdk'
    }

    stages {

        stage('Checkout') {
            steps {
                git url: 'https://github.com/RAM0006/JAVAWEB18-11.git', branch: 'main'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Deploy WAR') {
            steps {
                sh '''
                curl -u admin:admin123 \
                -T target/webapp.war \
                "http://localhost:9090/manager/text/deploy?path=/webapp&update=true"
                '''
            }
        }

    }
}
