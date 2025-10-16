variable "network" {
    description = "all about vpc and subnets"
    type =object({
      vpcname = string
      vpccidr = string
    subnets_info = object({
        subcidr = list(string)
        subaz = list(string)
        subname = list(string)

    })
    })
    default = {
      vpccidr = "10.0.0.0/16"
      vpcname = "myvpc"
      subnets_info = {
        subcidr = ["10.0.1.0/24","10.0.0.0/24"]
        subaz = ["ap-south-1a","ap-south-1b"]
        subname = ["web1","web2"]
      }
    }
  
}