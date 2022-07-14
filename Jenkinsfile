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
     { withMaven(globalMavenSettingsConfig: '3d9bff58-0c9d-4517-8121-0a2cc8838556', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: '2b4c12bf-8688-4fd3-854e-1f36655ecfb1') 
      { sh 'mvn compile' }
     }}
   
} }



