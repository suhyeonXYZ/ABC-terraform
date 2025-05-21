resource "aws_eks_node_group" "eks_nodegroup" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "${var.prefix}-nodegroup"
  node_role_arn   = aws_iam_role.eks_nodegroup_role.arn
  subnet_ids      = aws_subnet.public[*].id

  scaling_config {
    desired_size = 3
    max_size     = 3
    min_size     = 3
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.ctuser20-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.ctuser20-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.ctuser20-AmazonEC2ContainerRegistryReadOnly,
  ]
}
