# Infrastructure Description

Application is hosten on AWS and uses AWS services.

The services used are as follows:

## RDS:

Relational Database Service (Amazon RDS) is a service that aids in the administration and management of databases. 

RDS assists with tasks that include; upgrades, patching, installs, backups, monitoring performance checks, security etc.

## S3:

Simple Storage Service (Amazon S3), is Amazon's file storage service is reffered to as Object based storage stores files as objects. 

S3 is a foundational service and is used with many services such as Elastic Beanstalk and is configurable for web hosting.

## EB

Elastic Beanstalk, is a service that allows to upload and deploy web applications without having to configure, provision or scale EC2 machines, s3 buckets and even RDS databases. 

Elastic Beanstalk will handle deploying the app to the right-sized EC2 machines, load balancing, auto-scaling and app health monitoring. 

## Architecture Diagram:

![Documents](/public/ArchitectureDiagram.png)