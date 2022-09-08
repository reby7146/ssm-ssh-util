cat <<EOF >> $HOME/.ssh/config
# SSH over Session Manager
host i-* mi-*
    ProxyCommand sh -c "sh $HOME/.ssh/ec2_ssh_util.sh %h %r"
EOF
cp ec2_ssh_util.sh $HOME/.ssh/
echo "You Can Connect Instance via SSM-SSH"