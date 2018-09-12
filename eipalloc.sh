#!/bin/bash

apt-get update
apt-get install python-pip -y
pip install aws-ec2-assign-elastic-ip
aws-ec2-assign-elastic-ip --access-key AKIAJV6LIJL2QEHQLXLQ --secret-key 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 --region ap-southeast-2 --valid-ips 54.153.232.34
hostnamectl set-hostname `curl -s http://169.254.169.254/latest/meta-data/public-ipv4`
hostnamectl set-hostname `grep $HOSTNAME /home/ubuntu/awseip/listeip.txt | sed 's/^.*, //'`

