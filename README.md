# SignalDesk releases

This repository is the public download channel for SignalDesk Windows releases.
Development source, issues and internal release automation remain in a separate
private repository.

## Download safely

Download only from this repository's **Releases** page. Each release must include:

- `SignalDesk-Windows-x64.zip`
- `SignalDesk-Windows-x64.zip.sha256`
- `SignalDesk-Corresponding-Sources.zip`
- release notes identifying the exact version and channel

Verify the ZIP before opening it:

```powershell
.\Verify-Download.ps1 -ZipPath .\SignalDesk-Windows-x64.zip -ChecksumPath .\SignalDesk-Windows-x64.zip.sha256
```

The public launch build will be Authenticode signed. Confirm that Windows shows
the expected verified publisher before running `SignalDesk.exe`. A valid checksum
confirms file consistency; the Authenticode signature confirms publisher identity.

SignalDesk currently supports paper practice and deliberate exchange-demo testing.
It does not promise returns or imply exchange endorsement.

Support: getsignaldesk@gmail.com

