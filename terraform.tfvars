vpc_cidr_block = {
  Development = "10.0.0.0/16"
  Production  = "10.2.0.0/16"
  UAT         = "10.1.0.0/16"
}

instance_type = {
  Development = "t3.small"
  Production  = "t3.small"
  UAT         = "t3.small"
}

instance_count = {
  Development = 1
  Production  = 1
  UAT         = 1
}

public_1 = {
  Development = "10.0.0.0/19"
  Production  = "10.2.0.0/19"
  UAT         = "10.1.0.0/19"
}

public_2 = {
  Development = "10.0.32.0/19"
  Production  = "10.2.32.0/19"
  UAT         = "10.1.32.0/19"
}

private_1 = {
  Development = "10.0.64.0/19"
  Production  = "10.2.64.0/19"
  UAT         = "10.1.64.0/19"
}

private_2 = {
  Development = "10.0.96.0/19"
  Production  = "10.2.96.0/19"
  UAT         = "10.1.96.0/19"
}
