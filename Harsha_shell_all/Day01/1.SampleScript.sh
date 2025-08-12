#!/bin/bash

#Delete Existing terraform.zip file if exists
rm -rf terraform*

#Download Terraform Latest Zip File
wget https://releases.hashicorp.com/terraform/1.9.3/terraform_1.9.3_linux_amd64.zip -O terraform.zip

#Create 10 Copies of the Terraform File.
for X in {1..10}; do
    echo "Creating Terraform File terraform-${X}..."
    cp terraform.zip terraform-${X}.zip
done

#Listing All Files
ls -al

# Upload The file To AWS S3 Bucket.
