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

The initial public beta is unsigned. Windows may show an Unknown Publisher or
Microsoft Defender SmartScreen warning. Verify the published SHA-256 before
opening the archive, and download only from this repository. A valid checksum
confirms file consistency but does not establish publisher identity.

SignalDesk currently supports paper practice and deliberate exchange-demo testing.
It does not promise returns or imply exchange endorsement.

Support: getsignaldesk@gmail.com

