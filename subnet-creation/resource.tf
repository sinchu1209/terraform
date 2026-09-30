resource "aws_vpc" "vpc1" {
    cidr_block = var.vpc1_cidr
    tags = {
        Name= var.vpc1_name
    }
}

resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.vpc1.id 
    cidr_block = var.sub1_cidr
    tags = {
        Name= var.sub1_name
    }
}
resource "aws_subnet" "sub2" {
    vpc_id = aws_vpc.vpc1.id 
    cidr_block = var.sub2_cidr
    tags = {
        Name= var.sub2_name
    }
}