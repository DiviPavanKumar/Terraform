Module developer:
    Resource creation/definations are here
    variables are must, because diff projects have diff requirements
    Data, Locals, Functions
    Module developer has to give documentation about inputs and outputs

Module User:
    He need to provide variables/inputs according to documentation

VPC Module:
    We should only allow user to create resources in 1a and 1b region. User can give any region, we should 
    only accept 2 public/private/database subnets.
    Lets ask project name from user, so that we can give.

    <project-name>-public-<az>
    <project-name>-private-<az>
    <project-name>-database-<az>


