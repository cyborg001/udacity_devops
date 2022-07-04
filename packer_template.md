{
  "variables": {
    "client_id": "",
    "client_secret": "",
    "subscription_id": "1e4e092c-b55e-45ea-8cc8-4e0ef3f7f19c"
  },
  "builders": [{
    "type": "azure-arm",

    "client_id": "{{user `client_id`}}",
    "client_secret": "{{user `client_secret`}}",
    "subscription_id": "{{user `subscription_id`}}",

    "os_type": "Linux",
    "image_publisher": "Canonical",
    "image_offer": "UbuntuServer",
    "image_sku": "18.04-LTS",

    "managed_image_resource_group_name": "packer-rg",
    "managed_image_name": "myPackerImage",
    "azure_tags":{
        "rg": "packer-rg",
        "name': "myPackerImage",
    },
    "location": "East US",
    "vm_size": "Standard_D2s_v3"
  }],
  "provisioners": [{
    "inline": [
        "apt-get update",
        "apt-get upgrade -y"
    ],
    "inline_shebang": "/bin/sh -x",
    "type": "shell",
    "execute_command": "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'"
  }]
}

usuario de lab azure udacity
odl_user_200170@udacityhol.onmicrosoft.com
contrasena
hsoy67HPT*MG

service principal
app id: 6b8533d8-d29a-41c0-b675-62e89fa1e7d4
display name: https://odl_user_sp_200231
secret key: jW-8Q~lxisPQN3mF5mU0gV~EvNm1Skz-tWcFRcxY
subscription id: dac919d0-841b-48ab-84a5-d1735c6aeeeb
tenant id: f958e84a-92b8-439f-a62d-4f45996b6d07
tenant domain name: udacityhol.onmicrosoft.com
