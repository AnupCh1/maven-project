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
     { withMaven(globalMavenSettingsConfig: '3d9bff58-0c9d-4517-8121-0a2cc8838556', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: 'null') 
      { sh 'mvn compile' }
     }
   
} } }



