resource "aws_eks_access_entry" "cloud9_access" {
  cluster_name      = aws_eks_cluster.eks.name
  principal_arn     = "arn:aws:iam::833558168913:role/ctuser20-cloud9"
  type              = "STANDARD"
}

