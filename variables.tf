variable "app_repo_name" {
  type        = string
  description = "Enter a name for the new repository that's created to store your application files."
  default     = "sample-solution-app-repo"
  
}

variable "cos_bucket_name" {
  type        = string
  description = "Name the bucket that will be created on your Cloud Object Storage instance. Bucket names must be globally unique, consider checking existing bucket names in your target account."
}

variable "cos_instance_name" {
  type        = string
  description = "Give your Cloud Object Storage (COS) instance a unique name. Lite accounts are limited to one instance of COS, and you might need to delete the previously created instance."
  default     = "sample-solution-cos-instance"
  
}

variable "cos_plan_type" {
  type        = string
  description = "Enter a plan type for your Cloud Object Storage instance. The Lite plan is recommended for most users."
  default     = "lite"
  
}

variable "ibmcloud_api_key" {
  type        = string
  description = "Select a Secret Manager secret containing the API key you will use to deploy."
  sensitive = true
}

variable "region" {
  type        = string
  description = "Enter the region where you'd like your resources to be deployed."
  default     = "us-south"
  
}

variable "resource_group" {
  type        = string
  description = "Enter the name of the resource group in which you would like your resources to be deployed."
  default     = "default"
  
}

