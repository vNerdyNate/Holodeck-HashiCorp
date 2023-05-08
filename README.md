#Holodeck on Hashicorp
First steps are to install Chocolatey from its install page here:

https://chocolatey.org/install

Once there copy and paste the installation code into Admin Powershell and run the installation. Once installed you will install, Git, Terraform, Packer, and vSCODE. 

  choco install git,terraform,packer,vscode

From here you will clone this repository locally.

  git clone https://github.com/vNerdyNate/Holodeck-HashiCorp.git

Now change directory into that cloned repository.

### Currently you will need to create a VM folder called, "Templates", a resource group called, "IaC", and enable DHCP for the nsx segment "xregion-seg01" ###

Change directory into the packer folder

run 

  packer init .

This enables packer and downloads anything needed for the code.

  packer build .

## Do not forget the "." at the end as this states to build from the files local to the directory ##

The Template build can take around 12 - 20 minutes to finalize

### Terraform ###

#### TO BE CONTINUED ###
