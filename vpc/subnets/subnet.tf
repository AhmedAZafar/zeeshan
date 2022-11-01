resource "aws_subnet" "public-subnet" {
    vpc_id = module.vpc.vpc_id
    cidr_block = "10.10.0.0/24"
}