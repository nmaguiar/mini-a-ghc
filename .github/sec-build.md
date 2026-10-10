```yaml
╭ [0] ╭ Target         : nmaguiar/mini-a-ghc:build (ubuntu 26.04) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-87766 
│                       │      ├ PkgID           : bubblewrap@0.11.1-1ubuntu0.3 
│                       │      ├ PkgName         : bubblewrap 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bubblewrap@0.11.1-1ubuntu0.3?arch=amd6
│                       │      │                  │       4&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 7c84b330fd951810 
│                       │      ├ InstalledVersion: 0.11.1-1ubuntu0.3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-87766 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d2318291273345c47cb0cff7d397b25bef768c4692ebd7d3ad7e9
│                       │      │                   10d5f518d80 
│                       │      ├ Title           : bubblewrap: bubblewrap: symlink traversal via /oldroot
│                       │      │                   allows writing files outside sandbox during setup 
│                       │      ├ Description     : A flaw was found in bubblewrap. During sandbox setup,
│                       │      │                   creating files or directories under the new root can follow
│                       │      │                   a parent symlink onto the host via /oldroot, writing
│                       │      │                   attacker-chosen paths outside the sandbox as the launching
│                       │      │                   user. This happens before the sandboxed process starts. This
│                       │      │                    issue is GHSA-pxhw-h44j-8pfx. It is fixed in bubblewrap
│                       │      │                   0.12.0. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-59 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 3 
│                       │      │                  ├ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 8.8 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/09/09/3 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/09/22/23 
│                       │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-87766 
│                       │      │                  ├ [3]: https://bugs.debian.org/1145655 
│                       │      │                  ├ [4]: https://bugzilla.redhat.com/show_bug.cgi?id=2530542 
│                       │      │                  ├ [5]: https://github.com/containers/bubblewrap/releases/tag/
│                       │      │                  │      v0.12.0 
│                       │      │                  ├ [6]: https://github.com/containers/bubblewrap/security/advi
│                       │      │                  │      sories/GHSA-pxhw-h44j-8pfx 
│                       │      │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-87766 
│                       │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2026-87766 
│                       │      │                  ╰ [9]: https://www.openwall.com/lists/oss-security/2026/08/27/7 
│                       │      ├ PublishedDate   : 2026-09-09T09:17:12.54Z 
│                       │      ╰ LastModifiedDate: 2026-09-22T23:17:07.763Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:00b727aff419ec191ea3d16479dcedda02a8f89a897f8f58654fc
│                       │      │                   25fdeea0494 
│                       │      ├ Title           : jq: embedded NUL truncates top-level jq programs loaded with
│                       │      │                    -f 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   Top-level jq programs loaded from a file with -f are
│                       │      │                   truncated at the first embedded NUL byte on current upstream
│                       │      │                    HEAD. A crafted filter file such as . followed by \x00 and
│                       │      │                   arbitrary suffix compiles and executes as only the prefix
│                       │      │                   before the NUL. This leaves jq with a post-CVE-2026-33948
│                       │      │                   prefix/full-buffer mismatch on the compilation path even
│                       │      │                   though the JSON parser path has already been fixed. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-158 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41256 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/5a015deae35d19e3eb
│                       │      │                  │      bc65db6c157a80e76df738 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      vf2h-chrj-q3fg 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41256 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41256 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:33.983Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:46:23.713Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1da16be5e7a2455b9511a329b1ae64578c9a6d6cf287586bf9133
│                       │      │                   8104566bb57 
│                       │      ├ Title           : jq: signed-int overflow in stack_reallocate 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   the jq bytecode VM's data stack tracks its allocation size
│                       │      │                   in a signed int. When the stack grows beyond ≈1 GiB (via
│                       │      │                   deeply nested generator forks), the doubling arithmetic
│                       │      │                   overflows. The wrapped value is passed to realloc and then
│                       │      │                   used for a memmove with attacker-influenced offsets. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-190 
│                       │      │                  ╰ [1]: CWE-787 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41257 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/01b3cded76daacbfdd
│                       │      │                  │      b7f8763700b0803bcb5c6f 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      4jm8-m363-4539 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41257 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41257 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:34.127Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:46:23.82Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a0c2a73e027352d35f07ccdb2847d2451fbbe4aaadfa0a8c2ad44
│                       │      │                   6cd67ec5754 
│                       │      ├ Title           : jq: embedded NUL in jq import paths causes local
│                       │      │                   redaction-policy bypass and preserves sensitive fields in
│                       │      │                   published artifacts 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   jq accepts embedded NUL bytes in import paths at the
│                       │      │                   jq-language level, but later resolves those paths through C
│                       │      │                   string operations during module and data-file lookup. This
│                       │      │                   creates a mismatch between the logical import string that
│                       │      │                   policy or audit code may validate and the on-disk path that
│                       │      │                   jq actually opens. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-20 
│                       │      │                  ╰ [1]: CWE-158 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43895 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/9d223f153c3632a207
│                       │      │                  │      fa071caaa6292da33ae361 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      7q7g-mrq3-phxr 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43895 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43895 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:37.387Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:50:02.68Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2be4b67649fee0e1624eadd25aa7ba92c5c0a459d33332997f037
│                       │      │                   ea87e86f3bc 
│                       │      ├ Title           : jq: stack overflow in recursive object merge 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   unbounded recursion in jv_object_merge_recursive() allows a
│                       │      │                   crafted jq program to crash the process with a segfault. The
│                       │      │                    function is reachable through the * operator when both
│                       │      │                   operands are objects. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-674 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43896 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/532ccea6080ed6758f
│                       │      │                  │      39fe9f6208a44b665023d2 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      mg96-6h3q-g846 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43896 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43896 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:37.53Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:50:02.79Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4061211a97cf6eacd0706907e6d4bcc81aa937dd306ae5ca5861d
│                       │      │                   1f3c7b42d4a 
│                       │      ├ Title           : jq: stack overflow in module loading on mutual include 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.2rc1 and
│                       │      │                   earlier, the ordinary module loader recurses without cycle
│                       │      │                   detection when two
│                       │      │                   otherwise valid modules include each other. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-674 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-44777 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/f58787c41835d9b177
│                       │      │                  │      95730cb04925fdba25c71c 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      rmpv-jgvr-wpr9 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44777 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-44777 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:38.517Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:51:19.04Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2.4?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : b964ecf8d3a43faa 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cf1fb97463060d648816d8b8428cf4ba603c33ae8931c2975c2fc
│                       │      │                   1407823a93d 
│                       │      ├ Title           : glibc: glibc: Heap buffer overflow via attacker-controlled
│                       │      │                   fopen mode string 
│                       │      ├ Description     : Passing an effectively empty string to the `,ccs=` syntax
│                       │      │                   extension of the mode argument in the `fopen` function in
│                       │      │                   the GNU C Library version 2.45 or earlier may result in a
│                       │      │                   heap buffer overflow when the mode string input to the
│                       │      │                   function is attacker controlled.
│                       │      │                   
│                       │      │                   This usage pattern is not seen in applications in common
│                       │      │                   GNU/Linux distributions and applications that process
│                       │      │                   user-supplied values for `ccs` should not pass them through
│                       │      │                   without validation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/08/27/6 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-18374 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-18374 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=34574 
│                       │      │                  ├ [4]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advis
│                       │      │                  │      ories/GLIBC-SA-2026-0015 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0015 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-18374 
│                       │      ├ PublishedDate   : 2026-08-27T20:17:03.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-03T16:43:15.293Z 
│                       ├ [7]  ╭ VulnerabilityID : CVE-2026-89092 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2.4?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : b964ecf8d3a43faa 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:86a847da5270c061d1f053d05f07a82009f695ddbfe718db51c4c
│                       │      │                   17092e54af3 
│                       │      ├ Title           : glibc: nscd stack overflow leads to degraded DNS resolution 
│                       │      ├ Description     : The nscd service in the GNU C Library 2.3.4 onwards may
│                       │      │                   crash due to a 
│                       │      │                   stack overflow when a malicious DNS server returns too large
│                       │      │                    a response 
│                       │      │                   for a DNS query, resulting in degraded DNS resolution for
│                       │      │                   the system.
│                       │      │                   
│                       │      │                   Exploitation of this bug needs a system that has nscd
│                       │      │                   enabled and using 
│                       │      │                   an untrusted DNS server for name resolution, with the
│                       │      │                   compromised DNS 
│                       │      │                   server being capable of processing records large enough to
│                       │      │                   result in a 
│                       │      │                   stack overflow in an nscd thread stack.  During
│                       │      │                   experimentation, bind 9 
│                       │      │                   was unable to handle large records, but that could change in
│                       │      │                    future or 
│                       │      │                   with a different name server.  In typical installations,
│                       │      │                   nscd is 
│                       │      │                   executed in an isolated context as its own user without a
│                       │      │                   shell, due to 
│                       │      │                   which any compromise of that service is isolated.
│                       │      │                   There is a remote possibility of nscd cache corruption if an
│                       │      │                    attacker 
│                       │      │                   manages to get the stack pointer into a desired point in the
│                       │      │                    heap, 
│                       │      │                   potentially resulting in other caches in nscd being
│                       │      │                   overwritten with 
│                       │      │                   corrupt data through the stack overflow, until the buggy
│                       │      │                   code path 
│                       │      │                   eventually results in a crash.
│                       │      │                   Finally, a crash in nscd may result in performance
│                       │      │                   degradation when 
│                       │      │                   resolving names, but it does not result in a denial of
│                       │      │                   service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-789 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/09/11/2 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-89092 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-89092 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=34624 
│                       │      │                  ├ [4]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advis
│                       │      │                  │      ories/GLIBC-SA-2026-0016 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0016 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-89092 
│                       │      ├ PublishedDate   : 2026-09-11T02:18:35.46Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T18:17:00.23Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       .4?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : bbb7a8f7a59474e8 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8cb8e273cd16d914b6eade3dafedb47dd1cc9fb94b52481749038
│                       │      │                   d9b14016fa2 
│                       │      ├ Title           : glibc: glibc: Heap buffer overflow via attacker-controlled
│                       │      │                   fopen mode string 
│                       │      ├ Description     : Passing an effectively empty string to the `,ccs=` syntax
│                       │      │                   extension of the mode argument in the `fopen` function in
│                       │      │                   the GNU C Library version 2.45 or earlier may result in a
│                       │      │                   heap buffer overflow when the mode string input to the
│                       │      │                   function is attacker controlled.
│                       │      │                   
│                       │      │                   This usage pattern is not seen in applications in common
│                       │      │                   GNU/Linux distributions and applications that process
│                       │      │                   user-supplied values for `ccs` should not pass them through
│                       │      │                   without validation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/08/27/6 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-18374 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-18374 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=34574 
│                       │      │                  ├ [4]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advis
│                       │      │                  │      ories/GLIBC-SA-2026-0015 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0015 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-18374 
│                       │      ├ PublishedDate   : 2026-08-27T20:17:03.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-03T16:43:15.293Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2026-89092 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       .4?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : bbb7a8f7a59474e8 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:196c3b5e2ff45e6576dcd492fcd054f98d992722cd1ef1bbe9f37
│                       │      │                   7c911b0615b 
│                       │      ├ Title           : glibc: nscd stack overflow leads to degraded DNS resolution 
│                       │      ├ Description     : The nscd service in the GNU C Library 2.3.4 onwards may
│                       │      │                   crash due to a 
│                       │      │                   stack overflow when a malicious DNS server returns too large
│                       │      │                    a response 
│                       │      │                   for a DNS query, resulting in degraded DNS resolution for
│                       │      │                   the system.
│                       │      │                   
│                       │      │                   Exploitation of this bug needs a system that has nscd
│                       │      │                   enabled and using 
│                       │      │                   an untrusted DNS server for name resolution, with the
│                       │      │                   compromised DNS 
│                       │      │                   server being capable of processing records large enough to
│                       │      │                   result in a 
│                       │      │                   stack overflow in an nscd thread stack.  During
│                       │      │                   experimentation, bind 9 
│                       │      │                   was unable to handle large records, but that could change in
│                       │      │                    future or 
│                       │      │                   with a different name server.  In typical installations,
│                       │      │                   nscd is 
│                       │      │                   executed in an isolated context as its own user without a
│                       │      │                   shell, due to 
│                       │      │                   which any compromise of that service is isolated.
│                       │      │                   There is a remote possibility of nscd cache corruption if an
│                       │      │                    attacker 
│                       │      │                   manages to get the stack pointer into a desired point in the
│                       │      │                    heap, 
│                       │      │                   potentially resulting in other caches in nscd being
│                       │      │                   overwritten with 
│                       │      │                   corrupt data through the stack overflow, until the buggy
│                       │      │                   code path 
│                       │      │                   eventually results in a crash.
│                       │      │                   Finally, a crash in nscd may result in performance
│                       │      │                   degradation when 
│                       │      │                   resolving names, but it does not result in a denial of
│                       │      │                   service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-789 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/09/11/2 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-89092 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-89092 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=34624 
│                       │      │                  ├ [4]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advis
│                       │      │                  │      ories/GLIBC-SA-2026-0016 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0016 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-89092 
│                       │      ├ PublishedDate   : 2026-09-11T02:18:35.46Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T18:17:00.23Z 
│                       ├ [10] ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2.4?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : fe574f54c2bc3102 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:26b0bce5b2731ddff14c1dab947f27b1d632d3a4b39ef00629db9
│                       │      │                   a475855df64 
│                       │      ├ Title           : glibc: glibc: Heap buffer overflow via attacker-controlled
│                       │      │                   fopen mode string 
│                       │      ├ Description     : Passing an effectively empty string to the `,ccs=` syntax
│                       │      │                   extension of the mode argument in the `fopen` function in
│                       │      │                   the GNU C Library version 2.45 or earlier may result in a
│                       │      │                   heap buffer overflow when the mode string input to the
│                       │      │                   function is attacker controlled.
│                       │      │                   
│                       │      │                   This usage pattern is not seen in applications in common
│                       │      │                   GNU/Linux distributions and applications that process
│                       │      │                   user-supplied values for `ccs` should not pass them through
│                       │      │                   without validation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/08/27/6 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-18374 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-18374 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=34574 
│                       │      │                  ├ [4]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advis
│                       │      │                  │      ories/GLIBC-SA-2026-0015 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0015 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-18374 
│                       │      ├ PublishedDate   : 2026-08-27T20:17:03.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-03T16:43:15.293Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2026-89092 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2.4?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : fe574f54c2bc3102 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f092db21c2b707c37ee415fbdb8983bedc56199ab0100b8217834
│                       │      │                   b91b200860e 
│                       │      ├ Title           : glibc: nscd stack overflow leads to degraded DNS resolution 
│                       │      ├ Description     : The nscd service in the GNU C Library 2.3.4 onwards may
│                       │      │                   crash due to a 
│                       │      │                   stack overflow when a malicious DNS server returns too large
│                       │      │                    a response 
│                       │      │                   for a DNS query, resulting in degraded DNS resolution for
│                       │      │                   the system.
│                       │      │                   
│                       │      │                   Exploitation of this bug needs a system that has nscd
│                       │      │                   enabled and using 
│                       │      │                   an untrusted DNS server for name resolution, with the
│                       │      │                   compromised DNS 
│                       │      │                   server being capable of processing records large enough to
│                       │      │                   result in a 
│                       │      │                   stack overflow in an nscd thread stack.  During
│                       │      │                   experimentation, bind 9 
│                       │      │                   was unable to handle large records, but that could change in
│                       │      │                    future or 
│                       │      │                   with a different name server.  In typical installations,
│                       │      │                   nscd is 
│                       │      │                   executed in an isolated context as its own user without a
│                       │      │                   shell, due to 
│                       │      │                   which any compromise of that service is isolated.
│                       │      │                   There is a remote possibility of nscd cache corruption if an
│                       │      │                    attacker 
│                       │      │                   manages to get the stack pointer into a desired point in the
│                       │      │                    heap, 
│                       │      │                   potentially resulting in other caches in nscd being
│                       │      │                   overwritten with 
│                       │      │                   corrupt data through the stack overflow, until the buggy
│                       │      │                   code path 
│                       │      │                   eventually results in a crash.
│                       │      │                   Finally, a crash in nscd may result in performance
│                       │      │                   degradation when 
│                       │      │                   resolving names, but it does not result in a denial of
│                       │      │                   service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-789 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/09/11/2 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-89092 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-89092 
│                       │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=34624 
│                       │      │                  ├ [4]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advis
│                       │      │                  │      ories/GLIBC-SA-2026-0016 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0016 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-89092 
│                       │      ├ PublishedDate   : 2026-09-11T02:18:35.46Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T18:17:00.23Z 
│                       ├ [12] ╭ VulnerabilityID : CVE-2025-66382 
│                       │      ├ PkgID           : libexpat1@2.7.4-1ubuntu0.2 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1ubuntu0.2?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 1019b85f746342f4 
│                       │      ├ InstalledVersion: 2.7.4-1ubuntu0.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5f74911726e5465d01a8879bc0c38f57e6525ad9b633a81f7ad33
│                       │      │                   df057a51c16 
│                       │      ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                       │      │                   processing 
│                       │      ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                       │      │                   approximate size of 2 MiB can lead to dozens of seconds of
│                       │      │                   processing time. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/12/02/1 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-66382 
│                       │      │                  ├ [2]: https://cert-portal.siemens.com/productcert/html/ssa-0
│                       │      │                  │      82556.html 
│                       │      │                  ├ [3]: https://cert-portal.siemens.com/productcert/html/ssa-2
│                       │      │                  │      53495.html 
│                       │      │                  ├ [4]: https://github.com/libexpat/libexpat/issues/1076 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-66382 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                       │      ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T09:56:45.24Z 
│                       ├ [13] ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:93d895cbc0f27d4311ba60ad73ac96477896b9222c916393f2a19
│                       │      │                   ad3d6750c1d 
│                       │      ├ Title           : jq: embedded NUL truncates top-level jq programs loaded with
│                       │      │                    -f 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   Top-level jq programs loaded from a file with -f are
│                       │      │                   truncated at the first embedded NUL byte on current upstream
│                       │      │                    HEAD. A crafted filter file such as . followed by \x00 and
│                       │      │                   arbitrary suffix compiles and executes as only the prefix
│                       │      │                   before the NUL. This leaves jq with a post-CVE-2026-33948
│                       │      │                   prefix/full-buffer mismatch on the compilation path even
│                       │      │                   though the JSON parser path has already been fixed. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-158 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41256 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/5a015deae35d19e3eb
│                       │      │                  │      bc65db6c157a80e76df738 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      vf2h-chrj-q3fg 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41256 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41256 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:33.983Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:46:23.713Z 
│                       ├ [14] ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6016a312c9dc0be2862808121b673ed89408916e3670541a81551
│                       │      │                   28f0081a8f9 
│                       │      ├ Title           : jq: signed-int overflow in stack_reallocate 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   the jq bytecode VM's data stack tracks its allocation size
│                       │      │                   in a signed int. When the stack grows beyond ≈1 GiB (via
│                       │      │                   deeply nested generator forks), the doubling arithmetic
│                       │      │                   overflows. The wrapped value is passed to realloc and then
│                       │      │                   used for a memmove with attacker-influenced offsets. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-190 
│                       │      │                  ╰ [1]: CWE-787 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41257 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/01b3cded76daacbfdd
│                       │      │                  │      b7f8763700b0803bcb5c6f 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      4jm8-m363-4539 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41257 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41257 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:34.127Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:46:23.82Z 
│                       ├ [15] ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f5224e64fcb06c8a4327370406f3fa44419ed8305aca6c769ea25
│                       │      │                   a521ec35768 
│                       │      ├ Title           : jq: embedded NUL in jq import paths causes local
│                       │      │                   redaction-policy bypass and preserves sensitive fields in
│                       │      │                   published artifacts 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   jq accepts embedded NUL bytes in import paths at the
│                       │      │                   jq-language level, but later resolves those paths through C
│                       │      │                   string operations during module and data-file lookup. This
│                       │      │                   creates a mismatch between the logical import string that
│                       │      │                   policy or audit code may validate and the on-disk path that
│                       │      │                   jq actually opens. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-20 
│                       │      │                  ╰ [1]: CWE-158 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43895 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/9d223f153c3632a207
│                       │      │                  │      fa071caaa6292da33ae361 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      7q7g-mrq3-phxr 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43895 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43895 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:37.387Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:50:02.68Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:413bf91a1835605c4abddf7009df192e658821022e58521821bdb
│                       │      │                   7e506dc8be2 
│                       │      ├ Title           : jq: stack overflow in recursive object merge 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │      │                   unbounded recursion in jv_object_merge_recursive() allows a
│                       │      │                   crafted jq program to crash the process with a segfault. The
│                       │      │                    function is reachable through the * operator when both
│                       │      │                   operands are objects. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-674 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43896 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/532ccea6080ed6758f
│                       │      │                  │      39fe9f6208a44b665023d2 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      mg96-6h3q-g846 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43896 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43896 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:37.53Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:50:02.79Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:67e7c25a9731fa29fa7e6c700ee89c52385d7667851574de90607
│                       │      │                   f5c3b3cfe8e 
│                       │      ├ Title           : jq: stack overflow in module loading on mutual include 
│                       │      ├ Description     : jq is a command-line JSON processor. In 1.8.2rc1 and
│                       │      │                   earlier, the ordinary module loader recurses without cycle
│                       │      │                   detection when two
│                       │      │                   otherwise valid modules include each other. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-674 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-44777 
│                       │      │                  ├ [1]: https://github.com/jqlang/jq/commit/f58787c41835d9b177
│                       │      │                  │      95730cb04925fdba25c71c 
│                       │      │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA-
│                       │      │                  │      rmpv-jgvr-wpr9 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44777 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-44777 
│                       │      ├ PublishedDate   : 2026-05-11T18:16:38.517Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:51:19.04Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2026-13757 
│                       │      ├ PkgID           : libp11-kit0@0.26.2-2 
│                       │      ├ PkgName         : libp11-kit0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distro
│                       │      │                  │       =ubuntu-26.04 
│                       │      │                  ╰ UID : 39936f33632ab742 
│                       │      ├ InstalledVersion: 0.26.2-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:49c6fa6f3e3c8ebdeedd0e51408dbb26b4d45728b9bb7d2120ca4
│                       │      │                   685bee9e2c1 
│                       │      ├ Title           : p11-kit: Stack exhaustion via unbounded recursion in RPC
│                       │      │                   attribute parsing 
│                       │      ├ Description     : A flaw was found in p11-kit. The RPC message attribute
│                       │      │                   parsing functions p11_rpc_message_get_attribute() and
│                       │      │                   p11_rpc_message_get_attribute_array_value() form a
│                       │      │                   mutually-recursive call chain with no recursion depth limit
│                       │      │                   when processing nested CKA_WRAP_TEMPLATE,
│                       │      │                   CKA_UNWRAP_TEMPLATE, and CKA_DERIVE_TEMPLATE attributes. An
│                       │      │                   unauthenticated attacker with local access to the p11-kit
│                       │      │                   RPC Unix domain socket can send a specially crafted request
│                       │      │                   with deeply nested template attributes, causing stack
│                       │      │                   exhaustion and crashing the p11-kit server process and its
│                       │      │                   dependent services. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-674 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37469 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:38342 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:49667 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:49668 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:53371 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:54387 
│                       │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:54760 
│                       │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:58981 
│                       │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:72394 
│                       │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:72395 
│                       │      │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:72399 
│                       │      │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:72470 
│                       │      │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:72475 
│                       │      │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:72476 
│                       │      │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:72502 
│                       │      │                  ├ [15]: https://access.redhat.com/security/cve/CVE-2026-13757 
│                       │      │                  ├ [16]: https://bugzilla.redhat.com/2494556 
│                       │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                       │      │                  ├ [18]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-13757 
│                       │      │                  ├ [20]: https://errata.almalinux.org/9/ALSA-2026-49667.html 
│                       │      │                  ├ [21]: https://errata.rockylinux.org/RLSA-2026:49667 
│                       │      │                  ├ [22]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                       │      │                  ├ [23]: https://linux.oracle.com/cve/CVE-2026-13757.html 
│                       │      │                  ├ [24]: https://linux.oracle.com/errata/ELSA-2026-49668.html 
│                       │      │                  ├ [25]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                       │      │                  ├ [26]: https://ubuntu.com/security/notices/USN-8687-1 
│                       │      │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                       │      ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T01:16:45.04Z 
│                       ├ [19] ╭ VulnerabilityID : CVE-2026-86145 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-86145 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:de718c2a6af9ce48e7427ff295000a6ce4efe3c55a27fbbc92952
│                       │      │                   fb06c9e845e 
│                       │      ├ Title           : pcre2: PCRE2: Out-of-bounds write allows arbitrary code
│                       │      │                   execution via crafted regular expressions 
│                       │      ├ Description     : PCRE2 before 10.48 allows a pcre2_dfa_match out-of-bounds
│                       │      │                   write because reuse of a cached workspace block, in a
│                       │      │                   recursive DFA matching workspace, lacks a size check (even
│                       │      │                   though a newly allocated block, for the same purpose, does
│                       │      │                   have a size check). This outcome requires an
│                       │      │                   attacker-controlled regular expression, or a recursive
│                       │      │                   pattern in conjunction with a small heap limit (this can be
│                       │      │                   set through the API). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-424 
│                       │      ├ VendorSeverity   ╭ azure : 3 
│                       │      │                  ├ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 8.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/09/05/3 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-86145 
│                       │      │                  ├ [2]: https://github.com/PCRE2Project/pcre2/releases/tag/pcr
│                       │      │                  │      e2-10.48 
│                       │      │                  ├ [3]: https://github.com/PCRE2Project/pcre2/security/advisor
│                       │      │                  │      ies/GHSA-3r4p-g7gg-ppmf 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-86145 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-86145 
│                       │      ├ PublishedDate   : 2026-09-05T06:17:10.37Z 
│                       │      ╰ LastModifiedDate: 2026-09-09T16:04:24.933Z 
│                       ├ [20] ╭ VulnerabilityID : CVE-2026-89161 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89161 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:073c0c445a058498daf5af1ebfe1810eb121ed6fc443ff4328896
│                       │      │                   4a5c341fc0b 
│                       │      ├ Title           : pcre2: PCRE2: Memory corruption vulnerability in
│                       │      │                   pcre2_jit_match 
│                       │      ├ Description     : In PCRE2 before 10.48, pcre2_jit_match mishandles a
│                       │      │                   previously copied subject being passed in as a context. An
│                       │      │                   incorrect free operation can occur. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-590 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ nvd   : 3 
│                       │      │                  ├ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.8 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-89161 
│                       │      │                  ├ [1]: https://github.com/PCRE2Project/pcre2/commit/1dcd0cf42
│                       │      │                  │      a6a7cb62cc9a7c024196733abcfda95%20%28pcre2-10.48-RC1%2
│                       │      │                  │      9 
│                       │      │                  ├ [2]: https://github.com/PCRE2Project/pcre2/pull/937 
│                       │      │                  ├ [3]: https://github.com/PCRE2Project/pcre2/releases/tag/pcr
│                       │      │                  │      e2-10.48 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-89161 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-89161 
│                       │      ├ PublishedDate   : 2026-09-11T04:18:04.47Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T19:10:47.78Z 
│                       ├ [21] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libsystemd0@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libsystemd0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.4?arch=amd6
│                       │      │                  │       4&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e41c7d584057e32 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ba04f8f630891017d77a3381d25e4b11b3d9c7c0be03bb99cb1f6
│                       │      │                   b88d4b2fda7 
│                       │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                       │      │                   terminals via logger command 
│                       │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                       │      │                   sequences to the terminals of arbitrary users when a "logger
│                       │      │                    -p emerg" command is executed, if ForwardToWall=yes is
│                       │      │                   set. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-669 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/08/1 
│                       │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libudev1@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libudev1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.4?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : db6ded6155f534fe 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5e0d9e3bd32baf5bfc547d43a5165ab7b0a60eacd994ad7dcbba0
│                       │      │                   8ac872b75d6 
│                       │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                       │      │                   terminals via logger command 
│                       │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                       │      │                   sequences to the terminals of arbitrary users when a "logger
│                       │      │                    -p emerg" command is executed, if ForwardToWall=yes is
│                       │      │                   set. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-669 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/08/1 
│                       │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                       ├ [23] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : login.defs 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : eaf648d5e4e975f7 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ad00330cb8e5371fd0437960ddffd47bd75d427417d052ee33ef0
│                       │      │                   073283c14b7 
│                       │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │      │                   /etc/login.defs could lead to compromise 
│                       │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │      │                   165535 for the first user account) that can realistically
│                       │      │                   conflict with the uids of users defined on locally
│                       │      │                   administered networks, potentially leading to account
│                       │      │                   takeover, e.g., by leveraging newuidmap for access to an NFS
│                       │      │                    home directory (or same-host resources in the case of
│                       │      │                   remote logins by these local network users). NOTE: it may
│                       │      │                   also be argued that system administrators should not have
│                       │      │                   assigned uids, within local networks, that are within the
│                       │      │                   range that can occur in /etc/subuid. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ oracle-oval: 1 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.6 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                       │      │                  ├ [4] : https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-56433 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:20559 
│                       │      │                  ├ [8] : https://github.com/shadow-maint/shadow/blob/e2512d574
│                       │      │                  │       1d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L
│                       │      │                  │       241 
│                       │      │                  ├ [9] : https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [10]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 12ffbe3e135ac553 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b8b2d033e10a400b402e3127348769ddd5c759e696be2338babd1
│                       │      │                   8d83b348fc9 
│                       │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │      │                   /etc/login.defs could lead to compromise 
│                       │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │      │                   165535 for the first user account) that can realistically
│                       │      │                   conflict with the uids of users defined on locally
│                       │      │                   administered networks, potentially leading to account
│                       │      │                   takeover, e.g., by leveraging newuidmap for access to an NFS
│                       │      │                    home directory (or same-host resources in the case of
│                       │      │                   remote logins by these local network users). NOTE: it may
│                       │      │                   also be argued that system administrators should not have
│                       │      │                   assigned uids, within local networks, that are within the
│                       │      │                   range that can occur in /etc/subuid. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1188 
│                       │      ├ VendorSeverity   ╭ alma       : 1 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ oracle-oval: 1 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 1 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.6 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                       │      │                  ├ [4] : https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-56433 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:20559 
│                       │      │                  ├ [8] : https://github.com/shadow-maint/shadow/blob/e2512d574
│                       │      │                  │       1d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L
│                       │      │                  │       241 
│                       │      │                  ├ [9] : https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [10]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [25] ╭ VulnerabilityID : CVE-2026-35341 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:290c486bbdf844a89a9b50858ad8d1241ff73e48849603ca79869
│                       │      │                   3090bbfba39 
│                       │      ├ Title           : A vulnerability in uutils coreutils mkfifo allows for the
│                       │      │                   unauthorized ... 
│                       │      ├ Description     : A vulnerability in uutils coreutils mkfifo allows for the
│                       │      │                   unauthorized modification of permissions on existing files.
│                       │      │                   When mkfifo fails to create a FIFO because a file already
│                       │      │                   exists at the target path, it fails to terminate the
│                       │      │                   operation for that path and continues to execute a follow-up
│                       │      │                    set_permissions call. This results in the existing file's
│                       │      │                   permissions being changed to the default mode (often 644
│                       │      │                   after umask), potentially exposing sensitive files such as
│                       │      │                   SSH private keys to other users on the system. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-732 
│                       │      ├ VendorSeverity   ╭ ghsa  : 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N 
│                       │      │                         ╰ V3Score : 7.1 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10020 
│                       │      │                  ├ [2]: https://github.com/uutils/coreutils/pull/10376 
│                       │      │                  ├ [3]: https://github.com/uutils/coreutils/security/advisorie
│                       │      │                  │      s/GHSA-pmf6-rcx4-v53v 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:25.5Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2026-35344 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:437a1135995733f7b80d38ba8b21a513b75754e25879de925b93c
│                       │      │                   8828372cd5c 
│                       │      ├ Title           : The dd utility in uutils coreutils suppresses errors during
│                       │      │                   file trunc ... 
│                       │      ├ Description     : The dd utility in uutils coreutils suppresses errors during
│                       │      │                   file truncation operations by unconditionally calling
│                       │      │                   Result::ok() on truncation attempts. While intended to mimic
│                       │      │                    GNU behavior for special files like /dev/null, the uutils
│                       │      │                   implementation also hides failures on regular files and
│                       │      │                   directories caused by full disks or read-only file systems.
│                       │      │                   This can lead to silent data corruption in backup or
│                       │      │                   migration scripts, as the utility may report a successful
│                       │      │                   operation even when the destination file contains old or
│                       │      │                   garbage data. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-252 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N 
│                       │      │                         ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9745 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35344 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35344 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:36.49Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:25.833Z 
│                       ├ [27] ╭ VulnerabilityID : CVE-2026-35345 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0947cb66f174c11054920fb5045a94c463b59a01fda129f9101d3
│                       │      │                   a05f97353b2 
│                       │      ├ Title           : A vulnerability in the tail utility of uutils coreutils
│                       │      │                   allows for the ... 
│                       │      ├ Description     : A vulnerability in the tail utility of uutils coreutils
│                       │      │                   allows for the exfiltration of sensitive file contents when
│                       │      │                   using the --follow=name option. Unlike GNU tail, the uutils
│                       │      │                   implementation continues to monitor a path after it has been
│                       │      │                    replaced by a symbolic link, subsequently outputting the
│                       │      │                   contents of the link's target. In environments where a
│                       │      │                   privileged user (e.g., root) monitors a log directory, a
│                       │      │                   local attacker with write access to that directory can
│                       │      │                   replace a log file with a symlink to a sensitive system file
│                       │      │                    (such as /etc/shadow), causing tail to disclose the
│                       │      │                   contents of the sensitive file. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ╰ [1]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:L/A:N 
│                       │      │                         ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10328 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35345 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35345 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:36.627Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:25.943Z 
│                       ├ [28] ╭ VulnerabilityID : CVE-2026-35348 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c248058fc0be74a3eedd99331492e062125febfee9eb7efb642d7
│                       │      │                   816dd8909c9 
│                       │      ├ Title           : The sort utility in uutils coreutils is vulnerable to a
│                       │      │                   process panic  ... 
│                       │      ├ Description     : The sort utility in uutils coreutils is vulnerable to a
│                       │      │                   process panic when using the --files0-from option with
│                       │      │                   inputs containing non-UTF-8 filenames. The implementation
│                       │      │                   enforces UTF-8 encoding and utilizes expect(), causing an
│                       │      │                   immediate crash when encountering valid but non-UTF-8 paths.
│                       │      │                    This diverges from GNU sort, which treats filenames as raw
│                       │      │                   bytes. A local attacker can exploit this to crash the
│                       │      │                   utility and disrupt automated pipelines. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-248 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H 
│                       │      │                         ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9696 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35348 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35348 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:37.04Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:26.27Z 
│                       ├ [29] ╭ VulnerabilityID : CVE-2026-35350 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e5e2096e1ba2548c43719578979a20670c1101c2636e60f3d4708
│                       │      │                   24aa23d4f65 
│                       │      ├ Title           : The cp utility in uutils coreutils fails to properly handle
│                       │      │                   setuid and ... 
│                       │      ├ Description     : The cp utility in uutils coreutils fails to properly handle
│                       │      │                   setuid and setgid bits when ownership preservation fails.
│                       │      │                   When copying with the -p (preserve) flag, the utility
│                       │      │                   applies the source mode bits even if the chown operation is
│                       │      │                   unsuccessful. This can result in a user-owned copy retaining
│                       │      │                    original privileged bits, creating unexpected privileged
│                       │      │                   executables that violate local security policies. This
│                       │      │                   differs from GNU cp, which clears these bits when ownership
│                       │      │                   cannot be preserved. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-281 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H/A:L 
│                       │      │                         ╰ V3Score : 6.6 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9750 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35350 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35350 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:37.327Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:26.48Z 
│                       ├ [30] ╭ VulnerabilityID : CVE-2026-35351 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7918718275c13c3ed45019f3a47a912e40fcf282edb6a98bf0081
│                       │      │                   13cb33b3a35 
│                       │      ├ Title           : The mv utility in uutils coreutils fails to preserve file
│                       │      │                   ownership du ... 
│                       │      ├ Description     : The mv utility in uutils coreutils fails to preserve file
│                       │      │                   ownership during moves across different filesystem
│                       │      │                   boundaries. The utility falls back to a copy-and-delete
│                       │      │                   routine that creates the destination file using the caller's
│                       │      │                    UID/GID rather than the source's metadata. This flaw breaks
│                       │      │                    backups and migrations, causing files moved by a privileged
│                       │      │                    user (e.g., root) to become root-owned unexpectedly, which
│                       │      │                   can lead to information disclosure or restricted access for
│                       │      │                   the intended owners. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-281 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:L/I:L/A:L 
│                       │      │                         ╰ V3Score : 4.2 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9714 
│                       │      │                  ├ [2]: https://github.com/uutils/coreutils/pull/11706 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35351 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35351 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:37.457Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:26.587Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2026-35352 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:11d647ae9de57a3d545c28fdbff83f77f2789e207c778e0a46768
│                       │      │                   471f394ea22 
│                       │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │      │                   exists in the m ... 
│                       │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │      │                   exists in the mkfifo utility of uutils coreutils. The
│                       │      │                   utility creates a FIFO and then performs a path-based chmod
│                       │      │                   to set permissions. A local attacker with write access to
│                       │      │                   the parent directory can swap the newly created FIFO for a
│                       │      │                   symbolic link between these two operations. This redirects
│                       │      │                   the chmod call to an arbitrary file, potentially enabling
│                       │      │                   privilege escalation if the utility is run with elevated
│                       │      │                   privileges. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H 
│                       │      │                         ╰ V3Score : 7 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/04/4 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/05/04/5 
│                       │      │                  ├ [2]: http://www.openwall.com/lists/oss-security/2026/05/04/6 
│                       │      │                  ├ [3]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [4]: https://github.com/uutils/coreutils/issues/10020 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35352 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-35352 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:37.597Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:26.69Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2026-35354 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7f0d101570658bb92983e3786161974d83d3288592138326c45c9
│                       │      │                   e3a363a1095 
│                       │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists
│                       │      │                    in the mv ... 
│                       │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists
│                       │      │                    in the mv utility of uutils coreutils during cross-device
│                       │      │                   moves. The extended attribute (xattr) preservation logic
│                       │      │                   uses multiple path-based system calls that perform fresh
│                       │      │                   path-to-inode lookups for each operation. A local attacker
│                       │      │                   with write access to the directory can exploit this race to
│                       │      │                   swap files between calls, causing the destination file to
│                       │      │                   receive an inconsistent mix of security xattrs, such as
│                       │      │                   SELinux labels or file capabilities. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/A:N 
│                       │      │                         ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10014 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35354 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35354 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:37.867Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:26.907Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2026-35357 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6b464500866a702dd050ebcc18541b5367e5030276d02aefa5ec7
│                       │      │                   090bbece083 
│                       │      ├ Title           : The cp utility in uutils coreutils is vulnerable to an
│                       │      │                   information dis ... 
│                       │      ├ Description     : The cp utility in uutils coreutils is vulnerable to an
│                       │      │                   information disclosure race condition. Destination files are
│                       │      │                    initially created with umask-derived permissions (e.g.,
│                       │      │                   0644) before being restricted to their final mode (e.g.,
│                       │      │                   0600) later in the process. A local attacker can race to
│                       │      │                   open the file during this window; once obtained, the file
│                       │      │                   descriptor remains valid and readable even after the
│                       │      │                   permissions are tightened, exposing sensitive or private
│                       │      │                   file contents. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/A:N 
│                       │      │                         ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10011 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35357 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35357 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:38.267Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:27.223Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2026-35359 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8d073582546ed380e1fa240198bd2de01e8ca216361821212bb43
│                       │      │                   29b68f2a3fd 
│                       │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in the
│                       │      │                    cp utilit ... 
│                       │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in the
│                       │      │                    cp utility of uutils coreutils allows an attacker to bypass
│                       │      │                    no-dereference intent. The utility checks if a source path
│                       │      │                   is a symbolic link using path-based metadata but
│                       │      │                   subsequently opens it without the O_NOFOLLOW flag. An
│                       │      │                   attacker with concurrent write access can swap a regular
│                       │      │                   file for a symbolic link during this window, causing a
│                       │      │                   privileged cp process to copy the contents of arbitrary
│                       │      │                   sensitive files into a destination controlled by the
│                       │      │                   attacker. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ╰ [1]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/A:N 
│                       │      │                         ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10017 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35359 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35359 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:38.537Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:27.437Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2026-35360 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4a33b771f8989b9cdfefb99da336a1b0bfb32c23d1b1c27091a1e
│                       │      │                   0d98356f8a4 
│                       │      ├ Title           : The touch utility in uutils coreutils is vulnerable to a
│                       │      │                   Time-of-Check ... 
│                       │      ├ Description     : The touch utility in uutils coreutils is vulnerable to a
│                       │      │                   Time-of-Check to Time-of-Use (TOCTOU) race condition during
│                       │      │                   file creation. When the utility identifies a missing path,
│                       │      │                   it later attempts creation using File::create(), which
│                       │      │                   internally uses O_TRUNC. An attacker can exploit this window
│                       │      │                    to create a file or swap a symlink at the target path,
│                       │      │                   causing touch to truncate an existing file and leading to
│                       │      │                   permanent data loss. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/A:H 
│                       │      │                         ╰ V3Score : 6.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10019 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35360 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35360 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:38.673Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:27.543Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2026-35363 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3e30d0d162ad5438b882387cf3554d2547607c4d32e84000de729
│                       │      │                   5058a3da06e 
│                       │      ├ Title           : A vulnerability in the rm utility of uutils coreutils allows
│                       │      │                    the bypas ... 
│                       │      ├ Description     : A vulnerability in the rm utility of uutils coreutils allows
│                       │      │                    the bypass of safeguard mechanisms intended to protect the
│                       │      │                   current directory. While the utility correctly refuses to
│                       │      │                   delete . or .., it fails to recognize equivalent paths with
│                       │      │                   trailing slashes, such as ./ or .///. An accidental or
│                       │      │                   malicious execution of rm -rf ./ results in the silent
│                       │      │                   recursive deletion of all contents within the current
│                       │      │                   directory. The command further obscures the data loss by
│                       │      │                   reporting a misleading 'Invalid input' error, which may
│                       │      │                   cause users to miss the critical window for data recovery.[
│                       │      │                   m 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-22 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:H/A:L 
│                       │      │                         ╰ V3Score : 5.6 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9749 
│                       │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisorie
│                       │      │                  │      s/GHSA-89p7-7cq3-hhr2 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:27.867Z 
│                       ├ [37] ╭ VulnerabilityID : CVE-2026-35364 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:263f0273e442de307b93a7a3925f8009d44db53a11a1c842c1da7
│                       │      │                   d98d5f6e0e7 
│                       │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │      │                   exists in the m ... 
│                       │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │      │                   exists in the mv utility of uutils coreutils during
│                       │      │                   cross-device operations. The utility removes the destination
│                       │      │                    path before recreating it through a copy operation. A local
│                       │      │                    attacker with write access to the destination directory can
│                       │      │                    exploit this window to replace the destination with a
│                       │      │                   symbolic link. The subsequent privileged move operation will
│                       │      │                    follow the symlink, allowing the attacker to redirect the
│                       │      │                   write and overwrite an arbitrary target file with contents
│                       │      │                   from the source. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/A:H 
│                       │      │                         ╰ V3Score : 6.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10015 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35364 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35364 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:39.737Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:27.97Z 
│                       ├ [38] ╭ VulnerabilityID : CVE-2026-35367 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bd47564bfb46227e2ac5448fc80bde578dc2f56a8ac3583b46981
│                       │      │                   b6ec04ff3ef 
│                       │      ├ Title           : The nohup utility in uutils coreutils creates its default
│                       │      │                   output file, ... 
│                       │      ├ Description     : The nohup utility in uutils coreutils creates its default
│                       │      │                   output file, nohup.out, without specifying explicit
│                       │      │                   restricted permissions. This causes the file to inherit
│                       │      │                   umask-based permissions, typically resulting in a
│                       │      │                   world-readable file (0644). In multi-user environments, this
│                       │      │                    allows any user on the system to read the captured
│                       │      │                   stdout/stderr output of a command, potentially exposing
│                       │      │                   sensitive information. This behavior diverges from GNU
│                       │      │                   coreutils, which creates nohup.out with owner-only (0600)
│                       │      │                   permissions. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-732 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N 
│                       │      │                         ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10021 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35367 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35367 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:40.423Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:28.297Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2026-35368 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6d6b876bb5b8b12c75afc8b25ff5c0487f4f0d51b90b1a2d3ef75
│                       │      │                   ce8cb10558c 
│                       │      ├ Title           : A vulnerability exists in the chroot utility of uutils
│                       │      │                   coreutils when  ... 
│                       │      ├ Description     : A vulnerability exists in the chroot utility of uutils
│                       │      │                   coreutils when using the --userspec option. The utility
│                       │      │                   resolves the user specification via getpwnam() after
│                       │      │                   entering the chroot but before dropping root privileges. On
│                       │      │                   glibc-based systems, this can trigger the Name Service
│                       │      │                   Switch (NSS) to load shared libraries (e.g., libnss_*.so.2)
│                       │      │                   from the new root directory. If the NEWROOT is writable by
│                       │      │                   an attacker, they can inject a malicious NSS module to
│                       │      │                   execute arbitrary code as root, facilitating a full
│                       │      │                   container escape or privilege escalation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-426 
│                       │      ├ VendorSeverity   ╭ ghsa  : 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H 
│                       │      │                         ╰ V3Score : 7.9 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10327 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35368 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35368 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:40.56Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:28.4Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2026-35370 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f648b45f8d046ed00828d034b6bf6049ed9be46c481edcd5c4f72
│                       │      │                   33d1ed404cb 
│                       │      ├ Title           : The id utility in uutils coreutils miscalculates the groups=
│                       │      │                    section o ... 
│                       │      ├ Description     : The id utility in uutils coreutils miscalculates the groups=
│                       │      │                    section of its output. The implementation uses a user's
│                       │      │                   real GID instead of their effective GID to compute the group
│                       │      │                    list, leading to potentially divergent output compared to
│                       │      │                   GNU coreutils. Because many scripts and automated processes
│                       │      │                   rely on the output of id to make security-critical
│                       │      │                   access-control or permission decisions, this discrepancy can
│                       │      │                    lead to unauthorized access or security
│                       │      │                   misconfigurations. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-863 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:N 
│                       │      │                         ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                       │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisorie
│                       │      │                  │      s/GHSA-47c7-qrm7-mqw7 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:28.613Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2026-35371 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:02c60b4da2738c99716390efd8762e97846993704e1e16baa89f2
│                       │      │                   032f55c4354 
│                       │      ├ Title           : The id utility in uutils coreutils exhibits incorrect
│                       │      │                   behavior in its  ... 
│                       │      ├ Description     : The id utility in uutils coreutils exhibits incorrect
│                       │      │                   behavior in its "pretty print" output when the real UID and
│                       │      │                   effective UID differ. The implementation incorrectly uses
│                       │      │                   the effective GID instead of the effective UID when
│                       │      │                   performing a name lookup for the effective user. This
│                       │      │                   results in misleading diagnostic output that can cause
│                       │      │                   automated scripts or system administrators to make incorrect
│                       │      │                    decisions regarding file permissions or access control. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-451 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N 
│                       │      │                         ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                       │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisorie
│                       │      │                  │      s/GHSA-xv5w-cw7x-72gj 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:28.723Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2026-35373 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0d9b2d7f928cfa40c55b654820c5c6cb91c222d427af6b49f38cb
│                       │      │                   0969d99245c 
│                       │      ├ Title           : A logic error in the ln utility of uutils coreutils causes
│                       │      │                   the program ... 
│                       │      ├ Description     : A logic error in the ln utility of uutils coreutils causes
│                       │      │                   the program to reject source paths containing non-UTF-8
│                       │      │                   filename bytes when using target-directory forms (e.g., ln
│                       │      │                   SOURCE... DIRECTORY). While GNU ln treats filenames as raw
│                       │      │                   bytes and creates the links correctly, the uutils
│                       │      │                   implementation enforces UTF-8 encoding, resulting in a
│                       │      │                   failure to stat the file and a non-zero exit code. In
│                       │      │                   environments where automated scripts or system tasks process
│                       │      │                    valid but non-UTF-8 filenames common on Unix filesystems,
│                       │      │                   this divergence causes the utility to fail, leading to a
│                       │      │                   local denial of service for those specific operations. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-176 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L 
│                       │      │                  │      ╰ V3Score : 3.3 
│                       │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H 
│                       │      │                         ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/pull/11403 
│                       │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisorie
│                       │      │                  │      s/GHSA-jcjr-rh8q-7xqf 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:28.933Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2026-35374 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:87a05676dcaeaaf2027c9ef38d8cfbb6d22fa4dfce786e1e73adf
│                       │      │                   53af89166e1 
│                       │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists
│                       │      │                    in the sp ... 
│                       │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists
│                       │      │                    in the split utility of uutils coreutils. The program
│                       │      │                   attempts to prevent data loss by checking for identity
│                       │      │                   between input and output files using their file paths before
│                       │      │                    initiating the split operation. However, the utility
│                       │      │                   subsequently opens the output file with truncation after
│                       │      │                   this path-based validation is complete. A local attacker
│                       │      │                   with write access to the directory can exploit this race
│                       │      │                   window by manipulating mutable path components (e.g.,
│                       │      │                   swapping a path with a symbolic link). This can cause split
│                       │      │                   to truncate and write to an unintended target file,
│                       │      │                   potentially including the input file itself or other
│                       │      │                   sensitive files accessible to the process, leading to
│                       │      │                   permanent data loss. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ ghsa  : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/A:H 
│                       │      │                         ╰ V3Score : 6.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/pull/11401 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35374 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35374 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:42.127Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:29.04Z 
│                       ├ [44] ╭ VulnerabilityID : CVE-2026-35377 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cffa06c59fab47000046d92beabeec8deb803b1c08f77dc0edf26
│                       │      │                   9ba0827f2be 
│                       │      ├ Title           : A logic error in the env utility of uutils coreutils causes
│                       │      │                   a failure  ... 
│                       │      ├ Description     : A logic error in the env utility of uutils coreutils causes
│                       │      │                   a failure to correctly parse command-line arguments when
│                       │      │                   utilizing the -S (split-string) option. In GNU env,
│                       │      │                   backslashes within single quotes are treated literally (with
│                       │      │                    the exceptions of \\ and \'). However, the uutils
│                       │      │                   implementation incorrectly attempts to validate these
│                       │      │                   sequences, resulting in an "invalid sequence" error and an
│                       │      │                   immediate process termination with an exit status of 125
│                       │      │                   when encountering valid but unrecognized sequences like \a
│                       │      │                   or \x. This divergence from GNU behavior breaks
│                       │      │                   compatibility for automated scripts and administrative
│                       │      │                   workflows that rely on standard split-string semantics,
│                       │      │                   leading to a local denial of service for those operations.[
│                       │      │                   m 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-20 
│                       │      ├ VendorSeverity   ╭ ghsa  : 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L 
│                       │      │                         ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │      │                  ├ [1]: https://github.com/uutils/coreutils/pull/11512 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35377 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35377 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:42.577Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T10:40:29.357Z 
│                       ├ [45] ╭ VulnerabilityID : CVE-2026-18477 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18477 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:09fc09dadfce3e54951fd97ddaa2280f467f21bf5262a9fb42fc2
│                       │      │                   4a2ddfc4318 
│                       │      ├ Title           : tar: tar: TOCTOU in incremental dumpdir 'X' rename handling
│                       │      │                   allows restore path escape 
│                       │      ├ Description     : A TOCTOU (Time-of-Check Time-of-Use) vulnerability in GNU
│                       │      │                   tar's incremental dumpdir 'X' rename handling allows a local
│                       │      │                    attacker with write access to a directory being backed up
│                       │      │                   to influence the restore process if the attacker has access
│                       │      │                   to the system where the restore is being performed. During
│                       │      │                   restoration, files or directories may be created, renamed or
│                       │      │                    overwritten outside the intended extraction directory. This
│                       │      │                    could lead to unauthorized file modification or, in some
│                       │      │                   cases, privilege escalation. Exploitation does not require
│                       │      │                   the attacker to modify or craft the archive, and standard
│                       │      │                   backup and restore workflows—including extracting into a
│                       │      │                   newly created directory without using the -P option do not
│                       │      │                   mitigate the issue. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ julia      : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:H
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.4 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:49361 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:61581 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:61586 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:61783 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:66018 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:70390 
│                       │      │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2026-18477 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2455360 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2509735 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2509843 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2455360 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2509735 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2509843 
│                       │      │                  ├ [13]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18477 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18508 
│                       │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5704 
│                       │      │                  ├ [17]: https://errata.almalinux.org/9/ALSA-2026-61581.html 
│                       │      │                  ├ [18]: https://errata.rockylinux.org/RLSA-2026:61581 
│                       │      │                  ├ [19]: https://linux.oracle.com/cve/CVE-2026-18477.html 
│                       │      │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2026-70390.html 
│                       │      │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-18477 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-18477 
│                       │      ├ PublishedDate   : 2026-08-03T17:16:33.897Z 
│                       │      ╰ LastModifiedDate: 2026-09-22T22:17:11.233Z 
│                       ├ [46] ╭ VulnerabilityID : CVE-2026-18508 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                       │      │                  │         8cb9c5e028b4b02b2c97 
│                       │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                       │      │                            6db3b25f4d3649dc55e7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18508 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:19fc0e4cdbbbd773fb960754a444bc4089bd0d191a6dbf0f54ede
│                       │      │                   2dec0618646 
│                       │      ├ Title           : tar: tar: --one-top-level hardlink targets not confined to
│                       │      │                   top-level directory enabling arbitrary file overwrite 
│                       │      ├ Description     : A flaw was found in GNU tar. When extracting an archive with
│                       │      │                    the --one-top-level option, hardlink targets are not
│                       │      │                   confined to the designated top-level directory and may
│                       │      │                   resolve relative to the extraction working directory. A
│                       │      │                   crafted archive can create hardlinks that escape the
│                       │      │                   intended boundary and, when combined with a preexisting
│                       │      │                   symbolic link under the working directory, may allow writing
│                       │      │                    outside that boundary during a single extraction. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-59 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:50807 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:61581 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:61586 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:61783 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:66018 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:70390 
│                       │      │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2026-18508 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2455360 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2509735 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2509843 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2455360 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2509735 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2509843 
│                       │      │                  ├ [13]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18477 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18508 
│                       │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5704 
│                       │      │                  ├ [17]: https://errata.almalinux.org/9/ALSA-2026-61581.html 
│                       │      │                  ├ [18]: https://errata.rockylinux.org/RLSA-2026:61581 
│                       │      │                  ├ [19]: https://linux.oracle.com/cve/CVE-2026-18508.html 
│                       │      │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2026-70390.html 
│                       │      │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-18508 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-18508 
│                       │      ├ PublishedDate   : 2026-08-03T16:16:28.387Z 
│                       │      ╰ LastModifiedDate: 2026-09-22T22:17:11.493Z 
│                       ╰ [47] ╭ VulnerabilityID : CVE-2026-85091 
│                              ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ PkgName         : zlib1g 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu3
│                              │                  │       .1?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                              │                  ╰ UID : a4f0bcc5ee12eaad 
│                              ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
│                              │                  │         8cb9c5e028b4b02b2c97 
│                              │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
│                              │                            6db3b25f4d3649dc55e7 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-85091 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Fingerprint     : sha256:0c9579f4690c6aabb4de454629b242c37c5dbe49ba864c1c154c4
│                              │                   70cfa9c7993 
│                              ├ Title           : zlib versions 1.3.1.2 through 1.3.2 contain a heap buffer
│                              │                   overflow vul ... 
│                              ├ Description     : zlib versions 1.3.1.2 through 1.3.2 contain a heap buffer
│                              │                   overflow vulnerability in the gz_vacate() function when
│                              │                   processing non-blocking gzwrite() operations with stale
│                              │                   external buffer pointers. Attackers can trigger the overflow
│                              │                    by calling gzprintf() or gzvprintf() after a write stall,
│                              │                   causing an unchecked memmove() to write beyond the internal
│                              │                   input buffer boundary. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-787 
│                              ├ VendorSeverity   ─ ubuntu: 2 
│                              ├ References       ╭ [0]: https://gist.github.com/thesmartshadow/e0b9481792afb7c
│                              │                  │      31e86fee1ff084490 
│                              │                  ├ [1]: https://github.com/madler/zlib 
│                              │                  ├ [2]: https://github.com/madler/zlib/blob/v1.3.2/gzwrite.c#L
│                              │                  │      393 
│                              │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-85091 
│                              │                  ╰ [4]: https://www.vulncheck.com/advisories/zlib-1.3.1.2-thro
│                              │                         ugh-1.3.2-heap-buffer-overflow-via-gz-vacate 
│                              ├ PublishedDate   : 2026-09-03T13:06:20.573Z 
│                              ╰ LastModifiedDate: 2026-09-09T20:41:07.123Z 
├ [1] ╭ Target  : Java 
│     ├ Class   : lang-pkgs 
│     ├ Type    : jar 
│     ╰ Packages 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-78667 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6609 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78667 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:bcdc7eaf50ac17961865dd6f6ace0261496efc7f28c091b649be7
                        │      │                   6a9bd6aa5bf 
                        │      ├ Title           : net/http: golang: golang: Denial of Service via crafted HTTP
                        │      │                    Range headers 
                        │      ├ Description     : When parsing a Range header containing a large number of
                        │      │                   small ranges, FileServer(FS), ServeContent, and
                        │      │                   ServeFile(FS) can consume an excessive amount of CPU. 
                        │      ├ Severity        : HIGH 
                        │      ├ VendorSeverity   ─ redhat: 3 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:H 
                        │      │                           ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-78667 
                        │      │                  ├ [1]: https://go.dev/cl/847309 
                        │      │                  ├ [2]: https://go.dev/issue/81858 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-78667 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6609 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-78667 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.88Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:03.88Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-97031 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6607 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97031 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:7e980f005c47ef712709e28958c16d5e654da48c60433866ff97d
                        │      │                   069d234f5d3 
                        │      ├ Title           : crypto/tls: golang: crypto/tls: Denial of Service via
                        │      │                   multiple ECH outer extension references 
                        │      ├ Description     : Multiple ECH outer extension references are not permitted
                        │      │                   under RFC 9849; previously, a client could send a
                        │      │                   well-crafted packet that could trigger memory exhaustion in
                        │      │                   the server process by specifying multiple references. We now
                        │      │                    reject these as malformed and curb the memory amplification
                        │      │                    vector as a result. 
                        │      ├ Severity        : HIGH 
                        │      ├ VendorSeverity   ─ redhat: 3 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:H 
                        │      │                           ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-97031 
                        │      │                  ├ [1]: https://go.dev/cl/847312 
                        │      │                  ├ [2]: https://go.dev/issue/81855 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-97031 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6607 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-97031 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.037Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:06.037Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-94439 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6613 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94439 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:cde86c445c83cd350259e4c6a829285cc351edacfbf0fdca9bd9d
                        │      │                   2a81c095576 
                        │      ├ Title           : net/http: golang: net/http: HTTP request smuggling via
                        │      │                   improper handling of HTTP/1 CONNECT responses 
                        │      ├ Description     : When an HTTP server handler sends a 2xx response to an
                        │      │                   HTTP/1 CONNECT request and returns without hijacking the
                        │      │                   connection, the server improperly continues to read and
                        │      │                   serve requests from the connection. Since a 2xx response to
                        │      │                   an HTTP/1 CONNECT converts the connection into a tunnel, the
                        │      │                    server should not treat the connection as continuing to
                        │      │                   contain HTTP. The impact of this misbehavior is mostly
                        │      │                   limited to potential request smuggling, where an
                        │      │                   intermediate proxy considers the data on the connection to
                        │      │                   be tunneled and the server considers it to be HTTP. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ VendorSeverity   ─ redhat: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-94439 
                        │      │                  ├ [1]: https://go.dev/cl/847311 
                        │      │                  ├ [2]: https://go.dev/issue/81744 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-94439 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6613 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-94439 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.76Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:04.76Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-97032 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6617 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97032 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:08a70d5fda535a2eebdf73479930f7586f932dd526e7d4a2993c7
                        │      │                   0fb26b0442c 
                        │      ├ Title           : net/http: net/http/internal/http2: golang:
                        │      │                   golang.org/x/net/http2: net/http: Denial of Service via
                        │      │                   concurrent HPACK encoder modification 
                        │      ├ Description     : HTTP/2 servers could end up crashing due to inadvertently
                        │      │                   modifying its HPACK encoder concurrently. This happens
                        │      │                   because the server modifies the HPACK encoder from two
                        │      │                   goroutines without synchronization: one uses the encoder to
                        │      │                   encode a HEADERS frame as part of a response sent to a
                        │      │                   client and the other modifies the encoder's table size when
                        │      │                   handling a SETTINGS frame containing
                        │      │                   SETTINGS_HEADER_TABLE_SIZE that a client sends. A malicious
                        │      │                   client can repeatedly send a request while changing the
                        │      │                   header table size to crash the server. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ VendorSeverity   ─ redhat: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:H 
                        │      │                           ╰ V3Score : 5.9 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-97032 
                        │      │                  ├ [1]: https://go.dev/cl/847188 
                        │      │                  ├ [2]: https://go.dev/cl/847313 
                        │      │                  ├ [3]: https://go.dev/issue/81867 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-97032 
                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-6617 
                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-97032 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.213Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:06.213Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-56857 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6604 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56857 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:608be94b231affd5e5c21a546988b1a43aad7227e77a7b3ba73c2
                        │      │                   3787a0e0fa1 
                        │      ├ Title           : Root.Mkdir(All) can follow junctions out of the root on
                        │      │                   Windows in os 
                        │      ├ Description     : On Windows, when the target of Root.Mkdir or Root.MkdirAll
                        │      │                   is a junction pointing to an empty location, the operation
                        │      │                   can create a directory at the junction target even when that
                        │      │                    target is located outside the root. This only applies to
                        │      │                   operations where the last path component is a junction
                        │      │                   (path/to/junction, but not path/junction/target). 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/847305 
                        │      │                  ├ [1]: https://go.dev/issue/81739 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6604 
                        │      ├ PublishedDate   : 2026-10-08T23:17:01.487Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:01.487Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2026-56866 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6605 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56866 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:36a0b442da9d6c4197107bddde540ff35c3be51ebda6239335c95
                        │      │                   cc2c44aef2b 
                        │      ├ Title           : When http.Transport sends an HTTP/1 CONNECT request with a
                        │      │                   non-empty R ... 
                        │      ├ Description     : When http.Transport sends an HTTP/1 CONNECT request with a
                        │      │                   non-empty Request.Body, it writes the body directly to the
                        │      │                   connection without framing after the request headers. If the
                        │      │                    server rejects the CONNECT request with a non-2xx
                        │      │                   keep-alive response, Transport returns the connection to the
                        │      │                    idle pool. Because CONNECT requests do not have a request
                        │      │                   body, the server may interpret the trailing body bytes as a
                        │      │                   subsequent pipelined HTTP/1.1 request on the connection,
                        │      │                   leaving the pooled connection desynchronized and causing the
                        │      │                    next caller that reuses it to read the response to the
                        │      │                   injected request. In reverse proxies (including
                        │      │                   httputil.ReverseProxy) that forward CONNECT requests through
                        │      │                    a shared Transport, this can lead to cross-user response
                        │      │                   poisoning. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/847306 
                        │      │                  ├ [1]: https://go.dev/issue/81740 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6605 
                        │      ├ PublishedDate   : 2026-10-08T23:17:01.62Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:01.62Z 
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-78659 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6603 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78659 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:ac334d7b139bdef4a363087b9103087880215c4852f5fcb12b56d
                        │      │                   e8a44a0325d 
                        │      ├ Title           : When "Trailer" headers are sent by a client, the HTTP server
                        │      │                    internall ... 
                        │      ├ Description     : When "Trailer" headers are sent by a client, the HTTP server
                        │      │                    internally uses the header values to populate the
                        │      │                   Request.Trailer map passed to the server handler. Because
                        │      │                   Request.Trailer is a map, each entry incurs memory overhead.
                        │      │                    For HTTP/2 servers, a malicious client can exploit this by
                        │      │                   sending a "Trailer" header that declares a large number of
                        │      │                   fields, causing the server to allocate a disproportionate
                        │      │                   amount of memory while bypassing Server.MaxHeaderValueCount
                        │      │                   and Server.MaxHeaderBytes limits. This exploit is not
                        │      │                   applicable for HTTP/1 servers, which do not support
                        │      │                   multiplexing a large number of requests over one TCP
                        │      │                   connection, and whose Server.MaxHeaderBytes are calculated
                        │      │                   differently. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/847185 
                        │      │                  ├ [1]: https://go.dev/cl/847314 
                        │      │                  ├ [2]: https://go.dev/issue/81857 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-6603 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.27Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:03.27Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-78660 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6610 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78660 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:931eddec0b02d7fa9817dc196bce911dbee5efa074f3dda1ecfe7
                        │      │                   8d0395d485a 
                        │      ├ Title           : Historically, we have been rather lax about malformed
                        │      │                   framing-related  ... 
                        │      ├ Description     : Historically, we have been rather lax about malformed
                        │      │                   framing-related headers in our HTTP/2 implementation, as
                        │      │                   they cannot interfere with HTTP/2 framing. However, this
                        │      │                   makes it possible for our HTTP/2 implementation to forward
                        │      │                   responses containing such headers to an HTTP/1 client when
                        │      │                   acting as a reverse proxy. If the HTTP/1 client also does
                        │      │                   not behave strictly enough, this can result in response
                        │      │                   smuggling. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/835145 
                        │      │                  ├ [1]: https://go.dev/cl/836385 
                        │      │                  ├ [2]: https://go.dev/issue/81115 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-6610 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.51Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:03.51Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-78663 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6612 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78663 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:7926d4e1c1da0032ff859f9d65b1f7b590567b9b1dabd4855432c
                        │      │                   ab2373d602d 
                        │      ├ Title           : The HTTP/2 server can refund connection-level flow control
                        │      │                   twice for t ... 
                        │      ├ Description     : The HTTP/2 server can refund connection-level flow control
                        │      │                   twice for the same data: Once when a client resets a stream
                        │      │                   (refunding data for any sent-but-unread portion of the
                        │      │                   stream), and again when a request handler reads the buffered
                        │      │                    data. A malicious client can exploit this to bypass the
                        │      │                   configured connection-level flow control limit
                        │      │                   (MaxReceiveBufferPerConnection). Total buffered data is
                        │      │                   still limited by the concurrent stream limit and
                        │      │                   stream-level flow control. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/847187 
                        │      │                  ├ [1]: https://go.dev/cl/847310 
                        │      │                  ├ [2]: https://go.dev/issue/81743 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-6612 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.647Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:03.647Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-78669 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6611 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78669 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:87f2bf34f80b81f5e0880b3ce08dec88e909f43b249be79a943ea
                        │      │                   33d6fcc5300 
                        │      ├ Title           : A malicious HTTP/2 peer can cause excessive CPU consumption
                        │      │                   in the cli ... 
                        │      ├ Description     : A malicious HTTP/2 peer can cause excessive CPU consumption
                        │      │                   in the client or server by opening a large number of streams
                        │      │                    and then sending many small SETTINGS frames containing
                        │      │                   SETTINGS_INITIAL_WINDOW_SIZE values. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/847186 
                        │      │                  ├ [1]: https://go.dev/cl/847308 
                        │      │                  ├ [2]: https://go.dev/issue/81742 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-6611 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.01Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:04.01Z 
                        ├ [10] ╭ VulnerabilityID : CVE-2026-94440 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6608 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94440 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:fa4f224b75dfbe679ad1028baea42a9a08a4369681994d9e2bc38
                        │      │                   9b5b656a28f 
                        │      ├ Title           : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrar ... 
                        │      ├ Description     : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrarily long line into memory when the remaining
                        │      │                   limit at the start of a part is less than 400 bytes. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/847307 
                        │      │                  ├ [1]: https://go.dev/issue/81741 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6608 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.917Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:04.917Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-94448 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6599 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                        │      │                  │         8cb9c5e028b4b02b2c97 
                        │      │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                        │      │                            6db3b25f4d3649dc55e7 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94448 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:261cfb33cae93c29856095d7638c6de13246c6e31ad8ff23266c9
                        │      │                   854a97e2f65 
                        │      ├ Title           : When a JavaScript template literal contains consecutive
                        │      │                   expressions, t ... 
                        │      ├ Description     : When a JavaScript template literal contains consecutive
                        │      │                   expressions, the context tracking state was not properly
                        │      │                   reset upon entering a new expression. We now ensure that
                        │      │                   template-literal expression entries correctly reset context
                        │      │                   variables so all subsequent regular expression literals are
                        │      │                   accurately recognized and escaped. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ References       ╭ [0]: https://go.dev/cl/839866 
                        │      │                  ├ [1]: https://go.dev/issue/81821 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6599 
                        │      ├ PublishedDate   : 2026-10-08T23:17:05.3Z 
                        │      ╰ LastModifiedDate: 2026-10-08T23:17:05.3Z 
                        ╰ [12] ╭ VulnerabilityID : CVE-2026-97030 
                               ├ VendorIDs        ─ [0]: GO-2026-6600 
                               ├ PkgID           : stdlib@v1.26.7 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                               │                  ╰ UID : 69015e289f0fffad 
                               ├ InstalledVersion: v1.26.7 
                               ├ FixedVersion    : 1.26.9, 1.27.2 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:1ae8d0bbd77f1be71f7daa39113c0c4750e661e1eb83
                               │                  │         8cb9c5e028b4b02b2c97 
                               │                  ╰ DiffID: sha256:8c49e80fa5b3aa9042547b0397fbcf9d2ee0c4d8b491
                               │                            6db3b25f4d3649dc55e7 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97030 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:7d57f1f673deddbe170f0c1b17ba6d863f5cbf82f4b2af4287ac4
                               │                   93d407d9ba9 
                               ├ Title           : A trusted template author may have previously written a
                               │                   valid template ... 
                               ├ Description     : A trusted template author may have previously written a
                               │                   valid template wherein the use of the 'yield' keyword would
                               │                   not be correctly escaped. We now ensure that valid keyword
                               │                   uses are escaped and non-keyword uses are not escaped. 
                               ├ Severity        : UNKNOWN 
                               ├ References       ╭ [0]: https://go.dev/cl/840925 
                               │                  ├ [1]: https://go.dev/issue/81823 
                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                               │                  │      znI 
                               │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6600 
                               ├ PublishedDate   : 2026-10-08T23:17:05.91Z 
                               ╰ LastModifiedDate: 2026-10-08T23:17:05.91Z 
```
