resource "aws_db_snapshot" "snapshot" {
  db_instance_identifier = "mydb"
  db_snapshot_identifier = "mydb-snapshot"
}
