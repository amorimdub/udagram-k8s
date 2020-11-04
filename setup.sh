eksctl create cluster \
 --name red \
 --version 1.18 \
 --without-nodegroup

 eksctl create nodegroup \
  --cluster red \
  --region eu-west-1 \
  --name red-ng-01 \
  --node-type t3.micro \
  --nodes 2 \
  --nodes-min 2 \
  --nodes-max 2 \
  --ssh-access \
  --managed
