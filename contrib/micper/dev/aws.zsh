sshaws() {
  ssh -i ~/.ssh/AWS_SSH_KeyPair.pem ec2-user@ec2-`aws ec2 describe-instances --instance-ids i-0e4902ce65aae5582 --query 'Reservations[*].Instances[*].PublicIpAddress' --output text | tr . -`.eu-central-1.compute.amazonaws.com
}

# source /usr/local/bin/aws_zsh_completer.sh
