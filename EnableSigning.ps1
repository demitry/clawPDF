# Disable signing in all .csproj files
Get-ChildItem -Recurse -Filter *.csproj | ForEach-Object {
    (Get-Content $_.FullName) -replace '<SignAssembly>false</SignAssembly>', '<SignAssembly>true</SignAssembly>' |
    Set-Content $_.FullName
}