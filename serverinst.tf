/* set up HDP single node */

resource "aws_instance" "server" {

  /* set the initial key for the instance */
  key_name = "${var.keypair}"

  /* select the appropriate AMI */
  ami = "${lookup(var.ami_centos7, var.region.primary)}"
  instance_type = "${var.insttype.server}"

  /* delete the volume on termination */
  root_block_device {
    delete_on_termination = true
  }

  /* add to the security groups */
  vpc_security_group_ids = ["${aws_security_group.sg_cluster_access.id}"]

  tags {
    Name = "server"
    Platform = "${var.ami_centos7.platform}"
    /* Tier = "server" */
  }
}
