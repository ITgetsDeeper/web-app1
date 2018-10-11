node {
    def server = Artifactory.newServer url: https://afactory.jfrog.io/afactory, credentialsId: afactory-admin
    def rtMaven = Artifactory.newMavenBuild()
    def buildInfo

    stage ('Clone') {
        git url: 'https://github.com/ITgetsDeeper/web-app1.git'
    }

    stage ('Artifactory configuration') {
        rtMaven.tool = maven // Tool name from Jenkins configuration
        rtMaven.deployer releaseRepo: 'libs-release-local', snapshotRepo: 'libs-snapshot-local', server: server
        rtMaven.resolver releaseRepo: 'libs-release', snapshotRepo: 'libs-snapshot', server: server
        buildInfo = Artifactory.newBuildInfo()
    }

    stage ('Exec Maven') {
        rtMaven.run pom: 'pom.xml', goals: 'clean install', buildInfo: buildInfo
    }

    stage ('Publish build info') {
        server.publishBuildInfo buildInfo
    }
    stage ('Deploy to Tomcat') {
    	sh "scp -i /home/jenkins/newone.pem **/target/*.war ubuntu@54.145.179.246:/var/lib/tomcat8/webapps"                      
    }

}