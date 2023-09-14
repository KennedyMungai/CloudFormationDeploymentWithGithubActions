$ErrorActionPreference = 'stop'
$StackName = 'awsvpcstack'
$TemplateBody = Get-Content -Path cloudformation-vpc.yml -Raw

if (Get-CFNStack -StackName $StackName) {
    Update-CFNStack -StackName $StackName -TemplateBody $TemplateBody
}
else {
    New-CFNStack -StackName $StackName -TemplateBody $TemplateBody
}