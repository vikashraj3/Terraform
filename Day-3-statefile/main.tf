
resource "aws_instance" "dev" {
    ami = "ami-084a7d336e816906b"
    instance_type = "t2.medium"
    tags = {
      Name = "vikashraj"
    }

}

resource "aws_iam_role" "ec2_role" {
  name = "ec2-s3-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}



