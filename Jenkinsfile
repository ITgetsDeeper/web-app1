pipeline {
    agent any
    
    parameters { 
         string(name: 'tomcat_dev', defaultValue: '54.145.179.246', description: 'Staging Server')
         def rtMaven = Artifactory.newMavenBuild()
         rtMaven.tool = maven // Tool name from Jenkins configuration
         def buildInfo
    } 


stages{
        stage ('Clone') {
        git url: 'https://github.com/ITgetsDeeper/web-app1.git'
	    }
        
        stage('Build'){
            steps {
                rtMaven.run pom: 'pom.xml', goals: 'clean install', buildInfo: buildInfo
            }
            
        }

        stage ('Deploy to Staging'){
                    steps {
                        sh "scp -i /home/jenkins/newone.pem **/target/*.war ubuntu@54.145.179.246:/var/lib/tomcat8/webapps"
                    }
                }
	  }
}