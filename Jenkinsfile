pipeline {
    agent any
    stages {
        stage('build docker file') {
			steps {
				sh 'echo "building docker fie" '
				sh 'docker build -t wordpress:1.0.0 .'
				}
			}
		stage('push to dockerhub'){
			steps{
				withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'pass', usernameVariable: 'user')]){
				sh 'docker tag wordpress:1.0.0 raghuram889/wordpress:1.0.0'
				sh 'docker push raghuram889/wordpress:1.0.0'
				}
			}
	}		
	}
	}