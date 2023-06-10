# Pipeline Description:

## Orbs

Set of instructions to set up the pipeline server by installing software onto it or adding tools for example: installing node.js or install the AWS CLI.

In our Orbs we installed the following:

1. node
2. eb
3. aws-cli

## Jobs

Group of commands that can take actions on your app for example: install node_modules ,run  build or deploy scripts

In this stage we have the following jobs:

1. Build - Continuous Integration
2. Test - Continuous Integration
3. Hold - Continuous Delivery
4. Deploy - Continuous Delivery


## 1. Build Job

The build job is responsible for building both the front-end and back-end applications. It uses the cimg/node:18.16 Docker image as a base image to run the necessary commands. The job has the following steps:

* Install Node and Checkout Code: This step installs Node.js and checks out the code from the Git repository.

* Install Front-End Dependencies: This step installs the front-end dependencies specified in the root level package.json file using the npm run frontend:install command.

* Install API Dependencies: This step installs the API dependencies specified in the root level package.json file using the npm run api:install command.

* Front-End Build: This step builds the front-end application using the npm run frontend:build command.

* API Build: This step builds the back-end API using the npm run api:build command.

## 2. Test Job

The test job is responsible for running linters on the code to make sure the code passes code formatting standards

* Front-End Lint: This step lints the front-end code using the npm run frontend:lint command.

## 3. Hold Job

The hold job is a manual approval step that is triggered only if the build job succeeds and the branch being built is either master or main. This job waits for manual approval before proceeding to the next step.

## 4. Deploy Job

The deploy job is responsible for deploying the front-end and back-end applications to AWS Elastic Beanstalk. It uses the cimg/base:stable Docker image as a base image to run the necessary commands. The job has the following steps:

* Install Node, Setup Elastic Beanstalk, and AWS CLI: This step installs Node.js, sets up Elastic Beanstalk, and installs the AWS CLI.

* Checkout Code: This step checks out the code from the Git repository.

* Deploy App: This step installs dependencies, builds the front-end and back-end applications, and deploys them to Elastic Beanstalk using the npm run deploy command.

### Workflow
The pipeline is designed to be run as a single workflow called udagram. This workflow consists of the following jobs:

* Build
* Test
* Hold
* Deploy

The Hold job is only triggered if the Build job succeeds and the branch being built is either master or main. Once the Hold job is approved, the Deploy job is triggered to deploy the applications to Elastic Beanstalk.