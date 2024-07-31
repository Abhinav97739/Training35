## Project 01

### Project Overview Your organization is implementing continuous integration (CI) practices to streamline the software development lifecycle. As part of this initiative, you will create a Jenkins declarative pipeline for building a simple Maven project hosted on GitHub. This project aims to automate the build process, ensure code quality, and facilitate continuous delivery (CD).

## Objectives

- Create a Jenkins pipeline script using declarative syntax.
- Clone a Maven project from a specified GitHub repository.
- Execute the build process and run unit tests.
- Archive build artifacts.
- Provide clear feedback on build status through Jenkins' UI and console output.

## Instructions
1. Setup Jenkins Job

    Create a new Jenkins pipeline job.
    Configure the job to pull the Jenkinsfile from the GitHub repository.

2. Create Jenkinsfile

    Write a declarative pipeline script (Jenkinsfile) that includes the following stages:
    Clone Repository: Clone the Maven project from the GitHub repository.
    Build: Execute the Maven build process (mvn clean install).
    Test: Run unit tests as part of the Maven build.
    Archive Artifacts: Archive the build artifacts for future use.

3. Configure Pipeline Parameters

    Allow the pipeline to accept parameters such as Maven goals and options for flexibility.
    Ensure the pipeline can be easily modified for different build configurations.

4. Run the Pipeline

    Trigger the Jenkins pipeline job manually or set up a webhook for automatic triggering on GitHub repository changes.
    Monitor the build process through Jenkins' UI and console output.

5. Deliverables
Jenkinsfile: A declarative pipeline script with the defined stages and steps.

```Jenkinsfile
pipeline {
    agent any
    tools {
        maven 'Maven-3.9.0'
    }

    parameters {
        choice(choices: ['test', 'compile', 'package'], description: "Select Maven Goal", name: "userChoice")
    }

    stages {
        stage ('clone repo') {
            steps {
                git url: 'https://github.com/harshap0202/sample-maven-project.git', branch: 'main', credentialsId: 'personal-git'
            }
        }

        stage ('maven build') {
            steps {
                    sh "mvn clean install"                        
                }
            }

        stage ('maven test') {
            steps {
                sh "mvn ${params.userChoice}"
            }
        }
        stage ('archive artifact') {
            steps {
                archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
            }
        }
    }
}
```
![alt text](1.png)
![alt text](2.png)

Build Artifacts: Successfully built and archived artifacts stored in Jenkins.

Build Reports: Output of the build process, including unit test results, displayed in Jenkins.

![alt text](3.png)
![alt text](4.png)

## Successful built of the pipeline

![alt text](5.png)