# Setup AWS Landing Zone

# S3 Bucket
---------- terraform-backend ----------
bucket-name: terraform-backend-alam
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

