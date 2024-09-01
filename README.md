
# AWS S3 Static Website Hosting with Terraform

This project demonstrates how to host a static website on AWS S3 using Terraform for infrastructure management. The project is organized into two main folders:

1. **Static Website Files**
   - Contains all the files necessary for the static website, including **index.html** and **css files**.
   
2. **Terraform Configuration Files**
   - Contains the Terraform scripts to provision the necessary AWS resources, including:
     - `main.tf`: Defines the main resources.
     - `providers.tf`: Specifies the AWS provider.
     - `s3-website-configuration.tf`: Configures the S3 bucket for static website hosting.
     - `output.tf`: Outputs necessary information like the S3 website endpoint.
     - `policy.tf`: Manages the bucket policy, including public access settings.

## Project Structure

```
├── Static Website Files
│   ├── index.html
│   ├── styles.css
│   ├── assets/
│   └── other files...
├── Terraform configuration files
│   ├── main.tf
│   ├── providers.tf
│   ├── s3-website-configuration.tf
│   ├── output.tf
│   └── policy.tf
└── README.md
```

## Prerequisites

Before you can use the Terraform scripts to deploy your static website on AWS S3, ensure you have the following:

- **AWS Account**: You'll need an active AWS account.
- **Terraform**: Install Terraform on your local machine.
- **AWS CLI**: Set up and configure the AWS CLI with your credentials.

## Steps to Deploy

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Awais411/AWS-Static-Website-Hosting.git
   cd AWS-Static-Website-Hosting
   ```

2. **Review and Modify Configuration**:
   - Ensure that the bucket name in `s3-website-configuration.tf` is globally unique. S3 bucket names must be unique across all AWS accounts, otherwise, the bucket creation will fail.
   - Adjust the `providers.tf` file to specify the desired AWS region if necessary.

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Apply the Terraform Configuration**:
   ```bash
   terraform apply
   ```
   - Review the proposed changes and type `yes` to confirm.

5. **Upload the Website Files**:
   - After the S3 bucket has been created and configured, upload the contents of the **Static Website Files** folder to the S3 bucket.

6. **Access Your Website**:
   - Once the upload is complete, you can access your website using the S3 bucket’s website endpoint, which is output by the Terraform scripts.

## Important Considerations

- **Globally Unique Bucket Name**: Always use a globally unique name for your S3 bucket to avoid conflicts with existing buckets across AWS accounts.
- **Public Access**: Ensure that your bucket policy allows public access to the website files, or your site may not be accessible to users.
- **Index and Error Pages**: Double-check that the correct paths to **index.html** and the error page are specified in the S3 website configuration.

## Troubleshooting

- **Bucket Creation Fails**: If the bucket creation fails, double-check that the bucket name is globally unique and that there are no conflicting resources in your AWS account.
- **404 Errors**: If you encounter 404 errors when accessing the website, ensure that the **index.html** file is correctly placed in the root or specified subfolder and that the path is correctly configured in the S3 website settings.

## Conclusion

This project demonstrates how to efficiently deploy and manage a static website on AWS S3 using Terraform. Feel free to explore the Terraform files and customize them according to your needs. Contributions and feedback are welcome!
