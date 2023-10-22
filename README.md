# Setup AWS Landing Zone

# S3 Bucket
---------- helm-artifacts ----------
bucket-name: helm-artifacts
region: ap-south-1
tags: [ 'helm','helm-artifacts']
description: used for storing helm chart artifacts(charts) in .tgz format.

---------- terraform-backend ----------
bucket-name: helm-artifacts
region: ap-south-1
tags: [ 'helm','helm-artifacts']
description: Storing terraform backed

