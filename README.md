# Dynamic ARM templates via parameters

This is an example of controlling the content of a deployment via ARM parameters.

## Structure

  * 3master-template.json - entry point template that invokes other templates
  * 0infrastructure-template.json - template that provisions infrastructure: SQL Server and Hosting Plan.
  * Two modules:
    
    * 1WebsiteA-template - Example website A + SQL database
    * 2WebsiteB-template - Example website B + connection to SQL Server

Deployment always consists of the infrastructure and one or both of websiteA and websiteB.

All templates are using the same conventions for parameters and resource names - this allows mapping 
to the same resources across templates.

Website templates reuse hosting plan and SQL server via reference.

