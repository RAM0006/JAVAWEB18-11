pipeline {
    agent any

    tools {
        maven 'MAVEN3'
        jdk 'JDK11'
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

        stage('Deploy to Tomcat 9') {
            steps {
                sh '''
                mvn cargo:redeploy \
                -Dcargo.servlet.user=admin \
                -Dcargo.servlet.password=admin123 \
                -Dcargo.remote.uri="http://localhost:8080/manager/text" \
                -Dcargo.war.file=target/*.war
                '''
            }
        }
    }
}
