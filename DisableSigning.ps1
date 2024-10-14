# Disable signing in all .csproj files
Get-ChildItem -Recurse -Filter *.csproj | ForEach-Object {
    (Get-Content $_.FullName) -replace '<SignAssembly>true</SignAssembly>', '<SignAssembly>false</SignAssembly>' |
    Set-Content $_.FullName
}