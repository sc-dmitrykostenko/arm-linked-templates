New-AzureRMResourceGroup -ResourceGroupName dk-test-3 -Location "North Europe"

New-AzureRMResourceGroupDeployment -Name "test" -ResourceGroupName dk-test-3 -TemplateUri https://raw.githubusercontent.com/sc-dmitrykostenko/arm-linked-templates/master/3master-template.json -TemplateParameterFile 3master-parameters.json
