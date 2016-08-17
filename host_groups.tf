/* create the cluster tier security group */

resource "aws_security_group" "sg_cluster_access" {
  name = "sg_cluster_access"
  description = "Allow inbound access to the host"
 /* allow ssh access */
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 /* allow ambari-manager webui access */ 
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
