#!bin/bash
sleep 4m
# This is where you run your test
aws s3 cp s3://hello-world-rohan/current/instance.txt current.txt
aws s3 rm s3://hello-world-rohan/current/instance.txt
export CURRENT=`cat current.txt`
aws ec2 terminate-instances --instance-ids $CURRENT --region us-east-1
aws s3 cp s3://hello-world-rohan/new/instance.txt new.txt
aws s3 rm s3://hello-world-rohan/new/instance.txt
aws s3 cp new.txt s3://hello-world-rohan/current/instance.txt
