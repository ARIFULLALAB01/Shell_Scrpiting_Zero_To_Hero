#!/bin/bash
REGION=$1
echo "Retrieving VPCs in ${REGION}.."
aws ec2 describe-vpcs --region ${REGION} | jq '.Vpcs[].VpcId' -r
echo "VPCs Retrieved Successfully.."

echo "Retrieving S3 Buckets in ${REGION}.."
aws s3api list-buckets --region ${REGION} | jq '.Buckets[].Name' -r
echo "S3 Buckets Retrieved Successfully.."
