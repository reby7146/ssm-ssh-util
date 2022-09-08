aws ec2-instance-connect send-ssh-public-key \
--instance-id=$1 \
--availability-zone=$(aws ec2 describe-instances --filters="Name=instance-id,Values=$1" --query="Reservations[*].Instances[*].Placement.AvailabilityZone" --output text) \
--instance-os-user=$2 \
--ssh-public-key='file://$HOME/.ssh/id_rsa.pub'
aws ssm start-session --target=$1 --document-name AWS-StartSSHSession --parameters 'portNumber=22'