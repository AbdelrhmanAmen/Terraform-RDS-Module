resource "aws_db_instance" "default" {
    allocated_storage    = var.storage
    db_name              = "${var.author}Database"
    engine               = var.engine
    engine_version       = var.engine_version
    instance_class       = var.instance_class
    username             = var.username
    password             = var.password
    db_subnet_group_name = var.subnet_ids
    skip_final_snapshot  = var.skip_snapshot
    vpc_security_group_ids = [aws_security_group.database_security_group.id]
}