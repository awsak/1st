provider "aws1" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}                       # terraform init

resource "aws_vpc" "my_vpc_2" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name ="my_vpc_2"
  }
}

resource "aws_subnet" "my_subnet_2" {
  vpc_id = aws_vpc.my_vpc_2.id
  cidr_block = "10.0.0.0/25"
  tags = {
    Name = "my_subnet_2"
  }
}

resource "aws_internet_gateway" "my_internet" {
  vpc_id = aws_vpc.my_vpc_2.id
  tags = {
    Name = "my_internet"
    }
  }

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc_2.id
  route {
    cidr_block = "0.0.0.0/0"
    geteway_id = aws_internet_gateway.my_internet.id
  }
  tags = {
    Name= my_route_table
  }
}

resource "aws_security_group" "my_security" {
  name = "my_security"
  vpc_id = aws_vpc.my_vpc_2.id
  ingress {
    from_port = 0
    protocol = "-1"
    to_port = 0
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
  }
}

resource "aws_route_table_association" "myassociation" {
  route_table_id = aws_route_table.my_route_table.id
  subnet_id = aws_subnet.my_subnet_2.id
}

resource "aws_instance" "my_instance_2" {
  ami = ""
  instance_type = "t2.micro"
  availability_zone = "us-east-1b"
  subnet_id = aws_subnet.my_subnet_2.id
  vpc_security_group_ids = [aws_security_group.my_security.id]
  key_name = ""                                                          # create security key from account
}

# terraform apply


