az group create --name 'dsrgab19' --location 'West US 2'
az group deployment create --resource-group 'dsrgab19' --template-file ./multistoragetemplate.json --parameters '{ "storageAccountName": { "value": "dsrgab19" } }'
