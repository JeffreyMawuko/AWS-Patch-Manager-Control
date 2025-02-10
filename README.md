# - AWS-Patch-Manager-Control -
AWS Patch Manager - AWS Resources. This repo contains AWS Resources and configurations that will help you manage the patching activities of EC2 instances





# - Key Components - 
IAM Roles & Policies: These govern permissions for Patch Manager and Maintenance Window tasks.

SNS Notifications: Used to send patching status updates.

Patch Baseline & Groups: Define the patching rules for Amazon Linux 2 instances.

Maintenance Windows: Scheduled tasks for patch scans and installations using cron expressions, ensuring regular updates without manual intervention.

# - How It Works -
Patch Baseline - This defines approved patches, installation rules, and compliance levels.
Maintenance Window-The window during which patches are applied, configurable via variables.tf.
Tag-Based Targeting- Instances tagged with a specific PatchGroup are automatically included for patching.
The repository integrates seamlessly into AWS environments using Terraform for infrastructure as code. 
Simply set up the required variables, apply Terraform, and let AWS take over the heavy lifting of patch management. 

# - Two primary tasks -

Patch Scanning- Periodically checks instances for missing updates.
Patch Installation- Installs updates based on the predefined schedule.
Repository Structure:
main.tf- Core Terraform configurations for AWS Patch Manager.
variables.tf- Parameterizes the maintenance window schedule and other key details.
outputs.tf- Displays key outputs such as the SNS topic and maintenance window IDs.

# -Setting Up-
Clone the repository.
Customize the variables.tf file to match your EC2 patching needs (e.g., cron schedule, tags).
Deploy the infrastructure using Terraform.
terraform init
terraform apply
Once deployed, the setup will continuously manage patching without manual oversight, ensuring your instances are always up-to-date with minimal intervention.

# - END - 
This repo simplifies AWS EC2 patching with automation, leveraging Amazon Web Services native tools and IaC practices. 
For any robust and smart solution, for patch management, this project is designed to save time and reduce operational risk and other security issues. 

Check out the repository here to get started with automating EC2 patching today!
