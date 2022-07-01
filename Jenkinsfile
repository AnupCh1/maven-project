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
      { sh 'mvn compile' }
     }
    }
    
  }
}
