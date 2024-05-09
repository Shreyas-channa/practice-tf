provider "aws" {
    region = "us-east-1"
}

resource "aws-instance " "my-instance" {
    ami = "ami-07caf09b362be10b8"
    instance_type = "t2.micro"
    key_name = "ak-virginia"
    tags = {
        env = "dev"
        name = "instance-1"
    }
    vpc_security_group_ids = ["sg-05ae5ce65f18d0610", "sg-023e1d359bd5464cd"]
  
}