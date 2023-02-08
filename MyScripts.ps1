
param (
   [string]$UserName
)

Write-Output "Hello, $UserName"


$failedBuildslist = New-Object System.Collections.Generic.List[System.Object]

$build = dotnet build
if($build -eq "Build succeeded.") {
   write-host "Build succeeded."
}
else {
    $failedBuildslist.Add($build)
    write-host "Build failed."
}

foreach($project in $failedBuildslist) {
    write-host "Failed projects: $project"
}