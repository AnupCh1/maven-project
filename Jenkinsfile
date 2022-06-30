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
     { withMaven(globalMavenSettingsConfig: '8ae396264414ba7caa66a96515e71fafa5d47a47', jdk: 'JDK_HOME', maven: 'MVN_HOME') 
      { sh 'mvn package' }
     }
    }
    
  }
}
