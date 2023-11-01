resource "aws_launch_template" "launch_template" {
  name = "launch_template_k8s_worker"
  block_device_mappings {
    device_name = "/dev/sda"
    ebs {
      volume_size = 20
    }
  }

}
