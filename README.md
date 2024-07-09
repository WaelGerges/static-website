# This is the original README that came from the deployable architecture. Please modify accordingly to fit your use case.

Depending on your level of customization, IBM Cloud might not support the deployable architecture. The components of the architecture supplied in the customization bundle are supported by IBM Cloud, but any customized code added to extend is not.

# Static Website Sample 
This sample deployable architecture creates a free, static website as a proof of concept. It uses the IBM Cloud terraform provider to create the following:
- A Cloud Object Storage (COS) bucket configured for public web access
- A toolchain that provides a hosted Gitlab repo to store a static website html 
- A simple pipeline that copies that html to the Cloud Object Storage bucket when the main branch is updated

The result is a simple static website with its source stored in a Gitlab repository that automatically updates when that repo is updated. 


## Reference architectures

![Architecture](./diagrams/architecture.svg)

## Usage

```hcl
export ibmcloud_api_key=<ibm user api key>
export region=us-south
export resource_group=default
export cos_bucket_name=mybucketname
terraform plan
```

## Required IAM access policies
You need the following permissions to run this module.

- **Cloud Object Storage** service
    - `Editor` platform access
    - `Manager` service access
- **Toolchain** service
    - `Administrator` platform access


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.6 |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Limitations
- This sample does not support Trusted profiles. Select "API key using Secrets Manager" as the authentication method when configuring.
- The name of the Gitlab repository ("app_repo_name") must be unique in the target account
- The name of the Cloud Object Storage bucket ("cos_bucket_name") must be globally unique 
- This sample can only be deployed to regions where Toolchains are supported
- You can only have a single "lite" Cloud Object Storage instance, if you want to deploy more instances then switch to the "standard" plan


## Compliance Controls
| Profile | ID |
|---------|----|
| Global Control Library | 3000001 |
| Global Control Library | 3000002 |
| Global Control Library | 3000003 |
| Global Control Library | 3000004 |
| Global Control Library | 3000005 |
| Global Control Library | 3000006 |
| Global Control Library | 3000007 |
| Global Control Library | 3000008 |
| Global Control Library | 3000009 |
| Global Control Library | 3000010 |
| Global Control Library | 3000011 |
| Global Control Library | 3000015 |
| Global Control Library | 3000016 |
| Global Control Library | 3000017 |
| Global Control Library | 3000021 |
| Global Control Library | 3000022 |
| Global Control Library | 3000027 |
| Global Control Library | 3000028 |
| Global Control Library | 3000029 |
| Global Control Library | 3000030 |
| Global Control Library | 3000032 |
| Global Control Library | 3000033 |
| Global Control Library | 3000034 |
| Global Control Library | 3000035 |
| Global Control Library | 3000038 |
| Global Control Library | 3000101 |
| Global Control Library | 3000103 |
| Global Control Library | 3000104 |
| Global Control Library | 3000105 |
| Global Control Library | 3000106 |
| Global Control Library | 3000109 |
| Global Control Library | 3000110 |
| Global Control Library | 3000111 |
| Global Control Library | 3000112 |
| Global Control Library | 3000113 |
| Global Control Library | 3000201 |
| Global Control Library | 3000202 |
| Global Control Library | 3000203 |
| Global Control Library | 3000204 |
| Global Control Library | 3000205 |
| Global Control Library | 3000206 |
| Global Control Library | 3000207 |
| Global Control Library | 3000208 |
| Global Control Library | 3000209 |
| Global Control Library | 3000210 |
| Global Control Library | 3000211 |
| Global Control Library | 3000212 |
| Global Control Library | 3000213 |
| Global Control Library | 3000214 |
| Global Control Library | 3000215 |
| Global Control Library | 3000216 |
| Global Control Library | 3000217 |
| Global Control Library | 3000218 |
| Global Control Library | 3000219 |
| Global Control Library | 3000220 |
| Global Control Library | 3000221 |
| Global Control Library | 3000222 |
| Global Control Library | 3000223 |
| Global Control Library | 3000224 |
| Global Control Library | 3000225 |
| Global Control Library | 3000229 |
| Global Control Library | 3000231 |
| Global Control Library | 3000232 |
| Global Control Library | 3000233 |
| Global Control Library | 3000234 |
| Global Control Library | 3000235 |
| Global Control Library | 3000240 |
| Global Control Library | 3000242 |
| Global Control Library | 3000243 |
| Global Control Library | 3000244 |
| Global Control Library | 3000245 |
| Global Control Library | 3000246 |
| Global Control Library | 3000247 |
| Global Control Library | 3000248 |
| Global Control Library | 3000249 |
| Global Control Library | 3000251 |
| Global Control Library | 3000252 |
| Global Control Library | 3000253 |
| Global Control Library | 3000254 |
| Global Control Library | 3000255 |
| Global Control Library | 3000256 |
| Global Control Library | 3000257 |
| Global Control Library | 3000260 |
| Global Control Library | 3000261 |
| Global Control Library | 3000262 |
| Global Control Library | 3000263 |
| Global Control Library | 3000264 |
| Global Control Library | 3000265 |
| Global Control Library | 3000266 |
| Global Control Library | 3000267 |
| Global Control Library | 3000268 |
| Global Control Library | 3000269 |
| Global Control Library | 3000270 |
| Global Control Library | 3000271 |
| Global Control Library | 3000272 |
| Global Control Library | 3000273 |
| Global Control Library | 3000274 |
| Global Control Library | 3000275 |
| Global Control Library | 3000276 |
| Global Control Library | 3000277 |
| Global Control Library | 3000278 |
| Global Control Library | 3000279 |
| Global Control Library | 3000301 |
| Global Control Library | 3000302 |
| Global Control Library | 3000303 |
| Global Control Library | 3000304 |
| Global Control Library | 3000305 |
| Global Control Library | 3000306 |
| Global Control Library | 3000307 |
| Global Control Library | 3000308 |
| Global Control Library | 3000309 |
| Global Control Library | 3000310 |
| Global Control Library | 3000312 |
| Global Control Library | 3000313 |
| Global Control Library | 3000314 |
| Global Control Library | 3000315 |
| Global Control Library | 3000316 |
| Global Control Library | 3000317 |
| Global Control Library | 3000318 |
| Global Control Library | 3000319 |
| Global Control Library | 3000320 |
| Global Control Library | 3000401 |
| Global Control Library | 3000403 |
| Global Control Library | 3000404 |
| Global Control Library | 3000405 |
| Global Control Library | 3000406 |
| Global Control Library | 3000408 |
| Global Control Library | 3000410 |
| Global Control Library | 3000411 |
| Global Control Library | 3000412 |
| Global Control Library | 3000413 |
| Global Control Library | 3000419 |
| Global Control Library | 3000420 |
| Global Control Library | 3000421 |
| Global Control Library | 3000422 |
| Global Control Library | 3000423 |
| Global Control Library | 3000424 |
| Global Control Library | 3000425 |
| Global Control Library | 3000426 |
| Global Control Library | 3000427 |
| Global Control Library | 3000428 |
| Global Control Library | 3000429 |
| Global Control Library | 3000430 |
| Global Control Library | 3000431 |
| Global Control Library | 3000432 |
| Global Control Library | 3000433 |
| Global Control Library | 3000434 |
| Global Control Library | 3000436 |
| Global Control Library | 3000437 |
| Global Control Library | 3000439 |
| Global Control Library | 3000440 |
| Global Control Library | 3000441 |
| Global Control Library | 3000442 |
| Global Control Library | 3000444 |
| Global Control Library | 3000446 |
| Global Control Library | 3000447 |
| Global Control Library | 3000449 |
| Global Control Library | 3000451 |
| Global Control Library | 3000452 |
| Global Control Library | 3000453 |
| Global Control Library | 3000454 |
| Global Control Library | 3000455 |
| Global Control Library | 3000456 |
| Global Control Library | 3000457 |
| Global Control Library | 3000458 |
| Global Control Library | 3000459 |
| Global Control Library | 3000460 |
| Global Control Library | 3000461 |
| Global Control Library | 3000462 |
| Global Control Library | 3000463 |
| Global Control Library | 3000464 |
| Global Control Library | 3000467 |
| Global Control Library | 3000469 |
| Global Control Library | 3000621 |
| Global Control Library | 3000622 |
| Global Control Library | 3000623 |
| Global Control Library | 3000628 |
| Global Control Library | 3000629 |
| Global Control Library | 3000630 |
| Global Control Library | 3000631 |
| Global Control Library | 3000632 |
| Global Control Library | 3000633 |
| Global Control Library | 3000634 |
| Global Control Library | 3000635 |
| Global Control Library | 3000636 |
| Global Control Library | 3000637 |
| Global Control Library | 3000638 |
| Global Control Library | 3000639 |
| Global Control Library | 3000706 |
| Global Control Library | 3000802 |
| Global Control Library | 3000804 |
| Global Control Library | 3000805 |
| Global Control Library | 3000902 |
| Global Control Library | 3000907 |