vpc_cidr_block = {
  dev = "10.0.0.0/16"
  prod  = "10.2.0.0/16"
  stg         = "10.1.0.0/16"
}

instance_type = {
  dev = "t3.small"
  prod  = "t3.small"
  stg         = "t3.small"
}

instance_count = {
  dev = 1
  prod  = 1
  stg         = 1
}

public_1 = {
  dev = "10.0.0.0/19"
  prod  = "10.2.0.0/19"
  stg         = "10.1.0.0/19"
}

public_2 = {
  dev = "10.0.32.0/19"
  prod  = "10.2.32.0/19"
  stg         = "10.1.32.0/19"
}

private_1 = {
  dev = "10.0.64.0/19"
  prod  = "10.2.64.0/19"
  stg         = "10.1.64.0/19"
}

private_2 = {
  dev = "10.0.96.0/19"
  prod  = "10.2.96.0/19"
  stg         = "10.1.96.0/19"
}
