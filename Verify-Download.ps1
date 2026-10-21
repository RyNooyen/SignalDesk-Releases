param([Parameter(Mandatory=$true)][string]$ZipPath,[Parameter(Mandatory=$true)][string]$ChecksumPath)
$ErrorActionPreference = 'Stop'
$expected = ((Get-Content -LiteralPath $ChecksumPath -Raw).Trim() -split '\s+')[0]
if ($expected -notmatch '^[0-9a-fA-F]{64}$') { throw 'Invalid SHA-256 checksum file.' }
$stream = [System.IO.File]::OpenRead((Resolve-Path -LiteralPath $ZipPath).Path)
try {
    $sha = [System.Security.Cryptography.SHA256]::Create()
    try { $actual = ([System.BitConverter]::ToString($sha.ComputeHash($stream))).Replace('-', '') }
    finally { $sha.Dispose() }
}
finally { $stream.Dispose() }
if ($actual -ine $expected) { throw 'Checksum mismatch. Do not run this download.' }
Write-Output 'SHA-256 matches. This verifies file consistency, not publisher identity.'
