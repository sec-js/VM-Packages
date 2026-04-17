$ErrorActionPreference = 'Stop'
Import-Module vm.common -Force -DisableNameChecking

$toolName = 'MemProcFS'
$category = VM-Get-Category($MyInvocation.MyCommand.Definition)

$zipUrl = 'https://github.com/ufrisk/MemProcFS/releases/download/v5.17/MemProcFS_files_and_binaries_v5.17.5-win_x64-20260415.zip'
$zipSha256 = '9d964fc0c60bea4fdaa94eeff6e8a504dbd5d1589eb65e9d0f6b10e5c7f92e73'

VM-Install-From-Zip $toolName $category $zipUrl -zipSha256 $zipSha256 -consoleApp $true -innerFolder $false
