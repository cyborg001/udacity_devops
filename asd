source "amazon-ebs" "stuff" {
  ami_name                      = "${var.ami_base_name}-${var.source_version}-hvm-${formatdate("YYYYMMDD", timestamp())}-x86_64-gp2"
/.../
  tags          = {}
  run_tags   = {}
/.../
}

build {
  sources = [
    "source.amazon-ebs.stuff.id"
  ]

  provisioner "shell" {
    inline = [
      "echo \"some script stuff\""
    ]
  }
}

### Operating system and Environment details

macOS 12.0.1 (x86_64)

### Log Fragments and crash.log files

no errors in logs; it's just that this behavior is nonsense cause you have means to control the tags you want but you actually don't since packer decides to put one anyway no matter your config.
When building an AMI for clients who do not give permissions to tag AMIs since they want to control that themselves the build directly errors out. And there is no way to work around that.