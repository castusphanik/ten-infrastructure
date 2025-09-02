
# resource "aws_vpc" "main" {
#   cidr_block = "10.1.0.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true

#   tags = {
#     Name = "main-vpc"
#   }
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "main-igw"
#   }
# }


# # Elastic IP for NAT Gateway
# resource "aws_eip" "nat" {
#   vpc = true

#   tags = {
#     Name = "nat-eip"
#   }
# }

# # NAT Gateway in Public Subnet
# resource "aws_nat_gateway" "nat" {
#   allocation_id = aws_eip.nat.id
#   subnet_id     = aws_subnet.public.id

#   tags = {
#     Name = "nat-gateway"
#   }

#   depends_on = [aws_internet_gateway.igw]
# }

