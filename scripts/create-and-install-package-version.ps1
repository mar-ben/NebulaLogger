# This script is used to create a package version & install it into an org, using the specified target username
# This provides a way to ensure that the package can be successfully installed/upgraded into an org, without burning a call to package:version:create with validation/code coverage
param ([string]$targetusername)

Write-Output "Target Username: $targetusername"

npx sfdx force:package:version:create --json --package "Nebula Logger - Unlocked Package" --codecoverage --installationkeybypass --wait 30 > package-create-output.json
$packageVersionCreateOutput = Get-Content -Path ./package-create-output.json | ConvertFrom-Json
Write-Output "Package Version Create Output: $packageVersionCreateOutput"

$packageVersionId = $packageVersionCreateOutput[0].result.SubscriberPackageVersionId
Write-Output "New Package Version ID: $packageVersionId"

Write-Output "Installing package in org: $targetusername"
npx sfdx force:package:install --noprompt --targetusername $targetusername --wait 20 --package $packageVersionId
