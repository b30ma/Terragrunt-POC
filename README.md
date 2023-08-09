# Terragrunt-POC

Terragrunt can manage multiple Terraform deployments more efficiently. It helps manage remote state configuration, environment variables, and other repetitive configurations. Let's walk through an example of how you might use Terragrunt to manage different Terraform modules.

Suppose you have a project with two different environments: "dev" and "prod". Each environment has its own set of resources defined by Terraform modules. We'll set up a directory structure and show how you can use Terragrunt to manage these environments.


## Assuming the following directory structure:

$ cd project-root/terragrunt.hcl

$ cd project-root/environments/dev/terragrunt.hcl/main.tf

$ cd project-root/environments/prod/terragrunt.hcl/main.tf

$ cd project-root/modules/module1/main.tf

$ cd project-root/modules/module2/main.tf


## All steps of structure of files:

1- Define Module Configuration:

  In each module directory (modules/module1, modules/module2, etc.), define your Terraform configuration for different resources.

2- Environment Configuration:

  Inside each environment directory (environments/dev, environments/prod), create a (terragrunt.hcl)

3- Project Configuration:

  At the root of your project (project-root), create a (terragrunt.hcl) file to configure common settings for all environments.

4- Using Terragrunt:

  With this setup, you can use Terragrunt to run Terraform commands for different environments:
  in bash:

  $ cd environments/dev
  $ terragrunt init

5- To apply a configuration for an environment:

  $ cd environments/dev
  $ terragrunt apply

6- To destroy resources for an environment:

  $ cd environments/dev
  $ terragrunt destroy


Terragrunt will handle remote state, environment variables, and other common configurations for you.



