data "aws_vpc" "selected" {
    id = var.vpc_id
}

resource "aws_security_group" "database_security_group"{
    name = "rds-security-group"
    vpc_id= data.aws_vpc.selected.id
    ingress {
    description ="Allow inbound traffic from application security group only"
    from_port        = "3306"
    to_port          = "3306"
    protocol         = "tcp"
    db_subnet_group_name= var.subnet_ids
    security_groups=[var.app_security_group_id]
    }

    tags = {
        Name = "rds-sg-s-${var.author}"
    }
}