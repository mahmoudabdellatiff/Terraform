resource "aws_db_instance" "default" {
  allocated_storage    = 8       // 3GB
  storage_type         = "gp2"   // type of disk storage = general purpose SSD
  engine               = "mysql" // type of DataBase 
  engine_version       = "5.7"
  instance_class       = "db.t3.micro" // type of server that will DataBase working on.
  db_name              = "mydatabase"
  username             = "foo" // master username 
  password = trimspace(file("./rds_password.txt"))
  # parameter_group_name = "default.mysql5.7" // parameter Group it is a sterring file for DataBase that control for ex {character set,max connections,SQL mode..}
  skip_final_snapshot  = true               // when U delete The DataBase AWS takes snapshot Backup , but now U type TRUE so this option is OFF.
}
