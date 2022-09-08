# ssm-ssh-util

## Require
AWS CLI
AWS Credential
SSM Integrated EC2 Instance
SSM Session Manager Plugin
```
#ubuntu
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
sudo dpkg -i session-manager-plugin.deb
```

## Useage
```
wget 
tar -xvzf ec2_ssh_util.tar.gz
sh ./ec2_ssh_util/install.sh
#connect Instance LiKE : ssh ec2-user@instance-id
```