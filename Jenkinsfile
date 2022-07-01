pipeline
{
  agent any
  stages
  {
    stage ('scm checkout')
    {
      steps
      { git branch: 'master', url: 'https://github.com/AnupCh1/maven-project' }
    }
    
    stage ('code compile')
    { steps
     { withMaven(globalMavenSettingsConfig: 'a88684ae-4007-4ca4-b918-301de49cf4a5', jdk: 'JDK_HOME', maven: 'MVN_HOME') 
      { sh 'mvn package' }
     }
    }
    stage ("docker image build") 
    { steps
     { sh 'docker build -t anup2507/devopsdocker:v1 .'}
    }
    stage ('push docker image')
    { steps
     { withDockerRegistry(credentialsId: 'DockerHubAccount', url: 'https://index.docker.io/v1/') }
      {
        sh 'docker push anup2507/devopsdocker:v1'
} } }


}
}

