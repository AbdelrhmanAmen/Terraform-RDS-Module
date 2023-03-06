data "aws_vpc" "vpc" {
    id = var.vpc
}

resource "aws_security_group" "database_security_group"{
    name = "rds-security-group"
    vpc_id= data.aws_vpc.vpc.id
    ingress {
    description ="Allow inbound traffic from application security group only"
    from_port        = "3306"
    to_port          = "3306"
    protocol         = "tcp"
    security_groups=[var.app_security_group_id]
    }

    tags = {
        Name = "rds-sg-s-${var.author}"
    }
}