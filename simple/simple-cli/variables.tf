#Variables declared in this file must be declared in the marketplace.yaml

############################
#  Hidden Variable Group   #
############################
variable "tenancy_ocid" {
}

variable "region" {
}

############################
#  Marketplace Image      #
############################

variable "mp_listing_id" {
  // default = "ocid1.appcataloglisting.oc1.."
  default     = "ocid1.appcataloglisting.oc1..aaaaaaaac6isylx5kestbbigaarbm2ssqlhwzfno7xp3s2imzfgke6jjr65a"
  description = "Marketplace Listing OCID"
}

variable "mp_listing_resource_id" {
  // default = "ocid1.image.oc1.."
  default     = "ocid1.image.oc1..aaaaaaaap5hoq5iw3o5arc6g6serwgwyi64tcwbq6k74vuxbuzg7vh2wczwa"
  description = "Marketplace Listing Image OCID"
}

variable "mp_listing_resource_version" {
  // default = "1.0"
  default     = "1.7.1.15966-020720201941"
  description = "Marketplace Listing Package/Resource Version"
}

############################
#  Compute Configuration   #
############################

variable "vm_display_name" {
  description = "Instance Name"
  default     = "LiveSwitch-Server"
}

variable "vm_compute_shape" {
  description = "Compute Shape"
  default     = "VM.Standard2.1" //2 cores
}

variable "availability_domain_name" {
  default     = ""
  description = "Availability Domain"
}

variable "availability_domain_number" {
  default     = 1
  description = "OCI Availability Domains: 1,2,3  (subject to region availability)"
}

variable "ssh_public_key" {
  description = "SSH Public Key"
}

############################
#  Network Configuration   #
############################

variable "network_strategy" {
  default = "Create New VCN and Subnet"
}

variable "vcn_id" {
  default = ""
}

variable "vcn_display_name" {
  description = "VCN Name"
  default     = "LiveSwitch-vcn"
}

variable "vcn_cidr_block" {
  description = "VCN CIDR"
  default     = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "VCN DNS Label"
  default     = "liveswitch"
}

variable "subnet_type" {
  description = "Choose between private and public subnets"
  default     = "Use Public Subnet"
}

variable "subnet_span" {
  description = "Choose between regional and AD specific subnets"
  default     = "Regional Subnet"
}

variable "subnet_id" {
  default = ""
}

variable "subnet_display_name" {
  description = "Subnet Name"
  default     = "LiveSwitch-subnet"
}

variable "subnet_cidr_block" {
  description = "Subnet CIDR"
  default     = "10.0.0.0/24"
}

variable "subnet_dns_label" {
  description = "Subnet DNS Label"
  default     = "management"
}

############################
# Additional Configuration #
############################

variable "compartment_ocid" {
  description = "Compartment where infrastructure resources will be created"
}

variable "nsg_whitelist_ip" {
  description = "Network Security Groups - Whitelisted CIDR block for ingress communication: Enter 0.0.0.0/0 or <your IP>/32"
  default     = "0.0.0.0/0"
}

variable "nsg_display_name" {
  description = "Network Security Groups - Name"
  default     = "liveswitch-network-security-group"
}

variable "routetable_display_name" {
  description = "Route table Name"
  default     = "liveswitch-route-table"
}