variable "data" {
  default = {
1={
name ="web-001"
vnet_prefix = "10.100.0.0/24"
service_endpoints = ["Microsoft.KeyVault"]
}
2={
name = "db-g01"
vnet_prefix = "10.200.0.0/24"
service_endpoints = ["Microsoft.Sql", "Microsoft.KeyVault"]
}
3 = {
name = "web-001"
vnet_prefix = "0.250.1.0/24"
}
4 = {
name =  "web-002"
vnet_prefix =  "0.250.2.0/24"
}}
}

variable "data2" {
  default = [{
name = "web-001"
vnet_prefix = "10.100.0.0/24"
service_endpoints = ["Microsoft.KeyVault"]
},
{
name = "db-g01"
vnet_prefix = "10.200.0.0/24"
service_endpoints = ["Microsoft.Sql", "Microsoft.KeyVault"]
}]
}

variable "data3" {
   default = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "sqs:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}