resource "aws_vpc" "vpcone" {
    cidr_block = var.network.vpccidr
    tags = {
      Name = var.network.vpccidr
    }
  
}
resource "aws_subnet" "sunnets" {
    count = length(var.network.subnets_info[0].subcidr)
    vpc_id = aws_vpc.vpcone.id
    cidr_block = var.network.subnets_info[0].subcidr
    availability_zone = var.network.subnets_info[0].subaz
    tags = {
      Name = var.network.subnets_info[0].subname
    }
  
}