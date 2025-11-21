#AWS S3
#AWS EC2
#AWS Labda
#AWS IAM user
# # listing the s3 buckets
set -x
#printing only the instance no mess
echo "printing only the instance id"
aws ec2 describe-instances --query "Reservations []. Instances []. InstanceId" --output text
echo prints the list of aws s3 buckets"
aws s3 ls
#list EC2 instances
echo " prints the list of ec2 instances"
aws ec2 describe-instances
#list the aws labda function
echo " prints the list of aws lambda functions"
aws lambda list-functions
#list the iam users
echo "prints List of iam users
aws iam list-users
