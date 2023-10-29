resource "aws_iam_role" "eks-service-role" {
  name               = "eks-service-role"
  assume_role_policy = file("/home/alam/Desktop/projects/aws_learning/IAM/policies/eks-default.json")
}

resource "aws_iam_policy_attachment" "attach-cluster-policy" {
  name       = "AmazonEKSClusterPolicy"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  roles      = [aws_iam_role.eks-service-role.name]
}

resource "aws_iam_policy_attachment" "attach-worker-node-policy" {
  name       = "AmazonEKSWorkerNodePolicy"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  roles      = [aws_iam_role.eks-service-role.name]
}

resource "aws_iam_policy_attachment" "attach-cni-policy" {
  name       = "AttachCNIPolicy"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  roles      = [aws_iam_role.eks-service-role.name]
}
resource "aws_iam_policy_attachment" "attach-pod-exec-policy" {
  name       = "AmazonEKSFargatePodExecutionRolePolicy"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
  roles      = [aws_iam_role.eks-service-role.name]
}
