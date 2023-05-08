### Holodeck on Hashicorp ###
First steps are to install Chocolatey from its install page here:

https://chocolatey.org/install

Once there copy and paste the installation code into Admin Powershell and run the installation. Once installed you will install, Git, Terraform, Packer, and vSCODE. 

      choco install git,terraform,packer,vscode

From here you will clone this repository locally.

      git clone https://github.com/vNerdyNate/Holodeck-HashiCorp.git

Now change directory into that cloned repository.

### Currently you will need to create a VM folder called, "Templates", a resource group called, "IaC", and enable DHCP for the nsx segment "xregion-seg01. More will come on these changes." ###

Change directory into the packer folder

run 

      packer init .

This enables packer and downloads anything needed for the code.

       packer build .

## Do not forget the "." at the end as this states to build from the files local to the directory ##

The Template build can take around 12 - 20 minutes to finalize. Once finalized you should have a "Ubuntu2024-template" template in the templates folder.

### Terraform ###

First change directory into the Terraform folder created via git, and run the following:

      terraform init
      
This will initialize the terraform repository and pull down all the needed files and modules for utilizing terraform provider, and additional settings

      terraform plan
      
This will create a plan of what will be deployed you can utilize this plan when checking what Terraform will do(For more about this please see:https://developer.hashicorp.com/terraform/cli/commands/plan)

Finally deploy the image using:

      terraform apply
      
When prompted write: "yes" and watch the magic work

#### Conclusion ###
From here we have created the template for utilization through packer, and once completed cloned that template with IaC through Terraform to build a usable machine. This can be adjusted and changed as required through iterative development in the code.

Happy building!
