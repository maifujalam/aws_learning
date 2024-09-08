# Setup AWS Landing Zone

## Resource Modularity:

- Each resource is uniquely created as parent resource by inheriting from child resource.  
Child resource provides base template.
Example:- To create a VM we need aws resources like:- VPC,Subnet,keypair,security-group,etc.
- So the VM template wont create this dependency resources in its(VM creation) module.Rather it expects
all the dependency as an input parameters.Like:- you have to create VPC,Subnet,keypair,security-group,etc separately first before creating VM.Then pass
it as a parameter of VM creation.  
- The primary objective is to allow DRY(Dont Repeat Yourself) and do resource reusability. 

## Tagging for each resources:-
Each resource created by terraform has to be tagged as below for better management:-

  tags = {    
    Name       = var.vpc_name  
    Owner      = var.owner  
    CreatedBy  = "terraform"  
    ModulePath = path.module  
    CWD        = path.cwd  
  }

## S3 Bucket as backend  
---------- terraform-backend ----------  
bucket-name: terraform-backend-alam2  
region: ap-south-1  
tags: [ 'helm','helm-artifacts']  
description: Storing terraform backed  
created using: UI  

---------- helm-artifacts ----------
bucket-name: helm-artifacts
region: ap-south-1
tags: [ 'helm','helm-artifacts']
description: used for storing helm chart artifacts(charts) in .tgz format.
created using: terraform

