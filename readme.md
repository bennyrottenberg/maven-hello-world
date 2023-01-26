# DevOps-home-assignment-junior

The project is a simple "Hello world" Maven project with 2 Dockerfiles.

`Dockerfile` build the Java code and bundles the artifact to a Docker image.  
`DockerfileMultiStage` builds the artifact using Multi Stage Docker build and bundles the artifact to a smaller Docker image.  

Each Dockerfile has it's own GitHub Actions Workflow. 
- [`maven.yml`](.github/workflows/maven.yml)  
- [`multistage.yml`](.github/workflows/multistage.yml)  

## Answers
 
a. Which programming language is this? `Java`  
b. What is maven?  
```
Maven is a build tool developed by Apache to build, publish, and deploy Java apps.
```
c. How does maven work? 
```
Maven manages build, dependencies, version, publishing for Java applications according to the configurations defined in the `pom.xml` file.
```
d. What is this pom.xml everyone keeps mentioning? `See c.`



