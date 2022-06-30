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
     { withMaven(globalMavenSettingsConfig: jdk: 'JDK_HOME', maven: 'MVN_HOME') 
      { sh 'mvn package' }
     }
    }
    
  }
}
