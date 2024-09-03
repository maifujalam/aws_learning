1. Install helm plugin to local: helm plugin install https://github.com/hypnoglow/helm-s3.git --version 0.16.2
2. Create s3 bucket as public: 
3. Initialize 1st time helm repo: helm s3 init s3://public-helm-repository-20231023095000508500000001/charts/
4. Add helm repo to a local system: helm repo add public-helm-repository s3://public-helm-repository-20231023095000508500000001/charts/
5. Push to helm repo:  helm s3 push ./epicservice-0.7.2.tgz mynewrepo
6. Pull from helm repo:  helm pull coolchart/epicservice --version "0.5.1"
7. Delete helm repo:  helm s3 delete epicservice --version 0.7.2 mynewrepo
8. Helm repo reindex: helm s3 reindex public-helm-repository