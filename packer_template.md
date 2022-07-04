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
app id: 656dda29-3e00-4532-93e1-e94fec1864d9
display name: https://odl_user_sp_200170
secret key: rfV8Q~ewKA89Y95zg7iy.xDhisXNF30H4uvZ3cou
subscription id: d69af47e-53dd-448d-a185-9d8bc0ffb988
