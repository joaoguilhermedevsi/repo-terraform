resource "aws_db_subnet_group" "default" {
  name = "main"
  subnet_ids = [ "${aws_subnet.private_a.id}", "${aws_subnet.private_b.id}" ]

  tags = {
    Name = "Meu Database subnet Group"
  }
}

resource "aws_db_instance" "web" {
  allocated_storage              = 10
  storage_type                   = "gp2"
  engine                         = "mysql"
  engine_version                 = "5.7"
  instance_class                 = "db.t2.micro"
  name                           = "mydb"
  username                       = "tray"
  password                       = "Pr0t3g!d0#"
  parameter_group_name           = "default.mysql5.7"
  availability_zone              = "${var.region}a"
  skip_final_snapshot            = true
  backup_retention_period        = 15
  db_subnet_group_name           = "${aws_db_subnet_group.default.id}"
  vpc_security_group_ids         = [ "${aws_security_group.db.id}" ]
} 