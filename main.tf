# AWSを操作するための設定
provider "aws" {
  region = "ap-northeast-1" # 東京リージョン
}

# 仮想サーバー（EC2）を1台作る指示
resource "aws_instance" "my_server" {
  ami           = "ami-0d52744d6551d851e" # Amazon Linux 2023のID
  instance_type = "t2.micro"             # 無料枠で使えるサイズ

  tags = {
    Name = "tetra-view" # tetra-view専用
  }
}