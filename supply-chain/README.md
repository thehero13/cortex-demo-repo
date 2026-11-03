# Supply Chain campaign test fixtures (Cortex CAS)

Manifests that DECLARE packages/versions from active Cortex Supply Chain campaigns,
so CAS SCA picks them up and the campaign flips to "Compromised".

DO NOT RUN `npm install`, `pip install`, `terraform init`, or any CI job that installs
these dependencies. These are real malicious releases (credential stealers / wipers).
Delete this branch when testing is finished.

| Folder | Campaign | Package |
|---|---|---|
| npm-shai-hulud-tensorlake | Shai-Hulud – Tensorlake | tensorlake@0.5.144 (npm) |
| npm-memtensor | MemTensor (sckit) | @memtensor/memos-cloud-openclaw-plugin@0.1.21 (npm) |
| pypi-memtensor | MemTensor (sckit) | MemoryOS==2.0.34 (PyPI) |
| terraform-graphalgo | Graphalgo | gocommunity-io/dockerd, kreuzwenker/docker providers |
