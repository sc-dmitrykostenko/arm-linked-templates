$TS=[System.DateTime]::UtcNow.ToString('hhmmss')

New-AzureRMResourceGroup -ResourceGroupName dk-test-3 -Location "North Europe" -Force

New-AzureRMResourceGroupDeployment -Name "test" -ResourceGroupName dk-test-3 -TemplateUri https://raw.githubusercontent.com/sc-dmitrykostenko/arm-linked-templates/master/azuredeploy.json?ts=$TS -TemplateParameterFile azuredeploy.parameters.json
