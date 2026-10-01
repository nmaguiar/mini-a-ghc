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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-87766 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:55e4a34c376c9c5d644f241027becc80c998f0afae42fd0591734
│                       │      │                   7fea59c9676 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:79587f60fb92fd78a4634476ee506a81a88e74929f9cfdf59c76b
│                       │      │                   b7d256411a9 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dcd6f534975bf90acd8a77222a61a95e9f69b0d339c6af7b8c5f4
│                       │      │                   0dce323ed34 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:19cbfbcd730a88eacb6e1184238c7c70d77be90f243ccc98600ab
│                       │      │                   cfe932cdacf 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:88d654ab439cf589e5bd15658a18e50d1cfb8ce45f8e8028d6c2e
│                       │      │                   7d8190a3923 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5dbc9baa2ec8adf339e84aef4eac314521ac92345be860d46922a
│                       │      │                   02a10df5407 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dc9d380efeb4dbf7694b98c7c720a4c90402192cc972de09c460d
│                       │      │                   674c31ef021 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:60cc7be7ffcf545c22c9c7703eb9fd60363f4c2334b3f00ec1290
│                       │      │                   75f713c41c1 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1356b38fd6a88786bf69cb630ef9c7fd23769ee14aa2855e41f77
│                       │      │                   bb97b675552 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e81b287bebcd23018d661d9d9057c697239e8a4affd646f61db6b
│                       │      │                   e360711750a 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4354152ebc3ef5a956f83df0a7e1d8beac4988e591faebedc9402
│                       │      │                   9e7d3afbbce 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:75bc7163bf1e82fe8acf714401f756d4fb4f1c65cf4f70e9da375
│                       │      │                   64c053812ad 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4dfbd9dc984707342dbff84d52b79bfc5773379f8155a4f94d279
│                       │      │                   cfec54b1877 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d858dd078de306105ba67897e440db0dbbeedc1349066fa8974f6
│                       │      │                   b66c2fc3f79 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0ee2dc4f66569cc08987ac6512554feb6fe85b2031621cc00e06c
│                       │      │                   87876d0a0a2 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bb43b071c20f963d5a511bd94f4fd572441c9a7c4e4bdbd5d3c69
│                       │      │                   7959af85f71 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1b261bdecd4de80fd4ba194d8038e770b37897924991aea7a5b63
│                       │      │                   c1c78c3c86e 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:66ae78669c890cde98938f3a1aba0c119040131fbceeb4d9ba2e5
│                       │      │                   0fb58e9560a 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4640733467d2d6890fb464d83f6c1f15ac4bcd44adc69b1f976aa
│                       │      │                   d7750efbd01 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-86145 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c62e13993bb72865efd7c38fda9e1961d84f39e77e3cef37f5f94
│                       │      │                   bf1e51dde28 
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
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89161 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bc110ff26d4c4af5fdfd3e4449526ef3fd895a51da8e994f05380
│                       │      │                   dfef64647bc 
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
│                       ├ [21] ╭ VulnerabilityID : CVE-2026-84782 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84782 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6b8fb67aba441879076735d0e02118abb75555834ac45cf38bcf6
│                       │      │                   355a23ef503 
│                       │      ├ Title           : openssl: compat-openssl: openssl: Information disclosure via
│                       │      │                    DTLS handshake retransmission 
│                       │      ├ Description     : Issue summary: The DTLS retransmission logic does not
│                       │      │                   correctly handle
│                       │      │                   a handshake message write that is suspended part-way
│                       │      │                   through.
│                       │      │                   The retransmitted message can be read past the message
│                       │      │                   buffer and
│                       │      │                   the retransmission overwrites the internal state the
│                       │      │                   suspended write
│                       │      │                   needs to resume correctly.
│                       │      │                   
│                       │      │                   Impact summary: The retransmitted message can disclose a
│                       │      │                   heap memory
│                       │      │                   to the peer as plaintext handshake data or cause a crash and
│                       │      │                    a Denial
│                       │      │                   of Service when the read reaches an unmapped memory region.
│                       │      │                   CWE: CWE-125: Out-of-bounds Read
│                       │      │                   Description: DTLS handshake messages can be written out in
│                       │      │                   multiple
│                       │      │                   fragments, and a write can suspend mid-message (returning
│                       │      │                   WANT_WRITE)
│                       │      │                   if the underlying transport temporarily cannot accept more
│                       │      │                   data. While
│                       │      │                   such a write is suspended, the DTLS retransmission timer
│                       │      │                   may
│                       │      │                   independently fire and ask the retransmission logic to
│                       │      │                   resend an
│                       │      │                   earlier, already-acknowledged-as-sent message from its
│                       │      │                   retransmit
│                       │      │                   queue.
│                       │      │                   The retransmission logic reused the same internal buffer and
│                       │      │                    position
│                       │      │                   tracking as the message that was still being written,
│                       │      │                   without
│                       │      │                   resetting the position back to the start of the message
│                       │      │                   being
│                       │      │                   retransmitted. As a result the retransmission was read
│                       │      │                   starting from
│                       │      │                   wherever the suspended write had left off, producing a
│                       │      │                   mislabelled
│                       │      │                   message whose body was leftover bytes from the other, larger
│                       │      │                    message
│                       │      │                   still in flight - content that was never meant to be sent at
│                       │      │                    that
│                       │      │                   point, and which could run past the end of the allocated
│                       │      │                   buffer.
│                       │      │                   Separately, even when the retransmission is positioned
│                       │      │                   correctly,
│                       │      │                   allowing it to run to completion while another write is
│                       │      │                   suspended
│                       │      │                   overwrites the same shared bookkeeping that the suspended
│                       │      │                   write
│                       │      │                   depends on to resume. When the application later resumes
│                       │      │                   the
│                       │      │                   suspended write (via a subsequent SSL_read(), SSL_write(),
│                       │      │                   SSL_accept(), or SSL_connect() call), it finds that
│                       │      │                   bookkeeping in a
│                       │      │                   state inconsistent with the message and aborts the process
│                       │      │                   in
│                       │      │                   a debugging build.
│                       │      │                   The fix resets the retransmission's read position to the
│                       │      │                   start of the
│                       │      │                   message before resending, and skips retransmission entirely
│                       │      │                   whenever a
│                       │      │                   handshake write is still suspended, deferring to the next
│                       │      │                   call that
│                       │      │                   resumes it instead.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 3 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-84782 
│                       │      │                  ├ [1] : https://github.com/openssl/openssl/commit/906cf0ef1c8
│                       │      │                  │       5ca40ce69163e9086d6d3fe292943 
│                       │      │                  ├ [2] : https://github.com/openssl/openssl/commit/9f6b34422af
│                       │      │                  │       7eb5dac61322e33dac1ae989fa628 
│                       │      │                  ├ [3] : https://github.com/openssl/openssl/commit/a383dafdd75
│                       │      │                  │       4eb5b22bf45e37e1bff9d07277a58 
│                       │      │                  ├ [4] : https://github.com/openssl/openssl/commit/d951e02ede8
│                       │      │                  │       f6a6ff8150546db44b34f0518192c 
│                       │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2026-84782 
│                       │      │                  ├ [6] : https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7] : https://openssl-library.org/news/vulnerabilities/#CVE
│                       │      │                  │       -2026-84782 
│                       │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-84782 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:12.5Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2026-35189 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35189 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e715f1f2931dfa9deceea087010c96d407c862f7691ffebf106f1
│                       │      │                   3b46711201a 
│                       │      ├ Title           : openssl: openssl: Denial of Service via excessive memory
│                       │      │                   allocation in CRL distribution point processing 
│                       │      ├ Description     : Issue summary: A certificate with many
│                       │      │                   nameRelativeToCRLIssuer CRL
│                       │      │                   distribution points causes disproportionate heap growth when
│                       │      │                    OpenSSL caches
│                       │      │                   X.509 extensions.
│                       │      │                   
│                       │      │                   Impact summary: Receiving a crafted certificate from a
│                       │      │                   malicious peer can lead
│                       │      │                   to significant memory pressure and possible Denial of
│                       │      │                   Service in clients or
│                       │      │                   in servers that solicit client certificates.
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: A certificate or a set of certificates that
│                       │      │                   fits under the limit for
│                       │      │                   size of certificates accepted from the peer (~100 KiB) can
│                       │      │                   result in allocation
│                       │      │                   of several hundred MiB of resident memory on the receiving
│                       │      │                   side
│                       │      │                   during a normal TLS handshake.  This may be enough to crash
│                       │      │                   the client or
│                       │      │                   server, if multiple concurrent connections lead to similarly
│                       │      │                    large memory
│                       │      │                   allocations.
│                       │      │                   The fix postpones processing of the CRL distribution points
│                       │      │                   extensions in
│                       │      │                   certificates to the time when the processed value is
│                       │      │                   required for CRL processing.
│                       │      │                   This avoids keeping large memory allocations for a long time
│                       │      │                    when such
│                       │      │                   certificates are received.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-35189 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/2b93c73b2c70
│                       │      │                  │      ddc4c61c5e4bfaaa6bd71379eb84 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/3842516cc15e
│                       │      │                  │      8b2cf55747011045e77547e71d89 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/8e0efc7549b7
│                       │      │                  │      ff8246d40e585e3fd604f728473f 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/c72ae182cac1
│                       │      │                  │      7a82e4246c6ecd4e9c4ec3586ec9 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35189 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-35189 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.33Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.43Z 
│                       ├ [23] ╭ VulnerabilityID : CVE-2026-35191 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35191 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e9c6073367f0d91f308c58ff5857ba35f0ffc8f4d8affce8fa637
│                       │      │                   55db77b9f8a 
│                       │      ├ Title           : openssl: openssl: Traffic amplification Denial of Service
│                       │      │                   via QUIC packet over-accounting 
│                       │      ├ Description     : Issue summary: The OpenSSL QUIC server, when configured to
│                       │      │                   not preform address
│                       │      │                   validation, can be forced to count incoming packets multiple
│                       │      │                    times in its
│                       │      │                   unvalidated credit computation, leading to a violation of
│                       │      │                   the RFC 9000
│                       │      │                   unvalidated connection amplification limit of 3 times the
│                       │      │                   amount of data
│                       │      │                   received.
│                       │      │                   
│                       │      │                   Impact summary: A remote attacker able to spoof packets to a
│                       │      │                    server using the
│                       │      │                   OpenSSL QUIC implementation might use the server for an
│                       │      │                   amplification of
│                       │      │                   a DDoS attack.
│                       │      │                   CWE: CWE-440: Expected Behavior Violation 
│                       │      │                   Description: OpenSSL's QUIC stack, when operating as a
│                       │      │                   server, enforces client
│                       │      │                   address validation (RFC 9000, Section 8), to confirm the
│                       │      │                   peer address is not
│                       │      │                   used for a traffic amplification attack.  If this feature is
│                       │      │                    disabled on the
│                       │      │                   server, the QUIC stack limits the amount of server data that
│                       │      │                    can be sent to 3
│                       │      │                   times the amount of data received from the peer address,
│                       │      │                   until such time as the
│                       │      │                   TLS handshake is completed.
│                       │      │                   The OpenSSL QUIC server, when operating in non-validation
│                       │      │                   mode, adds the
│                       │      │                   length of the whole datagram received to the unvalidated
│                       │      │                   credit limit when
│                       │      │                   processing each QUIC packet in the datagram. A remote peer
│                       │      │                   may,
│                       │      │                   after establishing a connection with an initial client hello
│                       │      │                    frame, send a
│                       │      │                   subsequent datagram containing multiple QUIC packets,
│                       │      │                   leading the server to
│                       │      │                   account the entire datagram length for each packet in the
│                       │      │                   datagram, resulting
│                       │      │                   in the server believing that the peer has sent more data
│                       │      │                   than it actually has,
│                       │      │                   thereby violating the 3x amplification limit mandated by the
│                       │      │                    RFC.
│                       │      │                   FIPS impact: no
│                       │      │                   As the QUIC stack lives outside the FIPS module boundary, no
│                       │      │                    FIPS modules
│                       │      │                   are affected by this CVE. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-440 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-35191 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/0fe4442d4f8e
│                       │      │                  │      a3af8a174046dae176e0d4717239 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/2de4c35fb13f
│                       │      │                  │      c58f43fd8dc1d261700472ce72e5 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/e44292e58b09
│                       │      │                  │      0014232ef75bd400393851b24d1a 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35191 
│                       │      │                  ├ [5]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-35191 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.49Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.617Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2026-42772 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42772 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b76fac7d81720bd5113c7130ce09873decbe754977ef2b55ccf21
│                       │      │                   fbc7f1458ac 
│                       │      ├ Title           : openssl: openssl: Denial of Service via inefficient QUIC
│                       │      │                   stream reassembly 
│                       │      ├ Description     : Issue summary: The QUIC stream reassembly algorithm
│                       │      │                   performance deteriorates
│                       │      │                   progressively as packets are arriving out of order. The
│                       │      │                   worst case has
│                       │      │                   a quadratic complexity proportional to the number of stream
│                       │      │                   frames kept in
│                       │      │                   the buffer for the received stream data.
│                       │      │                   
│                       │      │                   Impact summary: A remote QUIC peer that completes the
│                       │      │                   handshake can create
│                       │      │                   a connection-scoped CPU pressure and potentially a Denial of
│                       │      │                    Service using
│                       │      │                   compliant STREAM frames inside the advertised receive
│                       │      │                   window, with low
│                       │      │                   attacker bandwidth.
│                       │      │                   CWE: CWE-407: Inefficient Algorithmic Complexity
│                       │      │                   Description: OpenSSL manages received QUIC stream fragments
│                       │      │                   using a
│                       │      │                   doubly-linked list. While it optimizes for append operations
│                       │      │                    (at the end of
│                       │      │                   the list), it falls back to a head-to-tail linear search for
│                       │      │                    any fragment
│                       │      │                   that does not immediately follow the current `tail`.
│                       │      │                   By manipulating the sequence of offsets, an attacker can
│                       │      │                   force the server
│                       │      │                   to perform O(n^2) operations, consuming excessive CPU time
│                       │      │                   for the
│                       │      │                   QUIC process.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42772 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/32d0ed8afe1b
│                       │      │                  │      8c3e7ece725b44663da3d7087a09 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/ca8402e273af
│                       │      │                  │      4de5b3f04fa61a0f0c02ce3ae20e 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/eb2becc0a4ba
│                       │      │                  │      ea7f3050a247834d0e5c2ebe1773 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/f42ae513bbda
│                       │      │                  │      513b3c121d54834040ee4a0eae1a 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-42772 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-42772 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.64Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.803Z 
│                       ├ [25] ╭ VulnerabilityID : CVE-2026-54872 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54872 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bcfc3b6b70f61143ec93c4fef981271dd66e7415a6d00cc5a256f
│                       │      │                   f745e0131e9 
│                       │      ├ Title           : openssl: OpenSSL: Private key recovery via timing
│                       │      │                   side-channel in generic elliptic curve operations 
│                       │      ├ Description     : Issue summary: The generic elliptic-curve scalar
│                       │      │                   multiplication used for
│                       │      │                   ECDSA and SM2 signature operations with curves that do not
│                       │      │                   have a dedicated
│                       │      │                   implementation leaks information about the secret nonce
│                       │      │                   through timing.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure signing times
│                       │      │                   may learn
│                       │      │                   information about the per-signature secret nonce, which over
│                       │      │                    many signatures
│                       │      │                   can, via a lattice / Hidden Number Problem attack, lead to
│                       │      │                   recovery of the
│                       │      │                   private key.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: The generic elliptic-curve scalar
│                       │      │                   curves that do not have a dedicated constant-time
│                       │      │                   implementation pads the
│                       │      │                   secret scalar with non-constant-time BIGNUM operations, so
│                       │      │                   the time taken
│                       │      │                   depends on the value of the secret scalar derived from the
│                       │      │                   ECDSA and SM2 nonce.
│                       │      │                   The leak is very small; observing it requires a large number
│                       │      │                    of
│                       │      │                   measurements. The effect is largest for curves whose group
│                       │      │                   order lies
│                       │      │                   on a machine-word boundary, such as brainpoolP384r1.
│                       │      │                   Applications using ECDSA signing over the Brainpool and
│                       │      │                   other generic prime
│                       │      │                   curves, and SM2 signing on platforms that use the generic
│                       │      │                   implementation,
│                       │      │                   are vulnerable to this issue.
│                       │      │                   The NIST curves P-256, P-384 and P-521 use dedicated
│                       │      │                   constant-time
│                       │      │                   implementations and are not affected.
│                       │      │                   FIPS Impact: no
│                       │      │                   The FIPS modules are not affected: the approved NIST curves
│                       │      │                   used in the FIPS
│                       │      │                   provider have dedicated constant-time implementations and do
│                       │      │                    not use the
│                       │      │                   affected code path. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54872 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1a5bee8dc574
│                       │      │                  │      30a2be69cd1ffe7fec6a62f4f179 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/3f7e1363dcce
│                       │      │                  │      c6f7732bb9e9fa471bb6e4aa68cb 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/7d83bc776499
│                       │      │                  │      9dfd91b83b4f0815b45390422afd 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/8166827a78aa
│                       │      │                  │      d164a07aa86dea2b425403ced471 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54872 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-54872 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.623Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2026-54873 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54873 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b6a019cc119f3fd1084e29b0beb81e2d65bc5b02e3f29ac23eeb2
│                       │      │                   6f7ea9162a6 
│                       │      ├ Title           : openssl: openssl: Denial of Service via excessive QUIC
│                       │      │                   packet buffer retention 
│                       │      ├ Description     : Issue summary: QUIC process may keep memory for QUIC packet
│                       │      │                   buffer for much longer period than necessary.
│                       │      │                   
│                       │      │                   Impact summary: Remote peer can exploit this vulnerability
│                       │      │                   by sending maliciously crafted packets, making the local
│                       │      │                   QUIC stack to keep the memory for packet buffers allocated.
│                       │      │                   The time for which the memory remains allocated is entirely
│                       │      │                   under the control of the potentially malicious remote peer.
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: To save copy operation from the packet buffer
│                       │      │                   to the
│                       │      │                   stream reassemble buffer the QUIC stack leaves the stream
│                       │      │                   data
│                       │      │                   on the packet buffer waiting to be copied to a buffer
│                       │      │                   provided
│                       │      │                   by the local receiving application. The QUIC stack releases
│                       │      │                   a reference to the packet buffer only after the data are
│                       │      │                   copied
│                       │      │                   to the application buffer. This design is more efficient
│                       │      │                   for
│                       │      │                   legitimate data transfers but enables an attacker to
│                       │      │                   allocate a lot
│                       │      │                   more memory than actually required by the data kept in the
│                       │      │                   receiving
│                       │      │                   stream buffer.
│                       │      │                   To mitigate the vulnerability, the QUIC stack now
│                       │      │                   calculates
│                       │      │                   and monitors memory overhead for every stream. The memory
│                       │      │                   overhead
│                       │      │                   for a single stream frame is calculated as a difference
│                       │      │                   between the
│                       │      │                   size of the whole packet that carries the stream frame and
│                       │      │                   the size
│                       │      │                   of the stream frame itself. The memory overhead for a single
│                       │      │                    stream
│                       │      │                   frame is added to the total (cumulative) memory overhead
│                       │      │                   QUIC stack
│                       │      │                   keeps for each stream. Once the cumulative memory overhead
│                       │      │                   exceeds
│                       │      │                   64kB, the QUIC stack moves the stream frame data from the
│                       │      │                   packet
│                       │      │                   buffer to the stream buffer, starting with the next packet
│                       │      │                   received.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54873 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1f643b8bc735
│                       │      │                  │      487b500a1f68a7fb3a22d5e38e23 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/279e7ee1392a
│                       │      │                  │      f98785746788168749491c74bd53 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/3ea6213e050e
│                       │      │                  │      938ecbbf8c4eff32bec2736780eb 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/7127fb10888b
│                       │      │                  │      49711c63128a09e524c0d2d5d0b2 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54873 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-54873 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.763Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:13.18Z 
│                       ├ [27] ╭ VulnerabilityID : CVE-2026-54875 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54875 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2526339406935bb747bf8d2dc25b2dcb84abf884a46021b868f2c
│                       │      │                   2447202ed59 
│                       │      ├ Title           : openssl: openssl: information disclosure via
│                       │      │                   non-constant-time SM2 scalar multiplication on ARM64 and
│                       │      │                   RISC-V 
│                       │      ├ Description     : Issue summary: A non-constant-time optimized implementation
│                       │      │                   of scalar
│                       │      │                   point multiplication is used for SM2 private key operations
│                       │      │                   on ARM64 and
│                       │      │                   RISC-V platforms.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure the time taken
│                       │      │                   by, or to observe
│                       │      │                   the cache-line access pattern of SM2 signing or decryption
│                       │      │                   on an affected
│                       │      │                   platform can learn information about the secret scalar.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: On ARM64 and RISC-V processors, the SM2 curve
│                       │      │                   uses an optimized
│                       │      │                   scalar multiplication implementation whose conditional
│                       │      │                   branches and table
│                       │      │                   look ups are chosen according to the bits of the secret
│                       │      │                   scalar. The execution
│                       │      │                   time and the cache-access pattern therefore depend on the
│                       │      │                   long-term private
│                       │      │                   key (during SM2 decryption) or the per-signature nonce
│                       │      │                   (during SM2 signature
│                       │      │                   generation), forming a timing and cache side-channel.
│                       │      │                   FIPS Impact: no
│                       │      │                   SM2 is not a FIPS algorithm and the optimized SM2
│                       │      │                   implementation is not part
│                       │      │                   of the FIPS module.
│                       │      │                   OpenSSL 4.0, 3.6, 3.5 and 3.4 are vulnerable to this issue
│                       │      │                   on AArch64 and
│                       │      │                   RISC-V.
│                       │      │                   OpenSSL 3.0, 1.1.1 and 1.0.2 are not affected by this
│                       │      │                   issue.
│                       │      │                   OpenSSL 4.0 users should upgrade to OpenSSL 4.0.3.
│                       │      │                   OpenSSL 3.6 users should upgrade to OpenSSL 3.6.5.
│                       │      │                   OpenSSL 3.5 users should upgrade to OpenSSL 3.5.9.
│                       │      │                   OpenSSL 3.4 users should upgrade to OpenSSL 3.4.8.
│                       │      │                   This issue was reported on 2 May 2026 by Abhinav Agarwal.
│                       │      │                   It was independently reported on 6 June 2026 by Feng Xue.
│                       │      │                   The fix was developed by Igor Ustinov.
│                       │      │                   -- cut (non-publishing metadata for internal use) --
│                       │      │                   Reported by: Abhinav Agarwal, Feng Xue
│                       │      │                   Fixed by: Igor Ustinov 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54875 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/3f01bbc28f7e
│                       │      │                  │      08211fcdc797fd43816504f94257 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/469f3e42629f
│                       │      │                  │      4a0b5631796e20c66c92c138a3e8 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9794ed473764
│                       │      │                  │      839275cb701b4850f3c24d929c28 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/dddad955d5ff
│                       │      │                  │      3e9507619cf4e0f13e9988e2197c 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54875 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54875 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.92Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [28] ╭ VulnerabilityID : CVE-2026-72897 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-72897 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:514e0d3a30c37aa863de22b5437b87591b056d45a2962cf051dc6
│                       │      │                   8b0441a266c 
│                       │      ├ Title           : openssl: openssl: Denial of Service via out-of-bounds write
│                       │      │                   during TLS context switch 
│                       │      ├ Description     : Issue summary: A TLS server that calls SSL_set_SSL_CTX() to
│                       │      │                   switch a
│                       │      │                   connection to a different SSL_CTX part way through a
│                       │      │                   handshake may access
│                       │      │                   memory beyond the end of an internal array if the
│                       │      │                   replacement context knows
│                       │      │                   about more provider signature algorithms than the context
│                       │      │                   the connection was
│                       │      │                   created from. Applications which never call
│                       │      │                   SSL_set_SSL_CTX() are not
│                       │      │                   affected.
│                       │      │                   
│                       │      │                   Impact summary: A remote peer may be able to cause a small
│                       │      │                   out-of-bounds
│                       │      │                   read, and in some circumstances a fixed-value out-of-bounds
│                       │      │                   write, on the
│                       │      │                   server heap. This may lead to a Denial of Service.
│                       │      │                   CWE: CWE-787: Out-of-bounds Write
│                       │      │                   Description: A TLS connection records how many certificate
│                       │      │                   slots it has
│                       │      │                   when it is created, taken from the SSL_CTX that created it:
│                       │      │                   the built-in
│                       │      │                   certificate types plus one slot for each provider TLS-SIGALG
│                       │      │                    entry that
│                       │      │                   context was aware of. That count sizes an internal array of
│                       │      │                   per-slot
│                       │      │                   certificate validity flags.
│                       │      │                   An application may replace a connection's SSL_CTX part way
│                       │      │                   through the
│                       │      │                   handshake by calling SSL_set_SSL_CTX(), most commonly from a
│                       │      │                    servername
│                       │      │                   callback in order to serve a different virtual host. Doing
│                       │      │                   so did not
│                       │      │                   refresh the recorded count. A provider signature algorithm's
│                       │      │                    slot index is
│                       │      │                   its position in the list of whichever context resolves it,
│                       │      │                   so if the
│                       │      │                   replacement context is aware of more of them than the
│                       │      │                   original, an
│                       │      │                   algorithm offered by the peer can resolve to an index beyond
│                       │      │                    the end of the
│                       │      │                   array. Processing the peer's signature algorithms then reads
│                       │      │                    one four byte
│                       │      │                   word past the end for each such algorithm and, where the
│                       │      │                   word read is zero,
│                       │      │                   writes a fixed value over it. A peer offering many of them
│                       │      │                   can corrupt heap
│                       │      │                   metadata and abort the process.
│                       │      │                   Only provider signature algorithms which occupy one of the
│                       │      │                   excess slots,
│                       │      │                   and which the server also has configured, have this effect.
│                       │      │                   Codepoints the
│                       │      │                   replacement context does not recognise are discarded without
│                       │      │                    being resolved
│                       │      │                   to a slot, and provider signature algorithms are usable only
│                       │      │                    from TLS 1.3.
│                       │      │                   The two contexts must therefore be aware of different
│                       │      │                   numbers of provider
│                       │      │                   signature algorithms, which requires separate library
│                       │      │                   contexts, a provider
│                       │      │                   loaded between the two being created, or providers which
│                       │      │                   differ in what
│                       │      │                   they advertise - in 4.0, for example, the default provider
│                       │      │                   advertises SM2
│                       │      │                   where the FIPS provider does not. A deployment meeting the
│                       │      │                   condition is
│                       │      │                   also unable to negotiate the affected algorithms with
│                       │      │                   legitimate clients,
│                       │      │                   since the same stale count hides the corresponding
│                       │      │                   certificates, so the
│                       │      │                   misconfiguration is likely to be noticed. For that reason,
│                       │      │                   and because the
│                       │      │                   configuration is not the default, this issue has been
│                       │      │                   assessed as Low
│                       │      │                   severity.
│                       │      │                   FIPS impact: no
│                       │      │                   No FIPS modules are affected by this issue as the affected
│                       │      │                   code is outside
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-72897 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/00646e5085a0
│                       │      │                  │      d12d29e0d2f9b9bc5f7111a50922 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/4135f553c9d3
│                       │      │                  │      ba4a09fe752f5d30af2a6a092b2e 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9c54d209486f
│                       │      │                  │      6b1ad79fe2179c40f13200fa4f61 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/e87ed26b298a
│                       │      │                  │      74d8ba61a53e9c7bcd1acac6b814 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-72897 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-72897 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:09.903Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [29] ╭ VulnerabilityID : CVE-2026-75804 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75804 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:fd224bf0e0e562434f39d923358938497c781b053d705083a98e0
│                       │      │                   8a8bdb9dbbb 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via unenforced QUIC
│                       │      │                   connection flow control 
│                       │      ├ Description     : Issue summary: OpenSSL QUIC stack does not enforce
│                       │      │                   connection
│                       │      │                   level flow control for streams. Remote peers may send more
│                       │      │                   bytes
│                       │      │                   as long as they fit within the stream flow control limits.
│                       │      │                   
│                       │      │                   Impact summary: A malicious remote peer may exploit the lack
│                       │      │                    of connection
│                       │      │                   flow control for streams to make the QUIC stack receive
│                       │      │                   ~100MB of memory
│                       │      │                   instead of 768 KiB (default flow control window size).
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: The local QUIC stack advertises two flow
│                       │      │                   control limits
│                       │      │                   to its remote peer: stream flow control limit and connection
│                       │      │                    flow
│                       │      │                   control limit. The remote peer must follow both limits when
│                       │      │                   transmitting
│                       │      │                   stream data.
│                       │      │                   Whenever the local QUIC stack receives a stream frame, it
│                       │      │                   validates
│                       │      │                   that the size of the received stream frame stays within flow
│                       │      │                    control limits.
│                       │      │                   If either limit is exceeded (stream level or connection
│                       │      │                   level), then
│                       │      │                   the QUIC stack must close the connection with a flow control
│                       │      │                    error.
│                       │      │                   The vulnerable OpenSSL QUIC stack enforces the stream-level
│                       │      │                   but not
│                       │      │                   the connection-level limit. To exploit the issue, three
│                       │      │                   conditions must be met:
│                       │      │                     - the remote peer opens several streams
│                       │      │                     - each stream must stay within the stream-level flow
│                       │      │                   control limit
│                       │      │                     - there must be no zero-offset byte sent on any of the
│                       │      │                   streams
│                       │      │                       (to prevent the vulnerable QUIC stack from consuming
│                       │      │                   data).
│                       │      │                   By meeting the conditions above, the remote peer may make
│                       │      │                   the local stack
│                       │      │                   allocate 2 x MAX_STREAMS x (stream flow control limit)
│                       │      │                   of memory. MAX_STREAMS defaults to 100, and the limit
│                       │      │                   applies to both
│                       │      │                   bidirectional and unidirectional streams, making it 200 in
│                       │      │                   total. The default
│                       │      │                   flow control window for a stream is 512kB. The remote peer
│                       │      │                   may
│                       │      │                   force the vulnerable QUIC stack to allocate 100MB of heap
│                       │      │                   per connection.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75804 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/2e8f54666b3f
│                       │      │                  │      b7b05ff5f58aa6cac9285163654e 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/4533ee8a5686
│                       │      │                  │      c953ed3b644738ac4bdf20806538 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/64d3102fb5b5
│                       │      │                  │      4311e92517f26ba00169d719e74a 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/f9eaecf5bdd6
│                       │      │                  │      692da052bc65b0332af2a938ac03 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75804 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75804 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:10.887Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [30] ╭ VulnerabilityID : CVE-2026-75805 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75805 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3be8cda1d262594e6bdc55b7a808bc21380f8130c8e752cdc7402
│                       │      │                   39fc77516ce 
│                       │      ├ Title           : openssl: openssl: Denial of Service via crafted CMP
│                       │      │                   certificate revocation response 
│                       │      ├ Description     : Issue summary: A CMP client that requests certificate
│                       │      │                   revocation on the basis
│                       │      │                   of a PKCS#10 CSR may dereference a NULL pointer and
│                       │      │                   terminate abnormally when
│                       │      │                   processing a crafted revocation response. 
│                       │      │                   
│                       │      │                   Impact summary: The NULL pointer dereference happens on a
│                       │      │                   read which 
│                       │      │                   leads to a crash and a Denial of Service for the affected
│                       │      │                   client application.
│                       │      │                   CWE: CWE-476: NULL-pointer dereference
│                       │      │                   Description: A CMP client revoking a certificate has to tell
│                       │      │                    the server which
│                       │      │                   certificate to revoke, and may do so by supplying a PKCS#10
│                       │      │                   CSR instead of the
│                       │      │                   certificate itself or its issuer name and serial number.
│                       │      │                   This is
│                       │      │                   'openssl cmp -cmd rr -csr <file>' on the command line, or
│                       │      │                   OSSL_CMP_exec_RR_ses() with the certificate supplied via
│                       │      │                   OSSL_CMP_CTX_set1_p10CSR() through the API.
│                       │      │                   A CSR does not contain the issuer name and serial number of
│                       │      │                   the certificate,
│                       │      │                   so the client does not send them. A server may optionally
│                       │      │                   name the
│                       │      │                   certificate it revoked in its response, and the client then
│                       │      │                   compares that
│                       │      │                   name against what it sent. Having sent neither an issuer
│                       │      │                   name nor a serial
│                       │      │                   number, it has nothing to compare against, and a server
│                       │      │                   returning a specially
│                       │      │                   crafted name causes the client to read from a NULL pointer
│                       │      │                   and crash.
│                       │      │                   The revocation response is checked for valid message
│                       │      │                   protection before
│                       │      │                   the affected code is reached, so an attacker must be a
│                       │      │                   malicious or
│                       │      │                   compromised CMP server, or a man-in-the-middle in possession
│                       │      │                    of the
│                       │      │                   secret used for message protection. Clients that identify
│                       │      │                   the certificate
│                       │      │                   to be revoked by a certificate or by issuer and serial
│                       │      │                   number rather
│                       │      │                   than by a PKCS#10 CSR are not affected.
│                       │      │                   FIPS impact: no
│                       │      │                   No FIPS modules are affected by this issue, as the CMP
│                       │      │                   protocol
│                       │      │                   implementation is outside the OpenSSL FIPS module
│                       │      │                   boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-476 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75805 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/7588db7fef14
│                       │      │                  │      209c3caa3a101d11a02006b19166 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/7ca0ccb5172a
│                       │      │                  │      577e9b87267d77bfe21e5481a5e7 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9eb2a8a9b861
│                       │      │                  │      36cdb39d6d7d50644dd66941cdc3 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/abf02872a4b7
│                       │      │                  │      1767ecc72293424420f5b009190f 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75805 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75805 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.063Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2026-75806 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75806 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dbd3f95acae595c16d5e5f99e1428331faf7d1fe03746a6ea33ed
│                       │      │                   c369768e112 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via undersized DTLS record 
│                       │      ├ Description     : Issue summary: An established DTLS 1.2 association using an
│                       │      │                   AEAD cipher suite
│                       │      │                   can be terminated by a single unauthenticated datagram whose
│                       │      │                    encrypted
│                       │      │                   fragment is shorter than the mandatory explicit IV and
│                       │      │                   authentication tag
│                       │      │                   overhead.
│                       │      │                   
│                       │      │                   Impact summary: An attacker who can send a datagram that is
│                       │      │                   routed to an
│                       │      │                   existing DTLS 1.2 association can tear that association down
│                       │      │                    without knowing
│                       │      │                   any key material. This is a Denial of Service limited to the
│                       │      │                    targeted
│                       │      │                   association. There is no memory safety or confidentiality
│                       │      │                   impact.
│                       │      │                   CWE: CWE-1284: Improper Validation of Specified Quantity in
│                       │      │                   Input
│                       │      │                   Description: In TLS 1.2 and DTLS 1.2 every record protected
│                       │      │                   by an AEAD cipher
│                       │      │                   suite carries an explicit IV followed by the ciphertext and
│                       │      │                   an authentication
│                       │      │                   tag. When decrypting such a record the record layer passed
│                       │      │                   the record length to
│                       │      │                   the cipher implementation before checking that the record
│                       │      │                   was long enough to
│                       │      │                   contain the explicit IV and the tag. For a record shorter
│                       │      │                   than that overhead the
│                       │      │                   cipher implementation rejected the impossible length, and
│                       │      │                   the record layer
│                       │      │                   treated this as an internal failure and raised a fatal
│                       │      │                   internal_error alert
│                       │      │                   instead of treating the record as one that failed
│                       │      │                   authentication.
│                       │      │                   In TLS 1.2 the same record causes a fatal internal_error
│                       │      │                   alert instead of the
│                       │      │                   expected bad_record_mac alert. Since any undecryptable
│                       │      │                   record already
│                       │      │                   terminates a TLS connection, this is a protocol conformance
│                       │      │                   issue rather than
│                       │      │                   a security issue in TLS.
│                       │      │                   The fix validates the record length against the explicit IV
│                       │      │                   and tag length
│                       │      │                   before any AEAD processing, so that TLS reports
│                       │      │                   bad_record_mac and DTLS
│                       │      │                   silently discards the record.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1284 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75806 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/04728a289a82
│                       │      │                  │      3e68137f88da016cb9ede307217d 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/050b275cd671
│                       │      │                  │      a6eed1d6457642d41a5a77aab972 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/3a4589d015a9
│                       │      │                  │      049d47b66f186cf50a8711343a1d 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/5af82fefbaf2
│                       │      │                  │      b5fec2fc0e1d87f112844902f01d 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75806 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75806 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.217Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2026-77696 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-77696 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:58c8ac08a115ed31da4fd4f14cb6e44132ae987a290f24adcdda4
│                       │      │                   79d41929bc7 
│                       │      ├ Title           : openssl: OpenSSL: Private key recovery via SM2 timing
│                       │      │                   side-channel 
│                       │      ├ Description     : Issue summary: SM2 signature generation uses
│                       │      │                   non-constant-time arithmetic
│                       │      │                   on secret values, forming a timing side-channel.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure SM2 signing
│                       │      │                   times may learn
│                       │      │                   information about the per-signature secret nonce, which over
│                       │      │                    many signatures
│                       │      │                   can, via a lattice / Hidden Number Problem attack, lead to
│                       │      │                   recovery of the
│                       │      │                   private key.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: SM2 signature generation computes the signature
│                       │      │                    value using
│                       │      │                   variable-time BIGNUM operations on the secret nonce and the
│                       │      │                   private key, so
│                       │      │                   the time taken to produce an SM2 signature depends on these
│                       │      │                   secret values,
│                       │      │                   forming a timing side-channel.
│                       │      │                   Applications performing SM2 signature generation are
│                       │      │                   affected on all
│                       │      │                   platforms.
│                       │      │                   FIPS Impact: no
│                       │      │                   SM2 is not a FIPS algorithm. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-77696 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1c4aed808a7a
│                       │      │                  │      ea32d2d013049c2e0d9fef164fc9 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/20b20628d39b
│                       │      │                  │      2dcc4677194bd68c7c060fa598cb 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/419f5cb51972
│                       │      │                  │      1dceed393dbc524d79e487c72e64 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/6b90445a56b9
│                       │      │                  │      9a328ac1feba058abf976504f440 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-77696 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-77696 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.493Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2026-84784 
│                       │      ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : libssl3t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.5?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 74f80fcbcce3ad82 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84784 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4b0a258b6b1ae1d168f6dd5a69b0eff982c84b40d63e3652818c6
│                       │      │                   fe34ea3f748 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via unbounded QUIC
│                       │      │                   connection identifier backlog 
│                       │      ├ Description     : Issue summary: A malicious remote peer may flood the local
│                       │      │                   QUIC
│                       │      │                   stack with NEW_CONNECTION_ID frames by avoiding a limit
│                       │      │                   check on
│                       │      │                   how many connection IDs the remote QUIC stack can use.
│                       │      │                   
│                       │      │                   Impact summary: The local QUIC stack sends a RETIRE_CONN_ID
│                       │      │                   frame
│                       │      │                   for every NEW_CONNECTION_ID frame it receives. The
│                       │      │                   RETIRE_CONN_ID
│                       │      │                   frame is dispatched via the Control Frame Queue (CFQ). If
│                       │      │                   the remote
│                       │      │                   peer also withholds ACKs, then it can force the local stack
│                       │      │                   to allocate ~400MB (depending on ACK delay).
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: RFC 9000 sections 5.1.1 and 5.1.2 [1] describe
│                       │      │                   the mechanism
│                       │      │                   by which a remote peer can notify the local QUIC stack to
│                       │      │                   change the
│                       │      │                   destination connection ID (a.k.a. CID) the local stack uses
│                       │      │                   to
│                       │      │                   identify the connection at the remote peer. Each CID is
│                       │      │                   associated
│                       │      │                   with a sequence number. The sequence number is transmitted
│                       │      │                   in NEW_CONNECTION_ID and RETIRE_CONNECTION_ID frames to
│                       │      │                   identify the CID
│                       │      │                   which is being either associated with a connection or
│                       │      │                   retired.
│                       │      │                   The remote peer sends a NEW_CONNECTION_ID frame to let the
│                       │      │                   local stack know
│                       │      │                   a new CID is being associated with an existing connection.
│                       │      │                   The
│                       │      │                   NEW_CONNECTION_ID frame carries the new CID, its sequence
│                       │      │                   number, and the
│                       │      │                   retire-prior-to number. The retire-prior-to identifies
│                       │      │                   existing
│                       │      │                   CIDs that are to be retired. The local QUIC stack must send
│                       │      │                   a
│                       │      │                   RETIRE_CONNECTION_ID for every destination CID whose
│                       │      │                   sequence number
│                       │      │                   is less than retire-prior-to. The CID becomes retired after
│                       │      │                   the
│                       │      │                   local stack receives an ACK for its RETIRE_CONNECTION_ID
│                       │      │                   frame.
│                       │      │                   Although the OpenSSL QUIC stack supports at most one
│                       │      │                   destination CID
│                       │      │                   for every connection, it can be tricked into processing more
│                       │      │                    than
│                       │      │                   one RETIRE_CONNECTION_ID frame per connection. The OpenSSL
│                       │      │                   stack currently retires the destination CID as soon as it
│                       │      │                   receives
│                       │      │                   the NEW_CONNECTION_ID, while in fact the destination CID
│                       │      │                   must
│                       │      │                   be retired after an ACK for the RETIRE_CONNECTION_ID frame
│                       │      │                   is received.
│                       │      │                   Correcting the flawed logic also fixes the backlog growth.
│                       │      │                   [1]
│                       │      │                   https://datatracker.ietf.org/doc/html/rfc9000#name-issuing-c
│                       │      │                   onnection-ids
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-84784 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/4685c914b0d4
│                       │      │                  │      10b1034f40b547c95bc95e7a380a 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/9a30fe0fba19
│                       │      │                  │      5c14e5b87bf93c0d0fdb70373806 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/dba3c48d653c
│                       │      │                  │      64fcbc9070a17a0ee2b3e2f3af1f 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/e9e5155833fa
│                       │      │                  │      968bee50024bf9ca3a185ab599fe 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-84784 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-84784 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:12.81Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libsystemd0@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libsystemd0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.4?arch=amd6
│                       │      │                  │       4&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e41c7d584057e32 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4dc15e999f100c8e6c1b833a04e5b4dfe470bcbf929db562979a8
│                       │      │                   57438c693b1 
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
│                       ├ [35] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libudev1@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libudev1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.4?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : db6ded6155f534fe 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8372659c7dd2dba3b6631ef2fb2b276d32459bec2f424fb3f6cee
│                       │      │                   a48e0932de9 
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
│                       ├ [36] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : login.defs 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : eaf648d5e4e975f7 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c71ec1f1dfd59e4583bfe284628a9eec5d3630225b8d0bc99132a
│                       │      │                   2b6d887a340 
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
│                       ├ [37] ╭ VulnerabilityID : CVE-2026-84782 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84782 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6d212dc33614d864e52a9878402b99e819b8a57f52169a3f41f06
│                       │      │                   1940732ddf9 
│                       │      ├ Title           : openssl: compat-openssl: openssl: Information disclosure via
│                       │      │                    DTLS handshake retransmission 
│                       │      ├ Description     : Issue summary: The DTLS retransmission logic does not
│                       │      │                   correctly handle
│                       │      │                   a handshake message write that is suspended part-way
│                       │      │                   through.
│                       │      │                   The retransmitted message can be read past the message
│                       │      │                   buffer and
│                       │      │                   the retransmission overwrites the internal state the
│                       │      │                   suspended write
│                       │      │                   needs to resume correctly.
│                       │      │                   
│                       │      │                   Impact summary: The retransmitted message can disclose a
│                       │      │                   heap memory
│                       │      │                   to the peer as plaintext handshake data or cause a crash and
│                       │      │                    a Denial
│                       │      │                   of Service when the read reaches an unmapped memory region.
│                       │      │                   CWE: CWE-125: Out-of-bounds Read
│                       │      │                   Description: DTLS handshake messages can be written out in
│                       │      │                   multiple
│                       │      │                   fragments, and a write can suspend mid-message (returning
│                       │      │                   WANT_WRITE)
│                       │      │                   if the underlying transport temporarily cannot accept more
│                       │      │                   data. While
│                       │      │                   such a write is suspended, the DTLS retransmission timer
│                       │      │                   may
│                       │      │                   independently fire and ask the retransmission logic to
│                       │      │                   resend an
│                       │      │                   earlier, already-acknowledged-as-sent message from its
│                       │      │                   retransmit
│                       │      │                   queue.
│                       │      │                   The retransmission logic reused the same internal buffer and
│                       │      │                    position
│                       │      │                   tracking as the message that was still being written,
│                       │      │                   without
│                       │      │                   resetting the position back to the start of the message
│                       │      │                   being
│                       │      │                   retransmitted. As a result the retransmission was read
│                       │      │                   starting from
│                       │      │                   wherever the suspended write had left off, producing a
│                       │      │                   mislabelled
│                       │      │                   message whose body was leftover bytes from the other, larger
│                       │      │                    message
│                       │      │                   still in flight - content that was never meant to be sent at
│                       │      │                    that
│                       │      │                   point, and which could run past the end of the allocated
│                       │      │                   buffer.
│                       │      │                   Separately, even when the retransmission is positioned
│                       │      │                   correctly,
│                       │      │                   allowing it to run to completion while another write is
│                       │      │                   suspended
│                       │      │                   overwrites the same shared bookkeeping that the suspended
│                       │      │                   write
│                       │      │                   depends on to resume. When the application later resumes
│                       │      │                   the
│                       │      │                   suspended write (via a subsequent SSL_read(), SSL_write(),
│                       │      │                   SSL_accept(), or SSL_connect() call), it finds that
│                       │      │                   bookkeeping in a
│                       │      │                   state inconsistent with the message and aborts the process
│                       │      │                   in
│                       │      │                   a debugging build.
│                       │      │                   The fix resets the retransmission's read position to the
│                       │      │                   start of the
│                       │      │                   message before resending, and skips retransmission entirely
│                       │      │                   whenever a
│                       │      │                   handshake write is still suspended, deferring to the next
│                       │      │                   call that
│                       │      │                   resumes it instead.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 3 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-84782 
│                       │      │                  ├ [1] : https://github.com/openssl/openssl/commit/906cf0ef1c8
│                       │      │                  │       5ca40ce69163e9086d6d3fe292943 
│                       │      │                  ├ [2] : https://github.com/openssl/openssl/commit/9f6b34422af
│                       │      │                  │       7eb5dac61322e33dac1ae989fa628 
│                       │      │                  ├ [3] : https://github.com/openssl/openssl/commit/a383dafdd75
│                       │      │                  │       4eb5b22bf45e37e1bff9d07277a58 
│                       │      │                  ├ [4] : https://github.com/openssl/openssl/commit/d951e02ede8
│                       │      │                  │       f6a6ff8150546db44b34f0518192c 
│                       │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2026-84782 
│                       │      │                  ├ [6] : https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7] : https://openssl-library.org/news/vulnerabilities/#CVE
│                       │      │                  │       -2026-84782 
│                       │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-84782 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:12.5Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [38] ╭ VulnerabilityID : CVE-2026-35189 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35189 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5204b3a910944b16e8192ef91890e27cfb723034272ddecdd0372
│                       │      │                   91a8affc5a8 
│                       │      ├ Title           : openssl: openssl: Denial of Service via excessive memory
│                       │      │                   allocation in CRL distribution point processing 
│                       │      ├ Description     : Issue summary: A certificate with many
│                       │      │                   nameRelativeToCRLIssuer CRL
│                       │      │                   distribution points causes disproportionate heap growth when
│                       │      │                    OpenSSL caches
│                       │      │                   X.509 extensions.
│                       │      │                   
│                       │      │                   Impact summary: Receiving a crafted certificate from a
│                       │      │                   malicious peer can lead
│                       │      │                   to significant memory pressure and possible Denial of
│                       │      │                   Service in clients or
│                       │      │                   in servers that solicit client certificates.
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: A certificate or a set of certificates that
│                       │      │                   fits under the limit for
│                       │      │                   size of certificates accepted from the peer (~100 KiB) can
│                       │      │                   result in allocation
│                       │      │                   of several hundred MiB of resident memory on the receiving
│                       │      │                   side
│                       │      │                   during a normal TLS handshake.  This may be enough to crash
│                       │      │                   the client or
│                       │      │                   server, if multiple concurrent connections lead to similarly
│                       │      │                    large memory
│                       │      │                   allocations.
│                       │      │                   The fix postpones processing of the CRL distribution points
│                       │      │                   extensions in
│                       │      │                   certificates to the time when the processed value is
│                       │      │                   required for CRL processing.
│                       │      │                   This avoids keeping large memory allocations for a long time
│                       │      │                    when such
│                       │      │                   certificates are received.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-35189 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/2b93c73b2c70
│                       │      │                  │      ddc4c61c5e4bfaaa6bd71379eb84 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/3842516cc15e
│                       │      │                  │      8b2cf55747011045e77547e71d89 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/8e0efc7549b7
│                       │      │                  │      ff8246d40e585e3fd604f728473f 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/c72ae182cac1
│                       │      │                  │      7a82e4246c6ecd4e9c4ec3586ec9 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35189 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-35189 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.33Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.43Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2026-35191 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35191 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:adb562cc263d9cc78ec1d51b3ea6d1b4c5baccfc6367e3997cba9
│                       │      │                   032d3920dc4 
│                       │      ├ Title           : openssl: openssl: Traffic amplification Denial of Service
│                       │      │                   via QUIC packet over-accounting 
│                       │      ├ Description     : Issue summary: The OpenSSL QUIC server, when configured to
│                       │      │                   not preform address
│                       │      │                   validation, can be forced to count incoming packets multiple
│                       │      │                    times in its
│                       │      │                   unvalidated credit computation, leading to a violation of
│                       │      │                   the RFC 9000
│                       │      │                   unvalidated connection amplification limit of 3 times the
│                       │      │                   amount of data
│                       │      │                   received.
│                       │      │                   
│                       │      │                   Impact summary: A remote attacker able to spoof packets to a
│                       │      │                    server using the
│                       │      │                   OpenSSL QUIC implementation might use the server for an
│                       │      │                   amplification of
│                       │      │                   a DDoS attack.
│                       │      │                   CWE: CWE-440: Expected Behavior Violation 
│                       │      │                   Description: OpenSSL's QUIC stack, when operating as a
│                       │      │                   server, enforces client
│                       │      │                   address validation (RFC 9000, Section 8), to confirm the
│                       │      │                   peer address is not
│                       │      │                   used for a traffic amplification attack.  If this feature is
│                       │      │                    disabled on the
│                       │      │                   server, the QUIC stack limits the amount of server data that
│                       │      │                    can be sent to 3
│                       │      │                   times the amount of data received from the peer address,
│                       │      │                   until such time as the
│                       │      │                   TLS handshake is completed.
│                       │      │                   The OpenSSL QUIC server, when operating in non-validation
│                       │      │                   mode, adds the
│                       │      │                   length of the whole datagram received to the unvalidated
│                       │      │                   credit limit when
│                       │      │                   processing each QUIC packet in the datagram. A remote peer
│                       │      │                   may,
│                       │      │                   after establishing a connection with an initial client hello
│                       │      │                    frame, send a
│                       │      │                   subsequent datagram containing multiple QUIC packets,
│                       │      │                   leading the server to
│                       │      │                   account the entire datagram length for each packet in the
│                       │      │                   datagram, resulting
│                       │      │                   in the server believing that the peer has sent more data
│                       │      │                   than it actually has,
│                       │      │                   thereby violating the 3x amplification limit mandated by the
│                       │      │                    RFC.
│                       │      │                   FIPS impact: no
│                       │      │                   As the QUIC stack lives outside the FIPS module boundary, no
│                       │      │                    FIPS modules
│                       │      │                   are affected by this CVE. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-440 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-35191 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/0fe4442d4f8e
│                       │      │                  │      a3af8a174046dae176e0d4717239 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/2de4c35fb13f
│                       │      │                  │      c58f43fd8dc1d261700472ce72e5 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/e44292e58b09
│                       │      │                  │      0014232ef75bd400393851b24d1a 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35191 
│                       │      │                  ├ [5]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-35191 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.49Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.617Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2026-42772 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42772 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bc29bf3640da1c2de8bd852124f0df55e50fc77321d837856c70f
│                       │      │                   0f2ae513f99 
│                       │      ├ Title           : openssl: openssl: Denial of Service via inefficient QUIC
│                       │      │                   stream reassembly 
│                       │      ├ Description     : Issue summary: The QUIC stream reassembly algorithm
│                       │      │                   performance deteriorates
│                       │      │                   progressively as packets are arriving out of order. The
│                       │      │                   worst case has
│                       │      │                   a quadratic complexity proportional to the number of stream
│                       │      │                   frames kept in
│                       │      │                   the buffer for the received stream data.
│                       │      │                   
│                       │      │                   Impact summary: A remote QUIC peer that completes the
│                       │      │                   handshake can create
│                       │      │                   a connection-scoped CPU pressure and potentially a Denial of
│                       │      │                    Service using
│                       │      │                   compliant STREAM frames inside the advertised receive
│                       │      │                   window, with low
│                       │      │                   attacker bandwidth.
│                       │      │                   CWE: CWE-407: Inefficient Algorithmic Complexity
│                       │      │                   Description: OpenSSL manages received QUIC stream fragments
│                       │      │                   using a
│                       │      │                   doubly-linked list. While it optimizes for append operations
│                       │      │                    (at the end of
│                       │      │                   the list), it falls back to a head-to-tail linear search for
│                       │      │                    any fragment
│                       │      │                   that does not immediately follow the current `tail`.
│                       │      │                   By manipulating the sequence of offsets, an attacker can
│                       │      │                   force the server
│                       │      │                   to perform O(n^2) operations, consuming excessive CPU time
│                       │      │                   for the
│                       │      │                   QUIC process.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42772 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/32d0ed8afe1b
│                       │      │                  │      8c3e7ece725b44663da3d7087a09 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/ca8402e273af
│                       │      │                  │      4de5b3f04fa61a0f0c02ce3ae20e 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/eb2becc0a4ba
│                       │      │                  │      ea7f3050a247834d0e5c2ebe1773 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/f42ae513bbda
│                       │      │                  │      513b3c121d54834040ee4a0eae1a 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-42772 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-42772 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.64Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.803Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2026-54872 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54872 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:079441f92cb9146e325e3fe46fc149a0c0593205f60747e130570
│                       │      │                   5fb9beb8890 
│                       │      ├ Title           : openssl: OpenSSL: Private key recovery via timing
│                       │      │                   side-channel in generic elliptic curve operations 
│                       │      ├ Description     : Issue summary: The generic elliptic-curve scalar
│                       │      │                   multiplication used for
│                       │      │                   ECDSA and SM2 signature operations with curves that do not
│                       │      │                   have a dedicated
│                       │      │                   implementation leaks information about the secret nonce
│                       │      │                   through timing.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure signing times
│                       │      │                   may learn
│                       │      │                   information about the per-signature secret nonce, which over
│                       │      │                    many signatures
│                       │      │                   can, via a lattice / Hidden Number Problem attack, lead to
│                       │      │                   recovery of the
│                       │      │                   private key.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: The generic elliptic-curve scalar
│                       │      │                   curves that do not have a dedicated constant-time
│                       │      │                   implementation pads the
│                       │      │                   secret scalar with non-constant-time BIGNUM operations, so
│                       │      │                   the time taken
│                       │      │                   depends on the value of the secret scalar derived from the
│                       │      │                   ECDSA and SM2 nonce.
│                       │      │                   The leak is very small; observing it requires a large number
│                       │      │                    of
│                       │      │                   measurements. The effect is largest for curves whose group
│                       │      │                   order lies
│                       │      │                   on a machine-word boundary, such as brainpoolP384r1.
│                       │      │                   Applications using ECDSA signing over the Brainpool and
│                       │      │                   other generic prime
│                       │      │                   curves, and SM2 signing on platforms that use the generic
│                       │      │                   implementation,
│                       │      │                   are vulnerable to this issue.
│                       │      │                   The NIST curves P-256, P-384 and P-521 use dedicated
│                       │      │                   constant-time
│                       │      │                   implementations and are not affected.
│                       │      │                   FIPS Impact: no
│                       │      │                   The FIPS modules are not affected: the approved NIST curves
│                       │      │                   used in the FIPS
│                       │      │                   provider have dedicated constant-time implementations and do
│                       │      │                    not use the
│                       │      │                   affected code path. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54872 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1a5bee8dc574
│                       │      │                  │      30a2be69cd1ffe7fec6a62f4f179 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/3f7e1363dcce
│                       │      │                  │      c6f7732bb9e9fa471bb6e4aa68cb 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/7d83bc776499
│                       │      │                  │      9dfd91b83b4f0815b45390422afd 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/8166827a78aa
│                       │      │                  │      d164a07aa86dea2b425403ced471 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54872 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-54872 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.623Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2026-54873 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54873 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9bc675bad0bfec266b4b5ac8b2ab33519c11c0b4103f753b98c58
│                       │      │                   61a79385103 
│                       │      ├ Title           : openssl: openssl: Denial of Service via excessive QUIC
│                       │      │                   packet buffer retention 
│                       │      ├ Description     : Issue summary: QUIC process may keep memory for QUIC packet
│                       │      │                   buffer for much longer period than necessary.
│                       │      │                   
│                       │      │                   Impact summary: Remote peer can exploit this vulnerability
│                       │      │                   by sending maliciously crafted packets, making the local
│                       │      │                   QUIC stack to keep the memory for packet buffers allocated.
│                       │      │                   The time for which the memory remains allocated is entirely
│                       │      │                   under the control of the potentially malicious remote peer.
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: To save copy operation from the packet buffer
│                       │      │                   to the
│                       │      │                   stream reassemble buffer the QUIC stack leaves the stream
│                       │      │                   data
│                       │      │                   on the packet buffer waiting to be copied to a buffer
│                       │      │                   provided
│                       │      │                   by the local receiving application. The QUIC stack releases
│                       │      │                   a reference to the packet buffer only after the data are
│                       │      │                   copied
│                       │      │                   to the application buffer. This design is more efficient
│                       │      │                   for
│                       │      │                   legitimate data transfers but enables an attacker to
│                       │      │                   allocate a lot
│                       │      │                   more memory than actually required by the data kept in the
│                       │      │                   receiving
│                       │      │                   stream buffer.
│                       │      │                   To mitigate the vulnerability, the QUIC stack now
│                       │      │                   calculates
│                       │      │                   and monitors memory overhead for every stream. The memory
│                       │      │                   overhead
│                       │      │                   for a single stream frame is calculated as a difference
│                       │      │                   between the
│                       │      │                   size of the whole packet that carries the stream frame and
│                       │      │                   the size
│                       │      │                   of the stream frame itself. The memory overhead for a single
│                       │      │                    stream
│                       │      │                   frame is added to the total (cumulative) memory overhead
│                       │      │                   QUIC stack
│                       │      │                   keeps for each stream. Once the cumulative memory overhead
│                       │      │                   exceeds
│                       │      │                   64kB, the QUIC stack moves the stream frame data from the
│                       │      │                   packet
│                       │      │                   buffer to the stream buffer, starting with the next packet
│                       │      │                   received.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54873 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1f643b8bc735
│                       │      │                  │      487b500a1f68a7fb3a22d5e38e23 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/279e7ee1392a
│                       │      │                  │      f98785746788168749491c74bd53 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/3ea6213e050e
│                       │      │                  │      938ecbbf8c4eff32bec2736780eb 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/7127fb10888b
│                       │      │                  │      49711c63128a09e524c0d2d5d0b2 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54873 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-54873 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.763Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:13.18Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2026-54875 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54875 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7d7b477c59bcaff203240ae273df09897460827beddd01cdfcd99
│                       │      │                   7886f959889 
│                       │      ├ Title           : openssl: openssl: information disclosure via
│                       │      │                   non-constant-time SM2 scalar multiplication on ARM64 and
│                       │      │                   RISC-V 
│                       │      ├ Description     : Issue summary: A non-constant-time optimized implementation
│                       │      │                   of scalar
│                       │      │                   point multiplication is used for SM2 private key operations
│                       │      │                   on ARM64 and
│                       │      │                   RISC-V platforms.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure the time taken
│                       │      │                   by, or to observe
│                       │      │                   the cache-line access pattern of SM2 signing or decryption
│                       │      │                   on an affected
│                       │      │                   platform can learn information about the secret scalar.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: On ARM64 and RISC-V processors, the SM2 curve
│                       │      │                   uses an optimized
│                       │      │                   scalar multiplication implementation whose conditional
│                       │      │                   branches and table
│                       │      │                   look ups are chosen according to the bits of the secret
│                       │      │                   scalar. The execution
│                       │      │                   time and the cache-access pattern therefore depend on the
│                       │      │                   long-term private
│                       │      │                   key (during SM2 decryption) or the per-signature nonce
│                       │      │                   (during SM2 signature
│                       │      │                   generation), forming a timing and cache side-channel.
│                       │      │                   FIPS Impact: no
│                       │      │                   SM2 is not a FIPS algorithm and the optimized SM2
│                       │      │                   implementation is not part
│                       │      │                   of the FIPS module.
│                       │      │                   OpenSSL 4.0, 3.6, 3.5 and 3.4 are vulnerable to this issue
│                       │      │                   on AArch64 and
│                       │      │                   RISC-V.
│                       │      │                   OpenSSL 3.0, 1.1.1 and 1.0.2 are not affected by this
│                       │      │                   issue.
│                       │      │                   OpenSSL 4.0 users should upgrade to OpenSSL 4.0.3.
│                       │      │                   OpenSSL 3.6 users should upgrade to OpenSSL 3.6.5.
│                       │      │                   OpenSSL 3.5 users should upgrade to OpenSSL 3.5.9.
│                       │      │                   OpenSSL 3.4 users should upgrade to OpenSSL 3.4.8.
│                       │      │                   This issue was reported on 2 May 2026 by Abhinav Agarwal.
│                       │      │                   It was independently reported on 6 June 2026 by Feng Xue.
│                       │      │                   The fix was developed by Igor Ustinov.
│                       │      │                   -- cut (non-publishing metadata for internal use) --
│                       │      │                   Reported by: Abhinav Agarwal, Feng Xue
│                       │      │                   Fixed by: Igor Ustinov 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54875 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/3f01bbc28f7e
│                       │      │                  │      08211fcdc797fd43816504f94257 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/469f3e42629f
│                       │      │                  │      4a0b5631796e20c66c92c138a3e8 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9794ed473764
│                       │      │                  │      839275cb701b4850f3c24d929c28 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/dddad955d5ff
│                       │      │                  │      3e9507619cf4e0f13e9988e2197c 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54875 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54875 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.92Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [44] ╭ VulnerabilityID : CVE-2026-72897 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-72897 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6dc1d08243f7204c04367a27811520e6c32425b6360f4e8747e74
│                       │      │                   0ac448bcf9b 
│                       │      ├ Title           : openssl: openssl: Denial of Service via out-of-bounds write
│                       │      │                   during TLS context switch 
│                       │      ├ Description     : Issue summary: A TLS server that calls SSL_set_SSL_CTX() to
│                       │      │                   switch a
│                       │      │                   connection to a different SSL_CTX part way through a
│                       │      │                   handshake may access
│                       │      │                   memory beyond the end of an internal array if the
│                       │      │                   replacement context knows
│                       │      │                   about more provider signature algorithms than the context
│                       │      │                   the connection was
│                       │      │                   created from. Applications which never call
│                       │      │                   SSL_set_SSL_CTX() are not
│                       │      │                   affected.
│                       │      │                   
│                       │      │                   Impact summary: A remote peer may be able to cause a small
│                       │      │                   out-of-bounds
│                       │      │                   read, and in some circumstances a fixed-value out-of-bounds
│                       │      │                   write, on the
│                       │      │                   server heap. This may lead to a Denial of Service.
│                       │      │                   CWE: CWE-787: Out-of-bounds Write
│                       │      │                   Description: A TLS connection records how many certificate
│                       │      │                   slots it has
│                       │      │                   when it is created, taken from the SSL_CTX that created it:
│                       │      │                   the built-in
│                       │      │                   certificate types plus one slot for each provider TLS-SIGALG
│                       │      │                    entry that
│                       │      │                   context was aware of. That count sizes an internal array of
│                       │      │                   per-slot
│                       │      │                   certificate validity flags.
│                       │      │                   An application may replace a connection's SSL_CTX part way
│                       │      │                   through the
│                       │      │                   handshake by calling SSL_set_SSL_CTX(), most commonly from a
│                       │      │                    servername
│                       │      │                   callback in order to serve a different virtual host. Doing
│                       │      │                   so did not
│                       │      │                   refresh the recorded count. A provider signature algorithm's
│                       │      │                    slot index is
│                       │      │                   its position in the list of whichever context resolves it,
│                       │      │                   so if the
│                       │      │                   replacement context is aware of more of them than the
│                       │      │                   original, an
│                       │      │                   algorithm offered by the peer can resolve to an index beyond
│                       │      │                    the end of the
│                       │      │                   array. Processing the peer's signature algorithms then reads
│                       │      │                    one four byte
│                       │      │                   word past the end for each such algorithm and, where the
│                       │      │                   word read is zero,
│                       │      │                   writes a fixed value over it. A peer offering many of them
│                       │      │                   can corrupt heap
│                       │      │                   metadata and abort the process.
│                       │      │                   Only provider signature algorithms which occupy one of the
│                       │      │                   excess slots,
│                       │      │                   and which the server also has configured, have this effect.
│                       │      │                   Codepoints the
│                       │      │                   replacement context does not recognise are discarded without
│                       │      │                    being resolved
│                       │      │                   to a slot, and provider signature algorithms are usable only
│                       │      │                    from TLS 1.3.
│                       │      │                   The two contexts must therefore be aware of different
│                       │      │                   numbers of provider
│                       │      │                   signature algorithms, which requires separate library
│                       │      │                   contexts, a provider
│                       │      │                   loaded between the two being created, or providers which
│                       │      │                   differ in what
│                       │      │                   they advertise - in 4.0, for example, the default provider
│                       │      │                   advertises SM2
│                       │      │                   where the FIPS provider does not. A deployment meeting the
│                       │      │                   condition is
│                       │      │                   also unable to negotiate the affected algorithms with
│                       │      │                   legitimate clients,
│                       │      │                   since the same stale count hides the corresponding
│                       │      │                   certificates, so the
│                       │      │                   misconfiguration is likely to be noticed. For that reason,
│                       │      │                   and because the
│                       │      │                   configuration is not the default, this issue has been
│                       │      │                   assessed as Low
│                       │      │                   severity.
│                       │      │                   FIPS impact: no
│                       │      │                   No FIPS modules are affected by this issue as the affected
│                       │      │                   code is outside
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-72897 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/00646e5085a0
│                       │      │                  │      d12d29e0d2f9b9bc5f7111a50922 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/4135f553c9d3
│                       │      │                  │      ba4a09fe752f5d30af2a6a092b2e 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9c54d209486f
│                       │      │                  │      6b1ad79fe2179c40f13200fa4f61 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/e87ed26b298a
│                       │      │                  │      74d8ba61a53e9c7bcd1acac6b814 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-72897 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-72897 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:09.903Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [45] ╭ VulnerabilityID : CVE-2026-75804 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75804 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a1f6c6e9088d5afb6374de9749d6796c246b7b0abbfa030f0fe2a
│                       │      │                   a0b4148e73d 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via unenforced QUIC
│                       │      │                   connection flow control 
│                       │      ├ Description     : Issue summary: OpenSSL QUIC stack does not enforce
│                       │      │                   connection
│                       │      │                   level flow control for streams. Remote peers may send more
│                       │      │                   bytes
│                       │      │                   as long as they fit within the stream flow control limits.
│                       │      │                   
│                       │      │                   Impact summary: A malicious remote peer may exploit the lack
│                       │      │                    of connection
│                       │      │                   flow control for streams to make the QUIC stack receive
│                       │      │                   ~100MB of memory
│                       │      │                   instead of 768 KiB (default flow control window size).
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: The local QUIC stack advertises two flow
│                       │      │                   control limits
│                       │      │                   to its remote peer: stream flow control limit and connection
│                       │      │                    flow
│                       │      │                   control limit. The remote peer must follow both limits when
│                       │      │                   transmitting
│                       │      │                   stream data.
│                       │      │                   Whenever the local QUIC stack receives a stream frame, it
│                       │      │                   validates
│                       │      │                   that the size of the received stream frame stays within flow
│                       │      │                    control limits.
│                       │      │                   If either limit is exceeded (stream level or connection
│                       │      │                   level), then
│                       │      │                   the QUIC stack must close the connection with a flow control
│                       │      │                    error.
│                       │      │                   The vulnerable OpenSSL QUIC stack enforces the stream-level
│                       │      │                   but not
│                       │      │                   the connection-level limit. To exploit the issue, three
│                       │      │                   conditions must be met:
│                       │      │                     - the remote peer opens several streams
│                       │      │                     - each stream must stay within the stream-level flow
│                       │      │                   control limit
│                       │      │                     - there must be no zero-offset byte sent on any of the
│                       │      │                   streams
│                       │      │                       (to prevent the vulnerable QUIC stack from consuming
│                       │      │                   data).
│                       │      │                   By meeting the conditions above, the remote peer may make
│                       │      │                   the local stack
│                       │      │                   allocate 2 x MAX_STREAMS x (stream flow control limit)
│                       │      │                   of memory. MAX_STREAMS defaults to 100, and the limit
│                       │      │                   applies to both
│                       │      │                   bidirectional and unidirectional streams, making it 200 in
│                       │      │                   total. The default
│                       │      │                   flow control window for a stream is 512kB. The remote peer
│                       │      │                   may
│                       │      │                   force the vulnerable QUIC stack to allocate 100MB of heap
│                       │      │                   per connection.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75804 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/2e8f54666b3f
│                       │      │                  │      b7b05ff5f58aa6cac9285163654e 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/4533ee8a5686
│                       │      │                  │      c953ed3b644738ac4bdf20806538 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/64d3102fb5b5
│                       │      │                  │      4311e92517f26ba00169d719e74a 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/f9eaecf5bdd6
│                       │      │                  │      692da052bc65b0332af2a938ac03 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75804 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75804 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:10.887Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [46] ╭ VulnerabilityID : CVE-2026-75805 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75805 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5d5f9e6c9f50c382c22a09adfda82d0a1ef6f897bf1ce68fda2b3
│                       │      │                   fd4b1189c8a 
│                       │      ├ Title           : openssl: openssl: Denial of Service via crafted CMP
│                       │      │                   certificate revocation response 
│                       │      ├ Description     : Issue summary: A CMP client that requests certificate
│                       │      │                   revocation on the basis
│                       │      │                   of a PKCS#10 CSR may dereference a NULL pointer and
│                       │      │                   terminate abnormally when
│                       │      │                   processing a crafted revocation response. 
│                       │      │                   
│                       │      │                   Impact summary: The NULL pointer dereference happens on a
│                       │      │                   read which 
│                       │      │                   leads to a crash and a Denial of Service for the affected
│                       │      │                   client application.
│                       │      │                   CWE: CWE-476: NULL-pointer dereference
│                       │      │                   Description: A CMP client revoking a certificate has to tell
│                       │      │                    the server which
│                       │      │                   certificate to revoke, and may do so by supplying a PKCS#10
│                       │      │                   CSR instead of the
│                       │      │                   certificate itself or its issuer name and serial number.
│                       │      │                   This is
│                       │      │                   'openssl cmp -cmd rr -csr <file>' on the command line, or
│                       │      │                   OSSL_CMP_exec_RR_ses() with the certificate supplied via
│                       │      │                   OSSL_CMP_CTX_set1_p10CSR() through the API.
│                       │      │                   A CSR does not contain the issuer name and serial number of
│                       │      │                   the certificate,
│                       │      │                   so the client does not send them. A server may optionally
│                       │      │                   name the
│                       │      │                   certificate it revoked in its response, and the client then
│                       │      │                   compares that
│                       │      │                   name against what it sent. Having sent neither an issuer
│                       │      │                   name nor a serial
│                       │      │                   number, it has nothing to compare against, and a server
│                       │      │                   returning a specially
│                       │      │                   crafted name causes the client to read from a NULL pointer
│                       │      │                   and crash.
│                       │      │                   The revocation response is checked for valid message
│                       │      │                   protection before
│                       │      │                   the affected code is reached, so an attacker must be a
│                       │      │                   malicious or
│                       │      │                   compromised CMP server, or a man-in-the-middle in possession
│                       │      │                    of the
│                       │      │                   secret used for message protection. Clients that identify
│                       │      │                   the certificate
│                       │      │                   to be revoked by a certificate or by issuer and serial
│                       │      │                   number rather
│                       │      │                   than by a PKCS#10 CSR are not affected.
│                       │      │                   FIPS impact: no
│                       │      │                   No FIPS modules are affected by this issue, as the CMP
│                       │      │                   protocol
│                       │      │                   implementation is outside the OpenSSL FIPS module
│                       │      │                   boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-476 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75805 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/7588db7fef14
│                       │      │                  │      209c3caa3a101d11a02006b19166 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/7ca0ccb5172a
│                       │      │                  │      577e9b87267d77bfe21e5481a5e7 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9eb2a8a9b861
│                       │      │                  │      36cdb39d6d7d50644dd66941cdc3 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/abf02872a4b7
│                       │      │                  │      1767ecc72293424420f5b009190f 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75805 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75805 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.063Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [47] ╭ VulnerabilityID : CVE-2026-75806 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75806 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:45dcb76098e4428a6a37e103e655eba206f2383b8ee987e1e709f
│                       │      │                   bf71db39bbe 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via undersized DTLS record 
│                       │      ├ Description     : Issue summary: An established DTLS 1.2 association using an
│                       │      │                   AEAD cipher suite
│                       │      │                   can be terminated by a single unauthenticated datagram whose
│                       │      │                    encrypted
│                       │      │                   fragment is shorter than the mandatory explicit IV and
│                       │      │                   authentication tag
│                       │      │                   overhead.
│                       │      │                   
│                       │      │                   Impact summary: An attacker who can send a datagram that is
│                       │      │                   routed to an
│                       │      │                   existing DTLS 1.2 association can tear that association down
│                       │      │                    without knowing
│                       │      │                   any key material. This is a Denial of Service limited to the
│                       │      │                    targeted
│                       │      │                   association. There is no memory safety or confidentiality
│                       │      │                   impact.
│                       │      │                   CWE: CWE-1284: Improper Validation of Specified Quantity in
│                       │      │                   Input
│                       │      │                   Description: In TLS 1.2 and DTLS 1.2 every record protected
│                       │      │                   by an AEAD cipher
│                       │      │                   suite carries an explicit IV followed by the ciphertext and
│                       │      │                   an authentication
│                       │      │                   tag. When decrypting such a record the record layer passed
│                       │      │                   the record length to
│                       │      │                   the cipher implementation before checking that the record
│                       │      │                   was long enough to
│                       │      │                   contain the explicit IV and the tag. For a record shorter
│                       │      │                   than that overhead the
│                       │      │                   cipher implementation rejected the impossible length, and
│                       │      │                   the record layer
│                       │      │                   treated this as an internal failure and raised a fatal
│                       │      │                   internal_error alert
│                       │      │                   instead of treating the record as one that failed
│                       │      │                   authentication.
│                       │      │                   In TLS 1.2 the same record causes a fatal internal_error
│                       │      │                   alert instead of the
│                       │      │                   expected bad_record_mac alert. Since any undecryptable
│                       │      │                   record already
│                       │      │                   terminates a TLS connection, this is a protocol conformance
│                       │      │                   issue rather than
│                       │      │                   a security issue in TLS.
│                       │      │                   The fix validates the record length against the explicit IV
│                       │      │                   and tag length
│                       │      │                   before any AEAD processing, so that TLS reports
│                       │      │                   bad_record_mac and DTLS
│                       │      │                   silently discards the record.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1284 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75806 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/04728a289a82
│                       │      │                  │      3e68137f88da016cb9ede307217d 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/050b275cd671
│                       │      │                  │      a6eed1d6457642d41a5a77aab972 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/3a4589d015a9
│                       │      │                  │      049d47b66f186cf50a8711343a1d 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/5af82fefbaf2
│                       │      │                  │      b5fec2fc0e1d87f112844902f01d 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75806 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75806 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.217Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [48] ╭ VulnerabilityID : CVE-2026-77696 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-77696 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:44763d9528da46ce055a633e96e738a3720bec91b038295a7a593
│                       │      │                   2519a85cd8e 
│                       │      ├ Title           : openssl: OpenSSL: Private key recovery via SM2 timing
│                       │      │                   side-channel 
│                       │      ├ Description     : Issue summary: SM2 signature generation uses
│                       │      │                   non-constant-time arithmetic
│                       │      │                   on secret values, forming a timing side-channel.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure SM2 signing
│                       │      │                   times may learn
│                       │      │                   information about the per-signature secret nonce, which over
│                       │      │                    many signatures
│                       │      │                   can, via a lattice / Hidden Number Problem attack, lead to
│                       │      │                   recovery of the
│                       │      │                   private key.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: SM2 signature generation computes the signature
│                       │      │                    value using
│                       │      │                   variable-time BIGNUM operations on the secret nonce and the
│                       │      │                   private key, so
│                       │      │                   the time taken to produce an SM2 signature depends on these
│                       │      │                   secret values,
│                       │      │                   forming a timing side-channel.
│                       │      │                   Applications performing SM2 signature generation are
│                       │      │                   affected on all
│                       │      │                   platforms.
│                       │      │                   FIPS Impact: no
│                       │      │                   SM2 is not a FIPS algorithm. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-77696 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1c4aed808a7a
│                       │      │                  │      ea32d2d013049c2e0d9fef164fc9 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/20b20628d39b
│                       │      │                  │      2dcc4677194bd68c7c060fa598cb 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/419f5cb51972
│                       │      │                  │      1dceed393dbc524d79e487c72e64 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/6b90445a56b9
│                       │      │                  │      9a328ac1feba058abf976504f440 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-77696 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-77696 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.493Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [49] ╭ VulnerabilityID : CVE-2026-84784 
│                       │      ├ PkgID           : openssl@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.5?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c24167998129d 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84784 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e30fcced460c76a9a856dd56839ccd65a24f046407b90ff0a6c5b
│                       │      │                   5a3679db783 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via unbounded QUIC
│                       │      │                   connection identifier backlog 
│                       │      ├ Description     : Issue summary: A malicious remote peer may flood the local
│                       │      │                   QUIC
│                       │      │                   stack with NEW_CONNECTION_ID frames by avoiding a limit
│                       │      │                   check on
│                       │      │                   how many connection IDs the remote QUIC stack can use.
│                       │      │                   
│                       │      │                   Impact summary: The local QUIC stack sends a RETIRE_CONN_ID
│                       │      │                   frame
│                       │      │                   for every NEW_CONNECTION_ID frame it receives. The
│                       │      │                   RETIRE_CONN_ID
│                       │      │                   frame is dispatched via the Control Frame Queue (CFQ). If
│                       │      │                   the remote
│                       │      │                   peer also withholds ACKs, then it can force the local stack
│                       │      │                   to allocate ~400MB (depending on ACK delay).
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: RFC 9000 sections 5.1.1 and 5.1.2 [1] describe
│                       │      │                   the mechanism
│                       │      │                   by which a remote peer can notify the local QUIC stack to
│                       │      │                   change the
│                       │      │                   destination connection ID (a.k.a. CID) the local stack uses
│                       │      │                   to
│                       │      │                   identify the connection at the remote peer. Each CID is
│                       │      │                   associated
│                       │      │                   with a sequence number. The sequence number is transmitted
│                       │      │                   in NEW_CONNECTION_ID and RETIRE_CONNECTION_ID frames to
│                       │      │                   identify the CID
│                       │      │                   which is being either associated with a connection or
│                       │      │                   retired.
│                       │      │                   The remote peer sends a NEW_CONNECTION_ID frame to let the
│                       │      │                   local stack know
│                       │      │                   a new CID is being associated with an existing connection.
│                       │      │                   The
│                       │      │                   NEW_CONNECTION_ID frame carries the new CID, its sequence
│                       │      │                   number, and the
│                       │      │                   retire-prior-to number. The retire-prior-to identifies
│                       │      │                   existing
│                       │      │                   CIDs that are to be retired. The local QUIC stack must send
│                       │      │                   a
│                       │      │                   RETIRE_CONNECTION_ID for every destination CID whose
│                       │      │                   sequence number
│                       │      │                   is less than retire-prior-to. The CID becomes retired after
│                       │      │                   the
│                       │      │                   local stack receives an ACK for its RETIRE_CONNECTION_ID
│                       │      │                   frame.
│                       │      │                   Although the OpenSSL QUIC stack supports at most one
│                       │      │                   destination CID
│                       │      │                   for every connection, it can be tricked into processing more
│                       │      │                    than
│                       │      │                   one RETIRE_CONNECTION_ID frame per connection. The OpenSSL
│                       │      │                   stack currently retires the destination CID as soon as it
│                       │      │                   receives
│                       │      │                   the NEW_CONNECTION_ID, while in fact the destination CID
│                       │      │                   must
│                       │      │                   be retired after an ACK for the RETIRE_CONNECTION_ID frame
│                       │      │                   is received.
│                       │      │                   Correcting the flawed logic also fixes the backlog growth.
│                       │      │                   [1]
│                       │      │                   https://datatracker.ietf.org/doc/html/rfc9000#name-issuing-c
│                       │      │                   onnection-ids
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-84784 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/4685c914b0d4
│                       │      │                  │      10b1034f40b547c95bc95e7a380a 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/9a30fe0fba19
│                       │      │                  │      5c14e5b87bf93c0d0fdb70373806 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/dba3c48d653c
│                       │      │                  │      64fcbc9070a17a0ee2b3e2f3af1f 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/e9e5155833fa
│                       │      │                  │      968bee50024bf9ca3a185ab599fe 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-84784 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-84784 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:12.81Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [50] ╭ VulnerabilityID : CVE-2026-84782 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84782 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7bb32b1616e3ff59f647bac98b56e496b8eaa77a79fb61ce1550b
│                       │      │                   672be9fba56 
│                       │      ├ Title           : openssl: compat-openssl: openssl: Information disclosure via
│                       │      │                    DTLS handshake retransmission 
│                       │      ├ Description     : Issue summary: The DTLS retransmission logic does not
│                       │      │                   correctly handle
│                       │      │                   a handshake message write that is suspended part-way
│                       │      │                   through.
│                       │      │                   The retransmitted message can be read past the message
│                       │      │                   buffer and
│                       │      │                   the retransmission overwrites the internal state the
│                       │      │                   suspended write
│                       │      │                   needs to resume correctly.
│                       │      │                   
│                       │      │                   Impact summary: The retransmitted message can disclose a
│                       │      │                   heap memory
│                       │      │                   to the peer as plaintext handshake data or cause a crash and
│                       │      │                    a Denial
│                       │      │                   of Service when the read reaches an unmapped memory region.
│                       │      │                   CWE: CWE-125: Out-of-bounds Read
│                       │      │                   Description: DTLS handshake messages can be written out in
│                       │      │                   multiple
│                       │      │                   fragments, and a write can suspend mid-message (returning
│                       │      │                   WANT_WRITE)
│                       │      │                   if the underlying transport temporarily cannot accept more
│                       │      │                   data. While
│                       │      │                   such a write is suspended, the DTLS retransmission timer
│                       │      │                   may
│                       │      │                   independently fire and ask the retransmission logic to
│                       │      │                   resend an
│                       │      │                   earlier, already-acknowledged-as-sent message from its
│                       │      │                   retransmit
│                       │      │                   queue.
│                       │      │                   The retransmission logic reused the same internal buffer and
│                       │      │                    position
│                       │      │                   tracking as the message that was still being written,
│                       │      │                   without
│                       │      │                   resetting the position back to the start of the message
│                       │      │                   being
│                       │      │                   retransmitted. As a result the retransmission was read
│                       │      │                   starting from
│                       │      │                   wherever the suspended write had left off, producing a
│                       │      │                   mislabelled
│                       │      │                   message whose body was leftover bytes from the other, larger
│                       │      │                    message
│                       │      │                   still in flight - content that was never meant to be sent at
│                       │      │                    that
│                       │      │                   point, and which could run past the end of the allocated
│                       │      │                   buffer.
│                       │      │                   Separately, even when the retransmission is positioned
│                       │      │                   correctly,
│                       │      │                   allowing it to run to completion while another write is
│                       │      │                   suspended
│                       │      │                   overwrites the same shared bookkeeping that the suspended
│                       │      │                   write
│                       │      │                   depends on to resume. When the application later resumes
│                       │      │                   the
│                       │      │                   suspended write (via a subsequent SSL_read(), SSL_write(),
│                       │      │                   SSL_accept(), or SSL_connect() call), it finds that
│                       │      │                   bookkeeping in a
│                       │      │                   state inconsistent with the message and aborts the process
│                       │      │                   in
│                       │      │                   a debugging build.
│                       │      │                   The fix resets the retransmission's read position to the
│                       │      │                   start of the
│                       │      │                   message before resending, and skips retransmission entirely
│                       │      │                   whenever a
│                       │      │                   handshake write is still suspended, deferring to the next
│                       │      │                   call that
│                       │      │                   resumes it instead.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : HIGH 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 3 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-84782 
│                       │      │                  ├ [1] : https://github.com/openssl/openssl/commit/906cf0ef1c8
│                       │      │                  │       5ca40ce69163e9086d6d3fe292943 
│                       │      │                  ├ [2] : https://github.com/openssl/openssl/commit/9f6b34422af
│                       │      │                  │       7eb5dac61322e33dac1ae989fa628 
│                       │      │                  ├ [3] : https://github.com/openssl/openssl/commit/a383dafdd75
│                       │      │                  │       4eb5b22bf45e37e1bff9d07277a58 
│                       │      │                  ├ [4] : https://github.com/openssl/openssl/commit/d951e02ede8
│                       │      │                  │       f6a6ff8150546db44b34f0518192c 
│                       │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2026-84782 
│                       │      │                  ├ [6] : https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7] : https://openssl-library.org/news/vulnerabilities/#CVE
│                       │      │                  │       -2026-84782 
│                       │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-84782 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:12.5Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [51] ╭ VulnerabilityID : CVE-2026-35189 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35189 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2b4e690f9795d2181cfa44958e8466a90ac3ba5e2add6c90b199f
│                       │      │                   042734912c4 
│                       │      ├ Title           : openssl: openssl: Denial of Service via excessive memory
│                       │      │                   allocation in CRL distribution point processing 
│                       │      ├ Description     : Issue summary: A certificate with many
│                       │      │                   nameRelativeToCRLIssuer CRL
│                       │      │                   distribution points causes disproportionate heap growth when
│                       │      │                    OpenSSL caches
│                       │      │                   X.509 extensions.
│                       │      │                   
│                       │      │                   Impact summary: Receiving a crafted certificate from a
│                       │      │                   malicious peer can lead
│                       │      │                   to significant memory pressure and possible Denial of
│                       │      │                   Service in clients or
│                       │      │                   in servers that solicit client certificates.
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: A certificate or a set of certificates that
│                       │      │                   fits under the limit for
│                       │      │                   size of certificates accepted from the peer (~100 KiB) can
│                       │      │                   result in allocation
│                       │      │                   of several hundred MiB of resident memory on the receiving
│                       │      │                   side
│                       │      │                   during a normal TLS handshake.  This may be enough to crash
│                       │      │                   the client or
│                       │      │                   server, if multiple concurrent connections lead to similarly
│                       │      │                    large memory
│                       │      │                   allocations.
│                       │      │                   The fix postpones processing of the CRL distribution points
│                       │      │                   extensions in
│                       │      │                   certificates to the time when the processed value is
│                       │      │                   required for CRL processing.
│                       │      │                   This avoids keeping large memory allocations for a long time
│                       │      │                    when such
│                       │      │                   certificates are received.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-35189 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/2b93c73b2c70
│                       │      │                  │      ddc4c61c5e4bfaaa6bd71379eb84 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/3842516cc15e
│                       │      │                  │      8b2cf55747011045e77547e71d89 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/8e0efc7549b7
│                       │      │                  │      ff8246d40e585e3fd604f728473f 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/c72ae182cac1
│                       │      │                  │      7a82e4246c6ecd4e9c4ec3586ec9 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35189 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-35189 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.33Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.43Z 
│                       ├ [52] ╭ VulnerabilityID : CVE-2026-35191 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35191 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:12d4efa0371f2ebebffee84a3aef680354d2f2fbb5cee775ad640
│                       │      │                   55dfd867795 
│                       │      ├ Title           : openssl: openssl: Traffic amplification Denial of Service
│                       │      │                   via QUIC packet over-accounting 
│                       │      ├ Description     : Issue summary: The OpenSSL QUIC server, when configured to
│                       │      │                   not preform address
│                       │      │                   validation, can be forced to count incoming packets multiple
│                       │      │                    times in its
│                       │      │                   unvalidated credit computation, leading to a violation of
│                       │      │                   the RFC 9000
│                       │      │                   unvalidated connection amplification limit of 3 times the
│                       │      │                   amount of data
│                       │      │                   received.
│                       │      │                   
│                       │      │                   Impact summary: A remote attacker able to spoof packets to a
│                       │      │                    server using the
│                       │      │                   OpenSSL QUIC implementation might use the server for an
│                       │      │                   amplification of
│                       │      │                   a DDoS attack.
│                       │      │                   CWE: CWE-440: Expected Behavior Violation 
│                       │      │                   Description: OpenSSL's QUIC stack, when operating as a
│                       │      │                   server, enforces client
│                       │      │                   address validation (RFC 9000, Section 8), to confirm the
│                       │      │                   peer address is not
│                       │      │                   used for a traffic amplification attack.  If this feature is
│                       │      │                    disabled on the
│                       │      │                   server, the QUIC stack limits the amount of server data that
│                       │      │                    can be sent to 3
│                       │      │                   times the amount of data received from the peer address,
│                       │      │                   until such time as the
│                       │      │                   TLS handshake is completed.
│                       │      │                   The OpenSSL QUIC server, when operating in non-validation
│                       │      │                   mode, adds the
│                       │      │                   length of the whole datagram received to the unvalidated
│                       │      │                   credit limit when
│                       │      │                   processing each QUIC packet in the datagram. A remote peer
│                       │      │                   may,
│                       │      │                   after establishing a connection with an initial client hello
│                       │      │                    frame, send a
│                       │      │                   subsequent datagram containing multiple QUIC packets,
│                       │      │                   leading the server to
│                       │      │                   account the entire datagram length for each packet in the
│                       │      │                   datagram, resulting
│                       │      │                   in the server believing that the peer has sent more data
│                       │      │                   than it actually has,
│                       │      │                   thereby violating the 3x amplification limit mandated by the
│                       │      │                    RFC.
│                       │      │                   FIPS impact: no
│                       │      │                   As the QUIC stack lives outside the FIPS module boundary, no
│                       │      │                    FIPS modules
│                       │      │                   are affected by this CVE. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-440 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-35191 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/0fe4442d4f8e
│                       │      │                  │      a3af8a174046dae176e0d4717239 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/2de4c35fb13f
│                       │      │                  │      c58f43fd8dc1d261700472ce72e5 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/e44292e58b09
│                       │      │                  │      0014232ef75bd400393851b24d1a 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35191 
│                       │      │                  ├ [5]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-35191 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.49Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.617Z 
│                       ├ [53] ╭ VulnerabilityID : CVE-2026-42772 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42772 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:11d8ffdd355dae092cb7c4002c299f856f55d8f4be4b2cad12740
│                       │      │                   b0b49f5124f 
│                       │      ├ Title           : openssl: openssl: Denial of Service via inefficient QUIC
│                       │      │                   stream reassembly 
│                       │      ├ Description     : Issue summary: The QUIC stream reassembly algorithm
│                       │      │                   performance deteriorates
│                       │      │                   progressively as packets are arriving out of order. The
│                       │      │                   worst case has
│                       │      │                   a quadratic complexity proportional to the number of stream
│                       │      │                   frames kept in
│                       │      │                   the buffer for the received stream data.
│                       │      │                   
│                       │      │                   Impact summary: A remote QUIC peer that completes the
│                       │      │                   handshake can create
│                       │      │                   a connection-scoped CPU pressure and potentially a Denial of
│                       │      │                    Service using
│                       │      │                   compliant STREAM frames inside the advertised receive
│                       │      │                   window, with low
│                       │      │                   attacker bandwidth.
│                       │      │                   CWE: CWE-407: Inefficient Algorithmic Complexity
│                       │      │                   Description: OpenSSL manages received QUIC stream fragments
│                       │      │                   using a
│                       │      │                   doubly-linked list. While it optimizes for append operations
│                       │      │                    (at the end of
│                       │      │                   the list), it falls back to a head-to-tail linear search for
│                       │      │                    any fragment
│                       │      │                   that does not immediately follow the current `tail`.
│                       │      │                   By manipulating the sequence of offsets, an attacker can
│                       │      │                   force the server
│                       │      │                   to perform O(n^2) operations, consuming excessive CPU time
│                       │      │                   for the
│                       │      │                   QUIC process.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42772 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/32d0ed8afe1b
│                       │      │                  │      8c3e7ece725b44663da3d7087a09 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/ca8402e273af
│                       │      │                  │      4de5b3f04fa61a0f0c02ce3ae20e 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/eb2becc0a4ba
│                       │      │                  │      ea7f3050a247834d0e5c2ebe1773 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/f42ae513bbda
│                       │      │                  │      513b3c121d54834040ee4a0eae1a 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-42772 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-42772 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:07.64Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:10.803Z 
│                       ├ [54] ╭ VulnerabilityID : CVE-2026-54872 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54872 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:92f76679c3548cba46da5d1e23668f65151b9bb4555f2c5c47da5
│                       │      │                   cb8f9112bae 
│                       │      ├ Title           : openssl: OpenSSL: Private key recovery via timing
│                       │      │                   side-channel in generic elliptic curve operations 
│                       │      ├ Description     : Issue summary: The generic elliptic-curve scalar
│                       │      │                   multiplication used for
│                       │      │                   ECDSA and SM2 signature operations with curves that do not
│                       │      │                   have a dedicated
│                       │      │                   implementation leaks information about the secret nonce
│                       │      │                   through timing.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure signing times
│                       │      │                   may learn
│                       │      │                   information about the per-signature secret nonce, which over
│                       │      │                    many signatures
│                       │      │                   can, via a lattice / Hidden Number Problem attack, lead to
│                       │      │                   recovery of the
│                       │      │                   private key.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: The generic elliptic-curve scalar
│                       │      │                   curves that do not have a dedicated constant-time
│                       │      │                   implementation pads the
│                       │      │                   secret scalar with non-constant-time BIGNUM operations, so
│                       │      │                   the time taken
│                       │      │                   depends on the value of the secret scalar derived from the
│                       │      │                   ECDSA and SM2 nonce.
│                       │      │                   The leak is very small; observing it requires a large number
│                       │      │                    of
│                       │      │                   measurements. The effect is largest for curves whose group
│                       │      │                   order lies
│                       │      │                   on a machine-word boundary, such as brainpoolP384r1.
│                       │      │                   Applications using ECDSA signing over the Brainpool and
│                       │      │                   other generic prime
│                       │      │                   curves, and SM2 signing on platforms that use the generic
│                       │      │                   implementation,
│                       │      │                   are vulnerable to this issue.
│                       │      │                   The NIST curves P-256, P-384 and P-521 use dedicated
│                       │      │                   constant-time
│                       │      │                   implementations and are not affected.
│                       │      │                   FIPS Impact: no
│                       │      │                   The FIPS modules are not affected: the approved NIST curves
│                       │      │                   used in the FIPS
│                       │      │                   provider have dedicated constant-time implementations and do
│                       │      │                    not use the
│                       │      │                   affected code path. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54872 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1a5bee8dc574
│                       │      │                  │      30a2be69cd1ffe7fec6a62f4f179 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/3f7e1363dcce
│                       │      │                  │      c6f7732bb9e9fa471bb6e4aa68cb 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/7d83bc776499
│                       │      │                  │      9dfd91b83b4f0815b45390422afd 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/8166827a78aa
│                       │      │                  │      d164a07aa86dea2b425403ced471 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54872 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-54872 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.623Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [55] ╭ VulnerabilityID : CVE-2026-54873 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54873 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7300157556e91ac93680883340a0e77786b754a32e14abe5d3d25
│                       │      │                   9ef24284af3 
│                       │      ├ Title           : openssl: openssl: Denial of Service via excessive QUIC
│                       │      │                   packet buffer retention 
│                       │      ├ Description     : Issue summary: QUIC process may keep memory for QUIC packet
│                       │      │                   buffer for much longer period than necessary.
│                       │      │                   
│                       │      │                   Impact summary: Remote peer can exploit this vulnerability
│                       │      │                   by sending maliciously crafted packets, making the local
│                       │      │                   QUIC stack to keep the memory for packet buffers allocated.
│                       │      │                   The time for which the memory remains allocated is entirely
│                       │      │                   under the control of the potentially malicious remote peer.
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: To save copy operation from the packet buffer
│                       │      │                   to the
│                       │      │                   stream reassemble buffer the QUIC stack leaves the stream
│                       │      │                   data
│                       │      │                   on the packet buffer waiting to be copied to a buffer
│                       │      │                   provided
│                       │      │                   by the local receiving application. The QUIC stack releases
│                       │      │                   a reference to the packet buffer only after the data are
│                       │      │                   copied
│                       │      │                   to the application buffer. This design is more efficient
│                       │      │                   for
│                       │      │                   legitimate data transfers but enables an attacker to
│                       │      │                   allocate a lot
│                       │      │                   more memory than actually required by the data kept in the
│                       │      │                   receiving
│                       │      │                   stream buffer.
│                       │      │                   To mitigate the vulnerability, the QUIC stack now
│                       │      │                   calculates
│                       │      │                   and monitors memory overhead for every stream. The memory
│                       │      │                   overhead
│                       │      │                   for a single stream frame is calculated as a difference
│                       │      │                   between the
│                       │      │                   size of the whole packet that carries the stream frame and
│                       │      │                   the size
│                       │      │                   of the stream frame itself. The memory overhead for a single
│                       │      │                    stream
│                       │      │                   frame is added to the total (cumulative) memory overhead
│                       │      │                   QUIC stack
│                       │      │                   keeps for each stream. Once the cumulative memory overhead
│                       │      │                   exceeds
│                       │      │                   64kB, the QUIC stack moves the stream frame data from the
│                       │      │                   packet
│                       │      │                   buffer to the stream buffer, starting with the next packet
│                       │      │                   received.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54873 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1f643b8bc735
│                       │      │                  │      487b500a1f68a7fb3a22d5e38e23 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/279e7ee1392a
│                       │      │                  │      f98785746788168749491c74bd53 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/3ea6213e050e
│                       │      │                  │      938ecbbf8c4eff32bec2736780eb 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/7127fb10888b
│                       │      │                  │      49711c63128a09e524c0d2d5d0b2 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54873 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-54873 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.763Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:13.18Z 
│                       ├ [56] ╭ VulnerabilityID : CVE-2026-54875 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54875 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:00f0112b5ef7be151da1d7da4f85adc2ef354a1141b7e120d3787
│                       │      │                   6d545cedae3 
│                       │      ├ Title           : openssl: openssl: information disclosure via
│                       │      │                   non-constant-time SM2 scalar multiplication on ARM64 and
│                       │      │                   RISC-V 
│                       │      ├ Description     : Issue summary: A non-constant-time optimized implementation
│                       │      │                   of scalar
│                       │      │                   point multiplication is used for SM2 private key operations
│                       │      │                   on ARM64 and
│                       │      │                   RISC-V platforms.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure the time taken
│                       │      │                   by, or to observe
│                       │      │                   the cache-line access pattern of SM2 signing or decryption
│                       │      │                   on an affected
│                       │      │                   platform can learn information about the secret scalar.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: On ARM64 and RISC-V processors, the SM2 curve
│                       │      │                   uses an optimized
│                       │      │                   scalar multiplication implementation whose conditional
│                       │      │                   branches and table
│                       │      │                   look ups are chosen according to the bits of the secret
│                       │      │                   scalar. The execution
│                       │      │                   time and the cache-access pattern therefore depend on the
│                       │      │                   long-term private
│                       │      │                   key (during SM2 decryption) or the per-signature nonce
│                       │      │                   (during SM2 signature
│                       │      │                   generation), forming a timing and cache side-channel.
│                       │      │                   FIPS Impact: no
│                       │      │                   SM2 is not a FIPS algorithm and the optimized SM2
│                       │      │                   implementation is not part
│                       │      │                   of the FIPS module.
│                       │      │                   OpenSSL 4.0, 3.6, 3.5 and 3.4 are vulnerable to this issue
│                       │      │                   on AArch64 and
│                       │      │                   RISC-V.
│                       │      │                   OpenSSL 3.0, 1.1.1 and 1.0.2 are not affected by this
│                       │      │                   issue.
│                       │      │                   OpenSSL 4.0 users should upgrade to OpenSSL 4.0.3.
│                       │      │                   OpenSSL 3.6 users should upgrade to OpenSSL 3.6.5.
│                       │      │                   OpenSSL 3.5 users should upgrade to OpenSSL 3.5.9.
│                       │      │                   OpenSSL 3.4 users should upgrade to OpenSSL 3.4.8.
│                       │      │                   This issue was reported on 2 May 2026 by Abhinav Agarwal.
│                       │      │                   It was independently reported on 6 June 2026 by Feng Xue.
│                       │      │                   The fix was developed by Igor Ustinov.
│                       │      │                   -- cut (non-publishing metadata for internal use) --
│                       │      │                   Reported by: Abhinav Agarwal, Feng Xue
│                       │      │                   Fixed by: Igor Ustinov 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54875 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/3f01bbc28f7e
│                       │      │                  │      08211fcdc797fd43816504f94257 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/469f3e42629f
│                       │      │                  │      4a0b5631796e20c66c92c138a3e8 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9794ed473764
│                       │      │                  │      839275cb701b4850f3c24d929c28 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/dddad955d5ff
│                       │      │                  │      3e9507619cf4e0f13e9988e2197c 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54875 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54875 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:08.92Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [57] ╭ VulnerabilityID : CVE-2026-72897 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-72897 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:acc57cd9d64dc275d4608d74a31e6e587f5816d69dcb4bd2e9f19
│                       │      │                   966313f6538 
│                       │      ├ Title           : openssl: openssl: Denial of Service via out-of-bounds write
│                       │      │                   during TLS context switch 
│                       │      ├ Description     : Issue summary: A TLS server that calls SSL_set_SSL_CTX() to
│                       │      │                   switch a
│                       │      │                   connection to a different SSL_CTX part way through a
│                       │      │                   handshake may access
│                       │      │                   memory beyond the end of an internal array if the
│                       │      │                   replacement context knows
│                       │      │                   about more provider signature algorithms than the context
│                       │      │                   the connection was
│                       │      │                   created from. Applications which never call
│                       │      │                   SSL_set_SSL_CTX() are not
│                       │      │                   affected.
│                       │      │                   
│                       │      │                   Impact summary: A remote peer may be able to cause a small
│                       │      │                   out-of-bounds
│                       │      │                   read, and in some circumstances a fixed-value out-of-bounds
│                       │      │                   write, on the
│                       │      │                   server heap. This may lead to a Denial of Service.
│                       │      │                   CWE: CWE-787: Out-of-bounds Write
│                       │      │                   Description: A TLS connection records how many certificate
│                       │      │                   slots it has
│                       │      │                   when it is created, taken from the SSL_CTX that created it:
│                       │      │                   the built-in
│                       │      │                   certificate types plus one slot for each provider TLS-SIGALG
│                       │      │                    entry that
│                       │      │                   context was aware of. That count sizes an internal array of
│                       │      │                   per-slot
│                       │      │                   certificate validity flags.
│                       │      │                   An application may replace a connection's SSL_CTX part way
│                       │      │                   through the
│                       │      │                   handshake by calling SSL_set_SSL_CTX(), most commonly from a
│                       │      │                    servername
│                       │      │                   callback in order to serve a different virtual host. Doing
│                       │      │                   so did not
│                       │      │                   refresh the recorded count. A provider signature algorithm's
│                       │      │                    slot index is
│                       │      │                   its position in the list of whichever context resolves it,
│                       │      │                   so if the
│                       │      │                   replacement context is aware of more of them than the
│                       │      │                   original, an
│                       │      │                   algorithm offered by the peer can resolve to an index beyond
│                       │      │                    the end of the
│                       │      │                   array. Processing the peer's signature algorithms then reads
│                       │      │                    one four byte
│                       │      │                   word past the end for each such algorithm and, where the
│                       │      │                   word read is zero,
│                       │      │                   writes a fixed value over it. A peer offering many of them
│                       │      │                   can corrupt heap
│                       │      │                   metadata and abort the process.
│                       │      │                   Only provider signature algorithms which occupy one of the
│                       │      │                   excess slots,
│                       │      │                   and which the server also has configured, have this effect.
│                       │      │                   Codepoints the
│                       │      │                   replacement context does not recognise are discarded without
│                       │      │                    being resolved
│                       │      │                   to a slot, and provider signature algorithms are usable only
│                       │      │                    from TLS 1.3.
│                       │      │                   The two contexts must therefore be aware of different
│                       │      │                   numbers of provider
│                       │      │                   signature algorithms, which requires separate library
│                       │      │                   contexts, a provider
│                       │      │                   loaded between the two being created, or providers which
│                       │      │                   differ in what
│                       │      │                   they advertise - in 4.0, for example, the default provider
│                       │      │                   advertises SM2
│                       │      │                   where the FIPS provider does not. A deployment meeting the
│                       │      │                   condition is
│                       │      │                   also unable to negotiate the affected algorithms with
│                       │      │                   legitimate clients,
│                       │      │                   since the same stale count hides the corresponding
│                       │      │                   certificates, so the
│                       │      │                   misconfiguration is likely to be noticed. For that reason,
│                       │      │                   and because the
│                       │      │                   configuration is not the default, this issue has been
│                       │      │                   assessed as Low
│                       │      │                   severity.
│                       │      │                   FIPS impact: no
│                       │      │                   No FIPS modules are affected by this issue as the affected
│                       │      │                   code is outside
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-72897 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/00646e5085a0
│                       │      │                  │      d12d29e0d2f9b9bc5f7111a50922 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/4135f553c9d3
│                       │      │                  │      ba4a09fe752f5d30af2a6a092b2e 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9c54d209486f
│                       │      │                  │      6b1ad79fe2179c40f13200fa4f61 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/e87ed26b298a
│                       │      │                  │      74d8ba61a53e9c7bcd1acac6b814 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-72897 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-72897 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:09.903Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [58] ╭ VulnerabilityID : CVE-2026-75804 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75804 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8495f5c7ef6d893020c29c53642c96f1a4a2b6f620cc88ff87b2c
│                       │      │                   bec475a17df 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via unenforced QUIC
│                       │      │                   connection flow control 
│                       │      ├ Description     : Issue summary: OpenSSL QUIC stack does not enforce
│                       │      │                   connection
│                       │      │                   level flow control for streams. Remote peers may send more
│                       │      │                   bytes
│                       │      │                   as long as they fit within the stream flow control limits.
│                       │      │                   
│                       │      │                   Impact summary: A malicious remote peer may exploit the lack
│                       │      │                    of connection
│                       │      │                   flow control for streams to make the QUIC stack receive
│                       │      │                   ~100MB of memory
│                       │      │                   instead of 768 KiB (default flow control window size).
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: The local QUIC stack advertises two flow
│                       │      │                   control limits
│                       │      │                   to its remote peer: stream flow control limit and connection
│                       │      │                    flow
│                       │      │                   control limit. The remote peer must follow both limits when
│                       │      │                   transmitting
│                       │      │                   stream data.
│                       │      │                   Whenever the local QUIC stack receives a stream frame, it
│                       │      │                   validates
│                       │      │                   that the size of the received stream frame stays within flow
│                       │      │                    control limits.
│                       │      │                   If either limit is exceeded (stream level or connection
│                       │      │                   level), then
│                       │      │                   the QUIC stack must close the connection with a flow control
│                       │      │                    error.
│                       │      │                   The vulnerable OpenSSL QUIC stack enforces the stream-level
│                       │      │                   but not
│                       │      │                   the connection-level limit. To exploit the issue, three
│                       │      │                   conditions must be met:
│                       │      │                     - the remote peer opens several streams
│                       │      │                     - each stream must stay within the stream-level flow
│                       │      │                   control limit
│                       │      │                     - there must be no zero-offset byte sent on any of the
│                       │      │                   streams
│                       │      │                       (to prevent the vulnerable QUIC stack from consuming
│                       │      │                   data).
│                       │      │                   By meeting the conditions above, the remote peer may make
│                       │      │                   the local stack
│                       │      │                   allocate 2 x MAX_STREAMS x (stream flow control limit)
│                       │      │                   of memory. MAX_STREAMS defaults to 100, and the limit
│                       │      │                   applies to both
│                       │      │                   bidirectional and unidirectional streams, making it 200 in
│                       │      │                   total. The default
│                       │      │                   flow control window for a stream is 512kB. The remote peer
│                       │      │                   may
│                       │      │                   force the vulnerable QUIC stack to allocate 100MB of heap
│                       │      │                   per connection.
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75804 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/2e8f54666b3f
│                       │      │                  │      b7b05ff5f58aa6cac9285163654e 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/4533ee8a5686
│                       │      │                  │      c953ed3b644738ac4bdf20806538 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/64d3102fb5b5
│                       │      │                  │      4311e92517f26ba00169d719e74a 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/f9eaecf5bdd6
│                       │      │                  │      692da052bc65b0332af2a938ac03 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75804 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75804 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:10.887Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [59] ╭ VulnerabilityID : CVE-2026-75805 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75805 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:819b5daddae62282234ee7fadcf42c0b14729c6891fc108520abe
│                       │      │                   bef67f00baa 
│                       │      ├ Title           : openssl: openssl: Denial of Service via crafted CMP
│                       │      │                   certificate revocation response 
│                       │      ├ Description     : Issue summary: A CMP client that requests certificate
│                       │      │                   revocation on the basis
│                       │      │                   of a PKCS#10 CSR may dereference a NULL pointer and
│                       │      │                   terminate abnormally when
│                       │      │                   processing a crafted revocation response. 
│                       │      │                   
│                       │      │                   Impact summary: The NULL pointer dereference happens on a
│                       │      │                   read which 
│                       │      │                   leads to a crash and a Denial of Service for the affected
│                       │      │                   client application.
│                       │      │                   CWE: CWE-476: NULL-pointer dereference
│                       │      │                   Description: A CMP client revoking a certificate has to tell
│                       │      │                    the server which
│                       │      │                   certificate to revoke, and may do so by supplying a PKCS#10
│                       │      │                   CSR instead of the
│                       │      │                   certificate itself or its issuer name and serial number.
│                       │      │                   This is
│                       │      │                   'openssl cmp -cmd rr -csr <file>' on the command line, or
│                       │      │                   OSSL_CMP_exec_RR_ses() with the certificate supplied via
│                       │      │                   OSSL_CMP_CTX_set1_p10CSR() through the API.
│                       │      │                   A CSR does not contain the issuer name and serial number of
│                       │      │                   the certificate,
│                       │      │                   so the client does not send them. A server may optionally
│                       │      │                   name the
│                       │      │                   certificate it revoked in its response, and the client then
│                       │      │                   compares that
│                       │      │                   name against what it sent. Having sent neither an issuer
│                       │      │                   name nor a serial
│                       │      │                   number, it has nothing to compare against, and a server
│                       │      │                   returning a specially
│                       │      │                   crafted name causes the client to read from a NULL pointer
│                       │      │                   and crash.
│                       │      │                   The revocation response is checked for valid message
│                       │      │                   protection before
│                       │      │                   the affected code is reached, so an attacker must be a
│                       │      │                   malicious or
│                       │      │                   compromised CMP server, or a man-in-the-middle in possession
│                       │      │                    of the
│                       │      │                   secret used for message protection. Clients that identify
│                       │      │                   the certificate
│                       │      │                   to be revoked by a certificate or by issuer and serial
│                       │      │                   number rather
│                       │      │                   than by a PKCS#10 CSR are not affected.
│                       │      │                   FIPS impact: no
│                       │      │                   No FIPS modules are affected by this issue, as the CMP
│                       │      │                   protocol
│                       │      │                   implementation is outside the OpenSSL FIPS module
│                       │      │                   boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-476 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75805 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/7588db7fef14
│                       │      │                  │      209c3caa3a101d11a02006b19166 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/7ca0ccb5172a
│                       │      │                  │      577e9b87267d77bfe21e5481a5e7 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/9eb2a8a9b861
│                       │      │                  │      36cdb39d6d7d50644dd66941cdc3 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/abf02872a4b7
│                       │      │                  │      1767ecc72293424420f5b009190f 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75805 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75805 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.063Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [60] ╭ VulnerabilityID : CVE-2026-75806 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75806 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:55d392909a6a00106bf4ca8fdbd9180212c3018ef62c7f0143184
│                       │      │                   7049fc3ef55 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via undersized DTLS record 
│                       │      ├ Description     : Issue summary: An established DTLS 1.2 association using an
│                       │      │                   AEAD cipher suite
│                       │      │                   can be terminated by a single unauthenticated datagram whose
│                       │      │                    encrypted
│                       │      │                   fragment is shorter than the mandatory explicit IV and
│                       │      │                   authentication tag
│                       │      │                   overhead.
│                       │      │                   
│                       │      │                   Impact summary: An attacker who can send a datagram that is
│                       │      │                   routed to an
│                       │      │                   existing DTLS 1.2 association can tear that association down
│                       │      │                    without knowing
│                       │      │                   any key material. This is a Denial of Service limited to the
│                       │      │                    targeted
│                       │      │                   association. There is no memory safety or confidentiality
│                       │      │                   impact.
│                       │      │                   CWE: CWE-1284: Improper Validation of Specified Quantity in
│                       │      │                   Input
│                       │      │                   Description: In TLS 1.2 and DTLS 1.2 every record protected
│                       │      │                   by an AEAD cipher
│                       │      │                   suite carries an explicit IV followed by the ciphertext and
│                       │      │                   an authentication
│                       │      │                   tag. When decrypting such a record the record layer passed
│                       │      │                   the record length to
│                       │      │                   the cipher implementation before checking that the record
│                       │      │                   was long enough to
│                       │      │                   contain the explicit IV and the tag. For a record shorter
│                       │      │                   than that overhead the
│                       │      │                   cipher implementation rejected the impossible length, and
│                       │      │                   the record layer
│                       │      │                   treated this as an internal failure and raised a fatal
│                       │      │                   internal_error alert
│                       │      │                   instead of treating the record as one that failed
│                       │      │                   authentication.
│                       │      │                   In TLS 1.2 the same record causes a fatal internal_error
│                       │      │                   alert instead of the
│                       │      │                   expected bad_record_mac alert. Since any undecryptable
│                       │      │                   record already
│                       │      │                   terminates a TLS connection, this is a protocol conformance
│                       │      │                   issue rather than
│                       │      │                   a security issue in TLS.
│                       │      │                   The fix validates the record length against the explicit IV
│                       │      │                   and tag length
│                       │      │                   before any AEAD processing, so that TLS reports
│                       │      │                   bad_record_mac and DTLS
│                       │      │                   silently discards the record.
│                       │      │                   FIPS impact: no
│                       │      │                   The affected code is outside the FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-1284 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-75806 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/04728a289a82
│                       │      │                  │      3e68137f88da016cb9ede307217d 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/050b275cd671
│                       │      │                  │      a6eed1d6457642d41a5a77aab972 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/3a4589d015a9
│                       │      │                  │      049d47b66f186cf50a8711343a1d 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/5af82fefbaf2
│                       │      │                  │      b5fec2fc0e1d87f112844902f01d 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-75806 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75806 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.217Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [61] ╭ VulnerabilityID : CVE-2026-77696 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-77696 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:73b5f9ab6dcfa81dc4d0087f964aa5e672c1011195dd00fee291c
│                       │      │                   82c930288f3 
│                       │      ├ Title           : openssl: OpenSSL: Private key recovery via SM2 timing
│                       │      │                   side-channel 
│                       │      ├ Description     : Issue summary: SM2 signature generation uses
│                       │      │                   non-constant-time arithmetic
│                       │      │                   on secret values, forming a timing side-channel.
│                       │      │                   
│                       │      │                   Impact summary: An attacker able to measure SM2 signing
│                       │      │                   times may learn
│                       │      │                   information about the per-signature secret nonce, which over
│                       │      │                    many signatures
│                       │      │                   can, via a lattice / Hidden Number Problem attack, lead to
│                       │      │                   recovery of the
│                       │      │                   private key.
│                       │      │                   CWE: CWE-208: Observable Timing Discrepancy
│                       │      │                   Description: SM2 signature generation computes the signature
│                       │      │                    value using
│                       │      │                   variable-time BIGNUM operations on the secret nonce and the
│                       │      │                   private key, so
│                       │      │                   the time taken to produce an SM2 signature depends on these
│                       │      │                   secret values,
│                       │      │                   forming a timing side-channel.
│                       │      │                   Applications performing SM2 signature generation are
│                       │      │                   affected on all
│                       │      │                   platforms.
│                       │      │                   FIPS Impact: no
│                       │      │                   SM2 is not a FIPS algorithm. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-208 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-77696 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/1c4aed808a7a
│                       │      │                  │      ea32d2d013049c2e0d9fef164fc9 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/20b20628d39b
│                       │      │                  │      2dcc4677194bd68c7c060fa598cb 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/419f5cb51972
│                       │      │                  │      1dceed393dbc524d79e487c72e64 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/6b90445a56b9
│                       │      │                  │      9a328ac1feba058abf976504f440 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-77696 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8847-2 
│                       │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-77696 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:11.493Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [62] ╭ VulnerabilityID : CVE-2026-84784 
│                       │      ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.5 
│                       │      ├ PkgName         : openssl-provider-legacy 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu3
│                       │      │                  │       .5?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c3a89c1b147c7d7b 
│                       │      ├ InstalledVersion: 3.5.5-1ubuntu3.5 
│                       │      ├ FixedVersion    : 3.5.5-1ubuntu3.6 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84784 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0047f60ec596c5ac4245199d678324f99506e0b5816f65b78c364
│                       │      │                   95bc672a0a4 
│                       │      ├ Title           : openssl: OpenSSL: Denial of Service via unbounded QUIC
│                       │      │                   connection identifier backlog 
│                       │      ├ Description     : Issue summary: A malicious remote peer may flood the local
│                       │      │                   QUIC
│                       │      │                   stack with NEW_CONNECTION_ID frames by avoiding a limit
│                       │      │                   check on
│                       │      │                   how many connection IDs the remote QUIC stack can use.
│                       │      │                   
│                       │      │                   Impact summary: The local QUIC stack sends a RETIRE_CONN_ID
│                       │      │                   frame
│                       │      │                   for every NEW_CONNECTION_ID frame it receives. The
│                       │      │                   RETIRE_CONN_ID
│                       │      │                   frame is dispatched via the Control Frame Queue (CFQ). If
│                       │      │                   the remote
│                       │      │                   peer also withholds ACKs, then it can force the local stack
│                       │      │                   to allocate ~400MB (depending on ACK delay).
│                       │      │                   CWE: CWE-770: Allocation of Resources Without Limits or
│                       │      │                   Throttling
│                       │      │                   Description: RFC 9000 sections 5.1.1 and 5.1.2 [1] describe
│                       │      │                   the mechanism
│                       │      │                   by which a remote peer can notify the local QUIC stack to
│                       │      │                   change the
│                       │      │                   destination connection ID (a.k.a. CID) the local stack uses
│                       │      │                   to
│                       │      │                   identify the connection at the remote peer. Each CID is
│                       │      │                   associated
│                       │      │                   with a sequence number. The sequence number is transmitted
│                       │      │                   in NEW_CONNECTION_ID and RETIRE_CONNECTION_ID frames to
│                       │      │                   identify the CID
│                       │      │                   which is being either associated with a connection or
│                       │      │                   retired.
│                       │      │                   The remote peer sends a NEW_CONNECTION_ID frame to let the
│                       │      │                   local stack know
│                       │      │                   a new CID is being associated with an existing connection.
│                       │      │                   The
│                       │      │                   NEW_CONNECTION_ID frame carries the new CID, its sequence
│                       │      │                   number, and the
│                       │      │                   retire-prior-to number. The retire-prior-to identifies
│                       │      │                   existing
│                       │      │                   CIDs that are to be retired. The local QUIC stack must send
│                       │      │                   a
│                       │      │                   RETIRE_CONNECTION_ID for every destination CID whose
│                       │      │                   sequence number
│                       │      │                   is less than retire-prior-to. The CID becomes retired after
│                       │      │                   the
│                       │      │                   local stack receives an ACK for its RETIRE_CONNECTION_ID
│                       │      │                   frame.
│                       │      │                   Although the OpenSSL QUIC stack supports at most one
│                       │      │                   destination CID
│                       │      │                   for every connection, it can be tricked into processing more
│                       │      │                    than
│                       │      │                   one RETIRE_CONNECTION_ID frame per connection. The OpenSSL
│                       │      │                   stack currently retires the destination CID as soon as it
│                       │      │                   receives
│                       │      │                   the NEW_CONNECTION_ID, while in fact the destination CID
│                       │      │                   must
│                       │      │                   be retired after an ACK for the RETIRE_CONNECTION_ID frame
│                       │      │                   is received.
│                       │      │                   Correcting the flawed logic also fixes the backlog growth.
│                       │      │                   [1]
│                       │      │                   https://datatracker.ietf.org/doc/html/rfc9000#name-issuing-c
│                       │      │                   onnection-ids
│                       │      │                   FIPS impact: no
│                       │      │                   The FIPS module is not affected as the QUIC implementation
│                       │      │                   is outside of
│                       │      │                   the OpenSSL FIPS module boundary. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-770 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-84784 
│                       │      │                  ├ [1]: https://github.com/openssl/openssl/commit/4685c914b0d4
│                       │      │                  │      10b1034f40b547c95bc95e7a380a 
│                       │      │                  ├ [2]: https://github.com/openssl/openssl/commit/9a30fe0fba19
│                       │      │                  │      5c14e5b87bf93c0d0fdb70373806 
│                       │      │                  ├ [3]: https://github.com/openssl/openssl/commit/dba3c48d653c
│                       │      │                  │      64fcbc9070a17a0ee2b3e2f3af1f 
│                       │      │                  ├ [4]: https://github.com/openssl/openssl/commit/e9e5155833fa
│                       │      │                  │      968bee50024bf9ca3a185ab599fe 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-84784 
│                       │      │                  ├ [6]: https://openssl-library.org/news/secadv/20260929.txt 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8847-1 
│                       │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-84784 
│                       │      ├ PublishedDate   : 2026-09-29T16:17:12.81Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:27:41.13Z 
│                       ├ [63] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 12ffbe3e135ac553 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cc8e81944816c5201a23d40f33302d1b72cf08bba3718370700fc
│                       │      │                   5f429ed5b5e 
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
│                       ├ [64] ╭ VulnerabilityID : CVE-2026-35341 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3c4c3b5563868e9ff9975b23140477fcab2ac5ffc57957ded93d4
│                       │      │                   61c0bad53ed 
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
│                       ├ [65] ╭ VulnerabilityID : CVE-2026-35344 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5eedb4e9aaf52881858f7e0581f2a04356d3026c2e69da4b7128a
│                       │      │                   ac9d3682f86 
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
│                       ├ [66] ╭ VulnerabilityID : CVE-2026-35345 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b1b84f9b7d2fae85893351f800135d6403edce0abcf87aa0699e9
│                       │      │                   bfd056b4a5b 
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
│                       ├ [67] ╭ VulnerabilityID : CVE-2026-35348 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:67d3c4d3435d8ce202483fea6baab4d38feb352ccde6334da46a7
│                       │      │                   23e43131ebf 
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
│                       ├ [68] ╭ VulnerabilityID : CVE-2026-35350 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5491dd4ece212c2ac4aca1bd906894cc3c707007a994ffbb0ca12
│                       │      │                   630f5146452 
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
│                       ├ [69] ╭ VulnerabilityID : CVE-2026-35351 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:536f850c9ef04d20c6205cb2952dbfc8758f2719237a5cac91f3e
│                       │      │                   89a7dbf27bb 
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
│                       ├ [70] ╭ VulnerabilityID : CVE-2026-35352 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5c4fd299ded1bf30baf02d95bcc1114c1dce74a38784f7a69871e
│                       │      │                   4713b484ccb 
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
│                       ├ [71] ╭ VulnerabilityID : CVE-2026-35354 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3f253dc89fb9fb7da93d54a98ca3fee950faa62f434da7d2b96a0
│                       │      │                   41ad628ab43 
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
│                       ├ [72] ╭ VulnerabilityID : CVE-2026-35357 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:14067023fb632e87cff643d6c9c2dc7423465756bf6c88d40d553
│                       │      │                   4228bf89f16 
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
│                       ├ [73] ╭ VulnerabilityID : CVE-2026-35359 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dcc84055fd87ebf1864e85c070791115eda3b77eaa0fcfc9ca3c8
│                       │      │                   47a299fe07c 
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
│                       ├ [74] ╭ VulnerabilityID : CVE-2026-35360 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:02f64a231620df7ae4d725fffc8f8b06c7fbafff09846f3de6356
│                       │      │                   a4e31225c1d 
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
│                       ├ [75] ╭ VulnerabilityID : CVE-2026-35363 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:163422eabfcc0284830924763c3c2ce6e0650ba1290dcdb455d9d
│                       │      │                   1807e87e434 
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
│                       ├ [76] ╭ VulnerabilityID : CVE-2026-35364 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:460a50a16e819245bebd2f417f73038a5874f09faf5d085a6a3ff
│                       │      │                   0d3d1b953d8 
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
│                       ├ [77] ╭ VulnerabilityID : CVE-2026-35367 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c93df6a8fd5e86bf6996f04c81e5c8205d12859b2f9695f56214b
│                       │      │                   3ef5ae82c5a 
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
│                       ├ [78] ╭ VulnerabilityID : CVE-2026-35368 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c3a05407a516ce3278c7f0a227c66db4651ee9e6fe0412456f532
│                       │      │                   c1880228869 
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
│                       ├ [79] ╭ VulnerabilityID : CVE-2026-35370 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7eb35e65b4c7ecc0afa4889aced42464137dfa4bb958537ba8005
│                       │      │                   fab2a84a0ab 
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
│                       ├ [80] ╭ VulnerabilityID : CVE-2026-35371 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9dc03fff0c0aa1fed8c89b26958400b8d5f0bc4338f9eb249b206
│                       │      │                   d243481005f 
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
│                       ├ [81] ╭ VulnerabilityID : CVE-2026-35373 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:34a9ae056b3510eff2309c03c8f6d2da5f411ac2b399d426a253d
│                       │      │                   df5a92c7288 
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
│                       ├ [82] ╭ VulnerabilityID : CVE-2026-35374 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9d3437398f3a0e8eb7b8cca33f14dc64b883a0af42ec634989fa9
│                       │      │                   e7b5bd42382 
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
│                       ├ [83] ╭ VulnerabilityID : CVE-2026-35377 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:26d7605aa8e4ad2b27bcd8fc9afd1ca68af3310e6d6d1d9fd3764
│                       │      │                   11a9f0af182 
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
│                       ├ [84] ╭ VulnerabilityID : CVE-2026-18477 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18477 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0903ff789dd1f7a1d4bf89a6dcef34d13c1635ef2d7fe0b8939b3
│                       │      │                   0f8beb9d661 
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
│                       ├ [85] ╭ VulnerabilityID : CVE-2026-18508 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                       │      │                  │         d6e4aef40a1696da07f4 
│                       │      │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                       │      │                            7dbfa2c7480751e938a7 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18508 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:64de97ecf35e33ad598af8c5fd6b57bfdee87213e3391aa50b6fc
│                       │      │                   41f78a570ba 
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
│                       ╰ [86] ╭ VulnerabilityID : CVE-2026-85091 
│                              ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ PkgName         : zlib1g 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu3
│                              │                  │       .1?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                              │                  ╰ UID : a4f0bcc5ee12eaad 
│                              ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1
│                              │                  │         d6e4aef40a1696da07f4 
│                              │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd
│                              │                            7dbfa2c7480751e938a7 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-85091 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Fingerprint     : sha256:3852ca294ec431c071830716d40c5ccec4c8ac49302917fe750df
│                              │                   2be33495e86 
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
├ [1] ╭ Target         : Java 
│     ├ Class          : lang-pkgs 
│     ├ Type           : jar 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-91776 
│                       │     ├ VendorIDs        ─ [0]: GHSA-wv8q-qhhj-9h54 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-databind-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.22.2 
│                       │     │                  ╰ UID : b09f79ee50ae8e1d 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.18.11, 2.21.7, 2.22.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1d
│                       │     │                  │         6e4aef40a1696da07f4 
│                       │     │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd7
│                       │     │                            dbfa2c7480751e938a7 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-91776 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:932b99b11e7716b728c681e16e0ed64a50da7fe78827d77a8b68bf
│                       │     │                   eadd097994 
│                       │     ├ Title           : TypeDeserializerBase._findDeserializer() in FasterXML
│                       │     │                   jackson-databind ... 
│                       │     ├ Description     : TypeDeserializerBase._findDeserializer() in FasterXML
│                       │     │                   jackson-databind caches the resolved deserializer under the
│                       │     │                   raw, attacker-supplied type ID. When name-based polymorphism
│                       │     │                   is configured with a fallback, for example @JsonTypeInfo(use
│                       │     │                   = Id.NAME, defaultImpl = ...), every distinct unrecognized
│                       │     │                   type ID resolves to the same fallback deserializer but is
│                       │     │                   retained as its own key in the _deserializers map. That map
│                       │     │                   has no configurable bound and lives for the lifetime of the
│                       │     │                   type deserializer, so an attacker who can repeatedly supply
│                       │     │                   fresh unknown type IDs causes monotonic memory retention
│                       │     │                   across requests. The reporter observed 10,000 retained
│                       │     │                   entries from 10,000 distinct unknown IDs, against a single
│                       │     │                   entry for a control that repeated one unknown ID the same
│                       │     │                   number of times, isolating attacker-controlled key
│                       │     │                   cardinality from request volume. Exploitation requires an
│                       │     │                   application that enables name-based polymorphism with a
│                       │     │                   defaultImpl or equivalent fallback, accepts
│                       │     │                   attacker-influenced type IDs, and reuses a long-lived
│                       │     │                   ObjectMapper across requests. The fix stops caching fallback
│                       │     │                   resolutions for unrecognized IDs and bounds both the number
│                       │     │                   of cached entries and the length of a cacheable type ID. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-400 
│                       │     ├ VendorSeverity   ─ ghsa: 3 
│                       │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                       │     │                         ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/28
│                       │     │                  │      70d1d6dc1b7e1c07ee11dd5b04ab71cddbb577 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/issues/6203 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/releases/
│                       │     │                  │      tag/jackson-databind-2.18.11 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/releases/
│                       │     │                  │      tag/jackson-databind-2.21.7 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/releases/
│                       │     │                  │      tag/jackson-databind-2.22.3 
│                       │     │                  ├ [6]: https://github.com/FasterXML/jackson-databind/releases/
│                       │     │                  │      tag/jackson-databind-3.1.7 
│                       │     │                  ├ [7]: https://github.com/FasterXML/jackson-databind/releases/
│                       │     │                  │      tag/jackson-databind-3.2.3 
│                       │     │                  ├ [8]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-wv8q-qhhj-9h54 
│                       │     │                  ╰ [9]: https://nvd.nist.gov/vuln/detail/CVE-2026-91776 
│                       │     ├ PublishedDate   : 2026-09-23T03:17:04.62Z 
│                       │     ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
│                       ╰ [1] ╭ VulnerabilityID : CVE-2026-91777 
│                             ├ VendorIDs        ─ [0]: GHSA-cxp5-3px4-pw24 
│                             ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                             ├ PkgPath         : openaf/ghcopilot/jackson-databind-2.22.2.jar 
│                             ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                             │                  │       2.22.2 
│                             │                  ╰ UID : b09f79ee50ae8e1d 
│                             ├ InstalledVersion: 2.22.2 
│                             ├ FixedVersion    : 2.21.7, 2.18.11, 2.22.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:cda7d694a4310708743273eb2ea0bd5b08fcf16646d1d
│                             │                  │         6e4aef40a1696da07f4 
│                             │                  ╰ DiffID: sha256:51f421cb7afa3e92be2a80161a6b293a54d7490a5cdd7
│                             │                            dbfa2c7480751e938a7 
│                             ├ SeveritySource  : ghsa 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-91777 
│                             ├ DataSource       ╭ ID  : ghsa 
│                             │                  ├ Name: GitHub Security Advisory Maven 
│                             │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                             │                          osystem%3Amaven 
│                             ├ Fingerprint     : sha256:41a8b46dec1a3e8f262eac55cd80860b6454bf6806bb03aa1e2f61
│                             │                   a7928173fb 
│                             ├ Title           : Forward-reference completion for @JsonIdentityInfo object IDs
│                             │                    in Faste ... 
│                             ├ Description     : Forward-reference completion for @JsonIdentityInfo object IDs
│                             │                    in FasterXML jackson-databind performs a linear scan of the
│                             │                   pending-reference accumulator for every resolved ID. The
│                             │                   affected paths are
│                             │                   CollectionDeserializer.CollectionReferringAccumulator.resolve
│                             │                   ForwardReference() and the equivalent implementation in
│                             │                   MapDeserializer. When a document first creates N unresolved
│                             │                   object-ID references in an identity-enabled collection or map
│                             │                    and then defines those same IDs in reverse order, completion
│                             │                    performs on the order of N * (N + 1) / 2 identity
│                             │                   comparisons, so a shallow document whose size grows linearly
│                             │                   causes quadratic CPU work during deserialization. The
│                             │                   reporter instrumented equals() calls on the ID class and
│                             │                   measured exactly 2,003,000 comparisons at N = 2,000, against
│                             │                   zero comparisons in the pending-reference lookup path for an
│                             │                   equally sized control in which every reference was already
│                             │                   resolved. The input requires no deep nesting and no
│                             │                   syntactically unusual JSON. Exploitation requires an
│                             │                   application that deserializes attacker-influenced JSON into
│                             │                   an identity-enabled collection or map. The fix replaces the
│                             │                   repeated linear lookup with a keyed pending-reference
│                             │                   structure. 
│                             ├ Severity        : HIGH 
│                             ├ CweIDs           ─ [0]: CWE-400 
│                             ├ VendorSeverity   ─ ghsa: 3 
│                             ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                             │                         ╰ V3Score : 7.5 
│                             ├ References       ╭ [0] : https://github.com/FasterXML/jackson-databind 
│                             │                  ├ [1] : https://github.com/FasterXML/jackson-databind/commit/3
│                             │                  │       7ad9b81712cbb9fb62c2d2c1813593252a24b67 
│                             │                  ├ [2] : https://github.com/FasterXML/jackson-databind/issues/6
│                             │                  │       204 
│                             │                  ├ [3] : https://github.com/FasterXML/jackson-databind/pull/6204 
│                             │                  ├ [4] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.18.11 
│                             │                  ├ [5] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.21.7 
│                             │                  ├ [6] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.22.3 
│                             │                  ├ [7] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-3.1.7 
│                             │                  ├ [8] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-3.2.3 
│                             │                  ├ [9] : https://github.com/FasterXML/jackson-databind/security
│                             │                  │       /advisories/GHSA-cxp5-3px4-pw24 
│                             │                  ╰ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-91777 
│                             ├ PublishedDate   : 2026-09-23T03:17:04.783Z 
│                             ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
╰ [2] ╭ Target  : usr/bin/pebble 
      ├ Class   : lang-pkgs 
      ├ Type    : gobinary 
      ╰ Packages 
```
