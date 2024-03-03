# Use the official Terraform Docker image as the base
FROM hashicorp/terraform:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Terraform configuration files from the host into the container
COPY . .

# Optionally, you can add any additional dependencies or scripts needed for your Terraform setup
# For example, if you need to install additional tools or packages:
# RUN apk add --no-cache curl

# By default, the entry point is already set to "terraform"
# You can override the entry point or add additional commands if needed
# ENTRYPOINT ["terraform"]
