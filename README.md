# Receipe Search Application 
This application is part of my Salesforce Integration Crash Course. Checkout my tutorials on [SFDCFacts Academy's youtube channel.](https://youtube.com/sfdcfacts)


## Pre-requisite before deployment
1. [Make sure you have node and npm installed](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
2. [Make sure you have setup Salesforce CLI and SFDX](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_install_cli.htm)
3. [Make sure you have git installed](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Deployment Instructions
1. Clone this repo to your local `git clone https://github.com/choudharymanish8585/apex-integration-crash-course.git`
2. Open Terminal/Command Prompt and move inside the project folder 
3. Authorize a Salesforce Org `sfdx force:auth:web:login -a TestOrg1`
4. Deploy all metadata to the Salesforce Org `sfdx force:source:deploy -p force-app/main/default/`
5. Assign permission set to current user `sfdx force:user:permset:assign -n Receipe_App`
6. Open Saleforce Org `sfdx force:org:open` and open 'Receipe Search' tab from application launcher
7. Open 'Spoonacular' Apex Class in Developer Console and replace the 'API_KEY' value with your own spoonacular api
8. Come back to Salesforce Org, and in Application Launcher search for 'Receipe Search'


Have Fun!! Subscribe to my [youtube channel](https://youtube.com/sfdcfacts) for more!!
