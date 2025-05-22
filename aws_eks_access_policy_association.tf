resource "aws_eks_access_policy_association" "cloud9_admin_policy" {
  cluster_name  = aws_eks_cluster.eks.name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
  principal_arn = "arn:aws:iam::833558168913:role/ctuser20-cloud9"

  access_scope {
    type = "cluster"
  }
}

