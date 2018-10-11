pipeline {
    agent any
    
    parameters { 
         string(name: 'tomcat_dev', defaultValue: '54.145.179.246', description: 'Staging Server')
        
    } 


stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
        }

        stage ('Deployments'){
            
                stage ('Deploy to Staging'){
                    steps {
                        sh "scp -i /home/ubuntu/newone.pem **/target/*.war ubuntu@${params.tomcat_dev}:/var/lib/tomcat8/webapps"
                    }
                }
        }
    }
}