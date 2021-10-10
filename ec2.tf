resource "aws_instance" "Terrform-Instance" {
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
}

resource "aws_eip_association" "EIPAssociation" {
    instance_id = aws_instance.Terrform-Instance.id
    allocation_id = aws_eip.elaticIP.id
}

output "ec2" {
    value = aws_eip.elaticIP.public_ip
}
