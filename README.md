# udacity-cloud-devops-engineer-nd-capstone-project
[![CardoEggert](https://circleci.com/gh/CardoEggert/udacity-cloud-devops-engineer-nd-capstone-project.svg?style=svg)](https://app.circleci.com/pipelines/github/CardoEggert/udacity-cloud-devops-engineer-nd-capstone-project?branch=main)

# Summary
This project is for the Udacity Cloud Devops Engineer nanodegree course. It is meant to be submission for the capstone project. This project contains a simple spring boot java app. The goal of this project is to show off what was learned during the nanodegree course. I am making use of Dockerfile, CloudFormation script, Kubernetes, and CircleCI.

# Files
* Dockerfile - file used for creating docker image
* app/ - app related files
* .circleci/files/configure-k8.yml - cloudformation script for setting up AWS EKS Cluster
* .circleci/files/k8/ - kubernetes related files for deployment and load balancing
* .circleci/config.yml - CircleCI configuration

# Instructions
## For building the docker image
1. Run `gradle bootJar` for creating the jar
2. Run `docker build --tag=<name> .`
3. Run `docker run -p 8080:8080 <name>`

## CircleCI
After commiting a new change the following will happen.
1. Does linting, compiling, and testing.
2. Builds jar file
3. Builds docker image with the created jar file
4. Deploys K8 using CloudFormation
5. Deploys app to K8 
6. Runs smoke tests (does curl command to newly deployed app) 

After applying service.yaml to K8, AWS EKS creates Elastic Load Balancer which can be used to make requests. The same is done inside using smoke tests.

