# AWS S3 Bucket with File Upload using Terraform

This Terraform configuration creates an S3 bucket in the AWS region `eu-central-1` and uploads a file named `example.txt` to the bucket.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS credentials configured

## Configuration

### S3 Bucket

The `aws_s3_bucket` resource defines an S3 bucket with the following properties:

- **Bucket Name:** `my-tf-test-bucket-training-aws`
- **Tags:** 
  - `Name`: My bucket
  - `Environment`: Dev

### S3 Bucket Object

The `aws_s3_bucket_object` resource uploads a file to the S3 bucket with the following properties:

- **Bucket:** `${aws_s3_bucket.example.id}`
- **Key:** `example.txt` (name of the object in the bucket)
- **Source:** `example.txt` (local file path)
- **Content Type:** `text/plain`
- **Metadata:** Custom metadata with key `custom` and value `metadata`

## Usage

1. **Initialize Terraform:**

   ```
   terraform init
   ```

2. **Preview the changes:**

   ```
   terraform plan
   ```

3. **Apply the configuration:**

   ```
   terraform apply
   ```

   This command will create the S3 bucket and upload the file `example.txt` to it.

## Note

Ensure that you have the AWS credentials configured on your system. You can use the AWS CLI to set up the credentials.

## License

This project is licensed under the MIT License.
