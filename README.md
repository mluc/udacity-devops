# udacity-devops-project2

## Create network stack
```
aws cloudformation create-stack --stack-name project2-network --template-body file://network.yml  --parameters file://network.json
```

## Create server stack
```
aws cloudformation create-stack --stack-name project2-servers --template-body file://servers.yml  --parameters file://servers.json --capabilities CAPABILITY_IAM
```

- Use t2.medium which satisfies the requirement of two vCPUs and at least 4GB of RAM.

## Load Balancer DNS Name:
- http://proje-webap-1fk49vgttqdmf-168446728.us-east-1.elb.amazonaws.com/

## Bastion host:
- Use t2.micro EC2 instance in public subnet 1
- Security group only allows port 22 from my IP