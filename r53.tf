module "web_r53" {
  source          = "./modules/route53"
  zone_id         = var.web_zone_id
  record_name     = var.web_record_name
  target_dns_name = module.cloudfront.name
  target_zone_id  = module.cloudfront.zone_id
}