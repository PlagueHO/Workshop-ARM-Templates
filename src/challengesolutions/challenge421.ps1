$appName = 'dsrgab19'
$environment = 'dev'
$resourceGroupName = "${appName}-${environment}-rg"
$administratorLogin = 'dscottraynsford'
$administratorLoginPassword = Read-Host -Prompt 'administratorLoginPassword' -AsSecureString
$databaseName = 'accounts'
New-AzResourceGroup -Name $resourceGroupName -Location 'West US 2' -Force
New-AzResourceGroupDeployment -TemplateFile ./childresources.json -ResourceGroupName $resourceGroupName `
    -appName $appNAme `
    -environment $environment `
    -administratorLogin $administratorLogin `
    -administratorLoginPassword $administratorLoginPassword `
    -databaseName $databaseName
