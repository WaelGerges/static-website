module "static-website" {
  source      = "https://cm.globalcatalog.cloud.ibm.com/api/v1-beta/offering/source/archive?archive=tgz&installType=fullstack&kind=terraform&name=static-website&version=0.1.3"
  app_repo_name      = var.app_repo_name
  cos_bucket_name      = var.cos_bucket_name
  cos_instance_name      = var.cos_instance_name
  ibmcloud_api_key      = var.ibmcloud_api_key
}