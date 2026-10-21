# Public release checklist

- [ ] Build completed from the reviewed private-source commit.
- [ ] Full CI, frozen smoke launch and clean-device acceptance passed.
- [ ] Executable and any installer are Authenticode signed by the approved identity.
- [ ] Signature is verified after packaging and before upload.
- [ ] ZIP SHA-256 matches the published checksum file.
- [ ] Bundle manifest hashes every payload file and records the exact version.
- [ ] Corresponding Qt/PySide sources and third-party notices are attached.
- [ ] Release notes state paper/demo scope, known limitations and upgrade steps.
- [ ] Download and update checks use this public repository.
- [ ] Site download links point to the exact tested public release.
- [ ] No secrets, customer data or private trading records are present.
