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
     { withMaven(globalMavenSettingsConfig: '87c25f6e-6023-4536-9b20-a8b1fc62bced', jdk: 'JDK_HOME', maven: 'MVN_HOME', mavenSettingsConfig: 'aba0e834-3533-4503-915d-e2f4e22b46f3') 
      { sh 'mvn package' }
     }}
   
} }



