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
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-87766 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e6714b94447e4f1975c958b24cabaae15fe8bf415dd9c73054000
│                       │      │                   1738f678a9b 
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
│                       ├ [1]  ╭ VulnerabilityID : CVE-2026-102473 
│                       │      ├ PkgID           : dash@0.5.12-12ubuntu3 
│                       │      ├ PkgName         : dash 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dash@0.5.12-12ubuntu3?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : aae76bcb2cfc4bd9 
│                       │      ├ InstalledVersion: 0.5.12-12ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-102473 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f31e27e6a012a97779df3e622d5b5e689e750538ddb0090f22421
│                       │      │                   568ef7eebf1 
│                       │      ├ Title           : dash: dash: Super-polynomial backtracking in pmatch when
│                       │      │                   libc fnmatch is disabled 
│                       │      ├ Description     : A flaw was found in dash. When built without libc fnmatch,
│                       │      │                   the internal pmatch() matcher implements * by unbounded
│                       │      │                   recursion over candidate positions. A local user who can
│                       │      │                   plant filenames, or otherwise feed that matcher, can make a
│                       │      │                   short multi-star pattern such as *.*.*.*.*.tar.gz consume
│                       │      │                   excessive CPU. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-1333 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-102473 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2543005 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-102473 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-102473 
│                       │      ├ PublishedDate   : 2026-09-29T10:17:10.383Z 
│                       │      ╰ LastModifiedDate: 2026-09-30T21:17:04.273Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2026-102474 
│                       │      ├ PkgID           : dash@0.5.12-12ubuntu3 
│                       │      ├ PkgName         : dash 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/dash@0.5.12-12ubuntu3?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : aae76bcb2cfc4bd9 
│                       │      ├ InstalledVersion: 0.5.12-12ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-102474 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:98f9199d7292bbe4061ac0fdc11ee8e9f8797ebaa14f78dbf89d9
│                       │      │                   adc77b05b0d 
│                       │      ├ Title           : dash: dash: Heap out-of-bounds write in conv_escape via
│                       │      │                   undersized Unicode escape reservation 
│                       │      ├ Description     : A flaw was found in dash. The printf builtin reserves four
│                       │      │                   bytes before converting a Unicode \u or \U escape, but the
│                       │      │                   multi-byte token can need five or six bytes. A local user
│                       │      │                   who can supply such an escape to dash printf or echo %b,
│                       │      │                   including through dash -c and a positional argument, can
│                       │      │                   write one or two bytes past that reservation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-102474 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2543004 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-102474 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-102474 
│                       │      ├ PublishedDate   : 2026-09-29T10:17:10.707Z 
│                       │      ╰ LastModifiedDate: 2026-09-29T21:29:07.663Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c8d2c98061396276d9088389be90f8db0f8c9a5305dfd6267d3dd
│                       │      │                   e1fbda4ae74 
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
│                       ├ [4]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:245e2520664addddc9ca7e754e3585db728869aad44730e49b40c
│                       │      │                   59dad50d4d8 
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
│                       ├ [5]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2340020dcb578ea4e4e3994acda99e179ff9ad39d3eb07916db60
│                       │      │                   ebd9315f912 
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
│                       ├ [6]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7cfaf68694ce9376c31649706b2516e4422b3d2f09d0f276eee73
│                       │      │                   eb92bf0d830 
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
│                       ├ [7]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e81b61d3321059462ebddb00ef67d19da2b883212832199d080d9
│                       │      │                   cd416bf2721 
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
│                       ├ [8]  ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2.4?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : b964ecf8d3a43faa 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5fe7709f890555e8be324e3ea3a1f889ac6190a1732eb921d1d3e
│                       │      │                   6fa178f232a 
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
│                       │      ├ VendorSeverity   ╭ alma  : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ├ rocky : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/08/27/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:79281 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-18374 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2513603 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2513608 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2523249 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2523274 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2524870 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2513603 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2513608 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2523249 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2523274 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2524870 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2525256 
│                       │      │                  ├ [14]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18374 
│                       │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-19542 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6368 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6791 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-77117 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-80489 
│                       │      │                  ├ [21]: https://errata.almalinux.org/9/ALSA-2026-79281.html 
│                       │      │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:79281 
│                       │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-18374 
│                       │      │                  ├ [24]: https://sourceware.org/bugzilla/show_bug.cgi?id=34574 
│                       │      │                  ├ [25]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advi
│                       │      │                  │       sories/GLIBC-SA-2026-0015 
│                       │      │                  ├ [26]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0015 
│                       │      │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-18374 
│                       │      ├ PublishedDate   : 2026-08-27T20:17:03.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-03T16:43:15.293Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2026-89092 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2.4?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : b964ecf8d3a43faa 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:19376f3ad408e57bbaceedaeaf397e3c248eeca822632f4d8d5fd
│                       │      │                   3e769677567 
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
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       .4?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : bbb7a8f7a59474e8 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:25c191d4008a4727e4812a93369b67c2407447176c1c7f625dfe5
│                       │      │                   4ba065de9e9 
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
│                       │      ├ VendorSeverity   ╭ alma  : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ├ rocky : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/08/27/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:79281 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-18374 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2513603 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2513608 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2523249 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2523274 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2524870 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2513603 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2513608 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2523249 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2523274 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2524870 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2525256 
│                       │      │                  ├ [14]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18374 
│                       │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-19542 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6368 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6791 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-77117 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-80489 
│                       │      │                  ├ [21]: https://errata.almalinux.org/9/ALSA-2026-79281.html 
│                       │      │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:79281 
│                       │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-18374 
│                       │      │                  ├ [24]: https://sourceware.org/bugzilla/show_bug.cgi?id=34574 
│                       │      │                  ├ [25]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advi
│                       │      │                  │       sories/GLIBC-SA-2026-0015 
│                       │      │                  ├ [26]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0015 
│                       │      │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-18374 
│                       │      ├ PublishedDate   : 2026-08-27T20:17:03.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-03T16:43:15.293Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2026-89092 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       .4?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : bbb7a8f7a59474e8 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:06d9ada72551fe90ca7fefde9fcc4922abba60531d3e6d4769b52
│                       │      │                   718d18c3ea6 
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
│                       ├ [12] ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2.4?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : fe574f54c2bc3102 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:63d69c3b359f22dc05686d1265352a55fee5cb29667935649ff29
│                       │      │                   4e96239ff91 
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
│                       │      ├ VendorSeverity   ╭ alma  : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ├ rocky : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/08/27/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:79281 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-18374 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2513603 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2513608 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2523249 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2523274 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2524870 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2513603 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2513608 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2523249 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2523274 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2524870 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2525256 
│                       │      │                  ├ [14]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18374 
│                       │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-19542 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6368 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6791 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-77117 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-80489 
│                       │      │                  ├ [21]: https://errata.almalinux.org/9/ALSA-2026-79281.html 
│                       │      │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:79281 
│                       │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-18374 
│                       │      │                  ├ [24]: https://sourceware.org/bugzilla/show_bug.cgi?id=34574 
│                       │      │                  ├ [25]: https://sourceware.org/git/?p=glibc.git;a=blob;f=advi
│                       │      │                  │       sories/GLIBC-SA-2026-0015 
│                       │      │                  ├ [26]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0015 
│                       │      │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-18374 
│                       │      ├ PublishedDate   : 2026-08-27T20:17:03.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-03T16:43:15.293Z 
│                       ├ [13] ╭ VulnerabilityID : CVE-2026-89092 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2.4?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : fe574f54c2bc3102 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89092 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dd478e6dcccc8acb25c9f91e116d6669946baf8243bba71c0de83
│                       │      │                   5cad6601a65 
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
│                       ├ [14] ╭ VulnerabilityID : CVE-2025-66382 
│                       │      ├ PkgID           : libexpat1@2.7.4-1ubuntu0.2 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1ubuntu0.2?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 1019b85f746342f4 
│                       │      ├ InstalledVersion: 2.7.4-1ubuntu0.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:725d1b886621008ee38e02099a5055968bf4bc91bfc433e1806fa
│                       │      │                   87e85053cb6 
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
│                       ├ [15] ╭ VulnerabilityID : CVE-2026-67693 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1.1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e77002ffbb98b2c 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-67693 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2e4a92bca33150f0377fb7d10b7172929195bdca5059c4b5ff55a
│                       │      │                   0b9cab761f9 
│                       │      ├ Title           : gnutls: gnutls: Information disclosure via contradictory Key
│                       │      │                    Usage and Extended Key Usage extensions 
│                       │      ├ Description     : An issue in gnutls v.3.8.13 allows an attacker to obtain
│                       │      │                   sensitive information via failing to reject end-entity X.509
│                       │      │                    certificates that contain a contradictory combination of
│                       │      │                   Key Usage (KU) and Extended Key Usage (EKU) 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-367 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0]: http://gnutls.com 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-67693 
│                       │      │                  ├ [2]: https://gist.github.com/lkloliver/6fbfc191bc6163942c80
│                       │      │                  │      17551ac3f238 
│                       │      │                  ├ [3]: https://gitlab.com/gnutls/gnutls/-/blob/3.8.13/lib/x50
│                       │      │                  │      9/verify.c#L1119-1178 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-67693 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-67693 
│                       │      ├ PublishedDate   : 2026-10-08T19:18:41.28Z 
│                       │      ╰ LastModifiedDate: 2026-10-09T12:17:11.35Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2026-88647 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1.1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e77002ffbb98b2c 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-88647 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:88045e89d55dbe89846e093832c308fad5c74352e3a2076d48160
│                       │      │                   fa8e8bb3ceb 
│                       │      ├ Title           : gnutls: gnutls: Information disclosure via hostname
│                       │      │                   verification bypass 
│                       │      ├ Description     : A hostname verification bypass in GnuTLS v3.8.13 allows
│                       │      │                   attackers to circumvent the Common Name fallback mechanism
│                       │      │                   and eavesdrop on communications via a crafted certificate.[
│                       │      │                   m 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-297 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-88647 
│                       │      │                  ├ [1]: https://gist.github.com/lkloliver/f98ec3de1a871fdfc02b
│                       │      │                  │      70b8b9ba7642 
│                       │      │                  ├ [2]: https://gitlab.com/gnutls/gnutls/-/issues/1802 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-88647 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-88647 
│                       │      ├ PublishedDate   : 2026-10-08T17:17:17.783Z 
│                       │      ╰ LastModifiedDate: 2026-10-10T03:17:08.62Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2026-95184 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1.1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e77002ffbb98b2c 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-95184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c44528c5407b0ab09dee414d8860b89b8e27c5eb39c6002be7b82
│                       │      │                   a67f3e32447 
│                       │      ├ Title           : Improper certificate validation in gnutls v3.8.13 causes the
│                       │      │                    applicati ... 
│                       │      ├ Description     : Improper certificate validation in gnutls v3.8.13 causes the
│                       │      │                    application to reject legitimate certificates for valid
│                       │      │                   users, leading to a Denial of Service (DoS). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-400 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: http://gnutls.com 
│                       │      │                  ├ [1]: https://evil.com 
│                       │      │                  ├ [2]: https://gist.github.com/lkloliver/0c8b47fa75a0958fa885
│                       │      │                  │      87665b82ae15 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-95184 
│                       │      ├ PublishedDate   : 2026-10-08T18:18:33.24Z 
│                       │      ╰ LastModifiedDate: 2026-10-08T21:33:42.423Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2026-95209 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1.1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e77002ffbb98b2c 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-95209 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a09dd9926215823cc41921ecb9f316ff5434c15a899908d290e0f
│                       │      │                   5f94bd2c554 
│                       │      ├ Title           : An issue in gnutls v3.8.13 causes legitimate CA certificates
│                       │      │                    to be rej ... 
│                       │      ├ Description     : An issue in gnutls v3.8.13 causes legitimate CA certificates
│                       │      │                    to be rejected, leading to a Denial of Service (DoS). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-400 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: http://gnutls.com 
│                       │      │                  ├ [1]: https://evil.com 
│                       │      │                  ├ [2]: https://gist.github.com/lkloliver/8e4498311aff18e20770
│                       │      │                  │      10e412043e18 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-95209 
│                       │      ├ PublishedDate   : 2026-10-08T19:20:52.83Z 
│                       │      ╰ LastModifiedDate: 2026-10-08T21:33:42.423Z 
│                       ├ [19] ╭ VulnerabilityID : CVE-2026-95210 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1.1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1.1?arch=
│                       │      │                  │       amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e77002ffbb98b2c 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-95210 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2b3ecb9b0bc179cc1d55bc82418a658d8e03c7080d64ee1ba993e
│                       │      │                   6032ace8f95 
│                       │      ├ Title           : Improper certificate validation in gnutls v3.8.13 causes the
│                       │      │                    applicati ... 
│                       │      ├ Description     : Improper certificate validation in gnutls v3.8.13 causes the
│                       │      │                    application to accept certificates containing invalid
│                       │      │                   extensions. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-295 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: http://gnutls.com 
│                       │      │                  ├ [1]: https://gist.github.com/lkloliver/4aad23689202720c4068
│                       │      │                  │      f43b3c6069c7 
│                       │      │                  ├ [2]: https://github.com/lkloliver/poc/tree/main/CVE-2026-95
│                       │      │                  │      210 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-95210 
│                       │      ├ PublishedDate   : 2026-10-08T18:18:33.37Z 
│                       │      ╰ LastModifiedDate: 2026-10-08T21:33:42.423Z 
│                       ├ [20] ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0ac1dda34f19d0595e12b9836559801ab5d7911dc959c3a7b4fae
│                       │      │                   53296eae076 
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
│                       ├ [21] ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c52267a45bd4fee6327e5559361b4bd6a19d9e6ef7d781254e5e9
│                       │      │                   7f4afef6680 
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
│                       ├ [22] ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cbffa7aa1cf1a13edcf5b3afd12e74d4da1fb757efdc77e8a9db4
│                       │      │                   e01eda7e59b 
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
│                       ├ [23] ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4fc15f967e6d468b1aaadb5a75158200fef93a10f5a165d423663
│                       │      │                   775bb2254a6 
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
│                       ├ [24] ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6450d70107f101341b73e07a994fee7279c8bbf448fdb4f8ec7cb
│                       │      │                   47790af3991 
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
│                       ├ [25] ╭ VulnerabilityID : CVE-2026-13757 
│                       │      ├ PkgID           : libp11-kit0@0.26.2-2 
│                       │      ├ PkgName         : libp11-kit0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distro
│                       │      │                  │       =ubuntu-26.04 
│                       │      │                  ╰ UID : 39936f33632ab742 
│                       │      ├ InstalledVersion: 0.26.2-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d447c7de12419bd79af0c07704f3a9fa6cf889cc149de4990dc0f
│                       │      │                   9b47b3c87a1 
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
│                       │      │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:81201 
│                       │      │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:82304 
│                       │      │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:82322 
│                       │      │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:82336 
│                       │      │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:82347 
│                       │      │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:82354 
│                       │      │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:82372 
│                       │      │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:82857 
│                       │      │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:82888 
│                       │      │                  ├ [24]: https://access.redhat.com/security/cve/CVE-2026-13757 
│                       │      │                  ├ [25]: https://bugzilla.redhat.com/2494556 
│                       │      │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                       │      │                  ├ [27]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-13757 
│                       │      │                  ├ [29]: https://errata.almalinux.org/9/ALSA-2026-49667.html 
│                       │      │                  ├ [30]: https://errata.rockylinux.org/RLSA-2026:49667 
│                       │      │                  ├ [31]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                       │      │                  ├ [32]: https://linux.oracle.com/cve/CVE-2026-13757.html 
│                       │      │                  ├ [33]: https://linux.oracle.com/errata/ELSA-2026-49668.html 
│                       │      │                  ├ [34]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                       │      │                  ├ [35]: https://ubuntu.com/security/notices/USN-8687-1 
│                       │      │                  ╰ [36]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                       │      ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                       │      ╰ LastModifiedDate: 2026-10-14T20:17:32.733Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2026-103111 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-103111 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2228c7b9a03591b14c7fa816aa10aa87af84a1946c18ea620c3b5
│                       │      │                   e287300537c 
│                       │      ├ Title           : pcre2: pcre2: Out-of-bounds write via crafted regular
│                       │      │                   expression 
│                       │      ├ Description     : PCRE2 before 10.49, when there is an attacker-controlled
│                       │      │                   regular expression and certain JIT API usage, allows an
│                       │      │                   out-of-bounds write with arbitrary data. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 7.6 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-103111 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [26]: https://github.com/PCRE2Project/pcre2/security/adviso
│                       │      │                  │       ries/GHSA-r9hj-j2rw-4q3m 
│                       │      │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-103111.html 
│                       │      │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-81613.html 
│                       │      │                  ├ [29]: https://lists.debian.org/debian-lts-announce/2026/10/
│                       │      │                  │       msg00008.html 
│                       │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-103111 
│                       │      │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-103111 
│                       │      ├ PublishedDate   : 2026-09-30T05:16:45.863Z 
│                       │      ╰ LastModifiedDate: 2026-10-04T00:16:35.563Z 
│                       ├ [27] ╭ VulnerabilityID : CVE-2026-86145 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-86145 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bd87ec0ce14c90626b6f6e60ebaa49b99724fb110e9741e96d6de
│                       │      │                   0e3ab3a2d2e 
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
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 8.2 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/09/05/3 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-86145 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [17]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [25]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [26]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [27]: https://github.com/PCRE2Project/pcre2/releases/tag/pc
│                       │      │                  │       re2-10.48 
│                       │      │                  ├ [28]: https://github.com/PCRE2Project/pcre2/security/adviso
│                       │      │                  │       ries/GHSA-3r4p-g7gg-ppmf 
│                       │      │                  ├ [29]: https://linux.oracle.com/cve/CVE-2026-86145.html 
│                       │      │                  ├ [30]: https://linux.oracle.com/errata/ELSA-2026-81613.html 
│                       │      │                  ├ [31]: https://nvd.nist.gov/vuln/detail/CVE-2026-86145 
│                       │      │                  ╰ [32]: https://www.cve.org/CVERecord?id=CVE-2026-86145 
│                       │      ├ PublishedDate   : 2026-09-05T06:17:10.37Z 
│                       │      ╰ LastModifiedDate: 2026-09-09T16:04:24.933Z 
│                       ├ [28] ╭ VulnerabilityID : CVE-2026-89156 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89156 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b379119a034242c90e6b4f3c310b7b7103d3c77ce458c11b7e45c
│                       │      │                   dbba038fee7 
│                       │      ├ Title           : PCRE2: PCRE2: Out-of-bounds read via invalid UTF data during
│                       │      │                    JIT fallback 
│                       │      ├ Description     : PCRE2 before 10.48 has a pcre2_match out-of-bounds read
│                       │      │                   after a JIT fallback when an attacker can provide invalid
│                       │      │                   UTF data. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-89156 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [26]: https://github.com/PCRE2Project/pcre2/releases/tag/pc
│                       │      │                  │       re2-10.48 
│                       │      │                  ├ [27]: https://github.com/PCRE2Project/pcre2/security/adviso
│                       │      │                  │       ries/GHSA-2p8c-ff85-vh9x 
│                       │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-89156.html 
│                       │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-81532.html 
│                       │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-89156 
│                       │      │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-89156 
│                       │      ├ PublishedDate   : 2026-09-11T04:18:03.23Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T19:27:01.327Z 
│                       ├ [29] ╭ VulnerabilityID : CVE-2026-89157 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89157 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d02257cfb85e874a65cda14d81d4cea61bdbfe152a7682e884cf0
│                       │      │                   0ce798e861d 
│                       │      ├ Title           : pcre2: PCRE2: Out-of-bounds write via large pattern input 
│                       │      ├ Description     : PCRE2 before 10.48, on 32-bit platforms, has a
│                       │      │                   pcre2_pattern_convert out-of-bounds write when an attacker
│                       │      │                   can provide a large pattern. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ nvd        : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.4 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.7 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-89157 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [26]: https://github.com/PCRE2Project/pcre2/releases/tag/pc
│                       │      │                  │       re2-10.48 
│                       │      │                  ├ [27]: https://github.com/PCRE2Project/pcre2/security/adviso
│                       │      │                  │       ries/GHSA-q8g2-wprr-34m9 
│                       │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-89157.html 
│                       │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-81613.html 
│                       │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-89157 
│                       │      │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-89157 
│                       │      ├ PublishedDate   : 2026-09-11T04:18:03.753Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T19:25:08.88Z 
│                       ├ [30] ╭ VulnerabilityID : CVE-2026-89158 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89158 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3282d86d1957702d2b29a1c61640a8896f5fb2707ad228364cd48
│                       │      │                   aef9db87dfc 
│                       │      ├ Title           : PCRE2: PCRE2: Out-of-bounds write via integer overflow on
│                       │      │                   32-bit platforms 
│                       │      ├ Description     : PCRE2 before 10.48, on 32-bit platforms, has a
│                       │      │                   pcre2_compile_32 integer overflow and resultant
│                       │      │                   out-of-bounds write. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-89158 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [26]: https://github.com/PCRE2Project/pcre2/releases/tag/pc
│                       │      │                  │       re2-10.48 
│                       │      │                  ├ [27]: https://github.com/PCRE2Project/pcre2/security/adviso
│                       │      │                  │       ries/GHSA-fmgr-6ggq-9859 
│                       │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-89158.html 
│                       │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-81613.html 
│                       │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-89158 
│                       │      │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-89158 
│                       │      ├ PublishedDate   : 2026-09-11T04:18:03.97Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T19:23:41.45Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2026-89160 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89160 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:68ff7c25bdd21847dea670dfd480343eba77526718460ea820be8
│                       │      │                   faa43b1c02a 
│                       │      ├ Title           : pcre2: PCRE2: Denial of Service via out-of-bounds read
│                       │      │                   during invalid UTF matching 
│                       │      ├ Description     : PCRE2 before 10.48 has a pcre2_match out-of-bounds read
│                       │      │                   during the PCRE2_MATCH_INVALID_UTF matching of an invalid
│                       │      │                   UTF subject. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-89160 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [26]: https://github.com/PCRE2Project/pcre2/releases/tag/pc
│                       │      │                  │       re2-10.48 
│                       │      │                  ├ [27]: https://github.com/PCRE2Project/pcre2/security/adviso
│                       │      │                  │       ries/GHSA-9qww-pwc4-77qq 
│                       │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-89160.html 
│                       │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-81532.html 
│                       │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-89160 
│                       │      │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-89160 
│                       │      ├ PublishedDate   : 2026-09-11T04:18:04.343Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T19:15:29.443Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2026-89161 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89161 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:24a52d8083d5bc6d31ce856445b549a14f4581edb863bcefd17cc
│                       │      │                   2780c4da901 
│                       │      ├ Title           : pcre2: PCRE2: Memory corruption vulnerability in
│                       │      │                   pcre2_jit_match 
│                       │      ├ Description     : In PCRE2 before 10.48, pcre2_jit_match mishandles a
│                       │      │                   previously copied subject being passed in as a context. An
│                       │      │                   incorrect free operation can occur. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-590 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ nvd        : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.8 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:81532 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-89161 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2528993 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2531743 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2531744 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2531745 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2531746 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2531747 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2543797 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2528993 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2531743 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2531744 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2531745 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2531746 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2531747 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2543797 
│                       │      │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-103111 
│                       │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-86145 
│                       │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89156 
│                       │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89157 
│                       │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89158 
│                       │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89160 
│                       │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-89161 
│                       │      │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-81532.html 
│                       │      │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:81532 
│                       │      │                  ├ [26]: https://github.com/PCRE2Project/pcre2/commit/1dcd0cf4
│                       │      │                  │       2a6a7cb62cc9a7c024196733abcfda95%20%28pcre2-10.48-RC1
│                       │      │                  │       %29 
│                       │      │                  ├ [27]: https://github.com/PCRE2Project/pcre2/pull/937 
│                       │      │                  ├ [28]: https://github.com/PCRE2Project/pcre2/releases/tag/pc
│                       │      │                  │       re2-10.48 
│                       │      │                  ├ [29]: https://linux.oracle.com/cve/CVE-2026-89161.html 
│                       │      │                  ├ [30]: https://linux.oracle.com/errata/ELSA-2026-81532.html 
│                       │      │                  ├ [31]: https://nvd.nist.gov/vuln/detail/CVE-2026-89161 
│                       │      │                  ╰ [32]: https://www.cve.org/CVERecord?id=CVE-2026-89161 
│                       │      ├ PublishedDate   : 2026-09-11T04:18:04.47Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T19:10:47.78Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2026-89162 
│                       │      ├ PkgID           : libpcre2-8-0@10.46-1build1 
│                       │      ├ PkgName         : libpcre2-8-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpcre2-8-0@10.46-1build1?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c9d0d8772a6e5e1d 
│                       │      ├ InstalledVersion: 10.46-1build1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89162 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1fe26812669a521918d7233a5a6a0ed908347ab43611fad2b0bda
│                       │      │                   9b0bf363179 
│                       │      ├ Title           : pcre2: PCRE2: Information disclosure via
│                       │      │                   pcre2_serialize_encode 
│                       │      ├ Description     : In PCRE2 before 10.48, pcre2_serialize_encode might disclose
│                       │      │                    two bytes to an adversary, typically in a situation where
│                       │      │                   the access available to the adversary is already unsafe. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-669 
│                       │      ├ VendorSeverity   ╭ nvd   : 1 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 3.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-89162 
│                       │      │                  ├ [1]: https://github.com/PCRE2Project/pcre2/commit/edc111a68
│                       │      │                  │      31591f68b5355a08cc9df8be8f35304%20%28pcre2-10.48-RC1%2
│                       │      │                  │      9 
│                       │      │                  ├ [2]: https://github.com/PCRE2Project/pcre2/releases/tag/pcr
│                       │      │                  │      e2-10.48 
│                       │      │                  ├ [3]: https://github.com/PCRE2Project/pcre2/security/advisor
│                       │      │                  │      ies/GHSA-q7rw-r7qq-2hx6 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-89162 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-89162 
│                       │      ├ PublishedDate   : 2026-09-11T05:16:38.697Z 
│                       │      ╰ LastModifiedDate: 2026-09-16T18:56:28.643Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2026-107161 
│                       │      ├ PkgID           : libsasl2-2@2.1.28+dfsg1-9ubuntu3 
│                       │      ├ PkgName         : libsasl2-2 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsasl2-2@2.1.28%2Bdfsg1-9ubuntu3?arc
│                       │      │                  │       h=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : cb08e08f2a78be69 
│                       │      ├ InstalledVersion: 2.1.28+dfsg1-9ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-107161 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bc7c1e12dd9cca21718f30475dab1c0b8ee02b10bd42d2a8d1cd1
│                       │      │                   11b2f886423 
│                       │      ├ Title           : cyrus-sasl: Heap buffer overflow in cyrus-sasl
│                       │      │                   add_to_challenge() allows malicious server to crash or
│                       │      │                   compromise DIGEST-MD5 clients 
│                       │      ├ Description     : A heap-based buffer overflow flaw was found in Cyrus SASL.
│                       │      │                   The add_to_challenge() function in the DIGEST-MD5 plugin
│                       │      │                   computes the size of the buffer needed for a
│                       │      │                   challenge/response field before DIGEST-MD5 quoting is
│                       │      │                   applied, but does not recompute that size when quoting
│                       │      │                   (escaping special characters) makes the value longer. The
│                       │      │                   under-sized buffer is then passed to strcat(), causing a
│                       │      │                   heap-based out-of-bounds write whose size depends on
│                       │      │                   attacker-controlled input. A malicious or on-path DIGEST-MD5
│                       │      │                    (or HTTP Digest) server can trigger this flaw in a
│                       │      │                   connecting client by supplying a crafted challenge field,
│                       │      │                   such as realm or nonce, most likely resulting in a crash of
│                       │      │                   the client application. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-122 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/10/09/20 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-107161 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2460420 
│                       │      │                  ├ [3]: https://github.com/cyrusimap/cyrus-sasl/pull/892 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-107161 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-107161 
│                       │      ├ PublishedDate   : 2026-10-07T20:17:10.977Z 
│                       │      ╰ LastModifiedDate: 2026-10-10T03:17:05.307Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2026-107161 
│                       │      ├ PkgID           : libsasl2-modules@2.1.28+dfsg1-9ubuntu3 
│                       │      ├ PkgName         : libsasl2-modules 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsasl2-modules@2.1.28%2Bdfsg1-9ubunt
│                       │      │                  │       u3?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c233aa9b84243212 
│                       │      ├ InstalledVersion: 2.1.28+dfsg1-9ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-107161 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ce1bb657bcb7fffc479f6dd93394704152b267848740b3b1c55aa
│                       │      │                   ecaecde4547 
│                       │      ├ Title           : cyrus-sasl: Heap buffer overflow in cyrus-sasl
│                       │      │                   add_to_challenge() allows malicious server to crash or
│                       │      │                   compromise DIGEST-MD5 clients 
│                       │      ├ Description     : A heap-based buffer overflow flaw was found in Cyrus SASL.
│                       │      │                   The add_to_challenge() function in the DIGEST-MD5 plugin
│                       │      │                   computes the size of the buffer needed for a
│                       │      │                   challenge/response field before DIGEST-MD5 quoting is
│                       │      │                   applied, but does not recompute that size when quoting
│                       │      │                   (escaping special characters) makes the value longer. The
│                       │      │                   under-sized buffer is then passed to strcat(), causing a
│                       │      │                   heap-based out-of-bounds write whose size depends on
│                       │      │                   attacker-controlled input. A malicious or on-path DIGEST-MD5
│                       │      │                    (or HTTP Digest) server can trigger this flaw in a
│                       │      │                   connecting client by supplying a crafted challenge field,
│                       │      │                   such as realm or nonce, most likely resulting in a crash of
│                       │      │                   the client application. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-122 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/10/09/20 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-107161 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2460420 
│                       │      │                  ├ [3]: https://github.com/cyrusimap/cyrus-sasl/pull/892 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-107161 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-107161 
│                       │      ├ PublishedDate   : 2026-10-07T20:17:10.977Z 
│                       │      ╰ LastModifiedDate: 2026-10-10T03:17:05.307Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2026-107161 
│                       │      ├ PkgID           : libsasl2-modules-db@2.1.28+dfsg1-9ubuntu3 
│                       │      ├ PkgName         : libsasl2-modules-db 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsasl2-modules-db@2.1.28%2Bdfsg1-9ub
│                       │      │                  │       untu3?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 1e70df2d0651e5a4 
│                       │      ├ InstalledVersion: 2.1.28+dfsg1-9ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-107161 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:82bf4d808aa14b3f782576ab3c3c78efd019bd4def1bdd413bd3d
│                       │      │                   553cef1d49d 
│                       │      ├ Title           : cyrus-sasl: Heap buffer overflow in cyrus-sasl
│                       │      │                   add_to_challenge() allows malicious server to crash or
│                       │      │                   compromise DIGEST-MD5 clients 
│                       │      ├ Description     : A heap-based buffer overflow flaw was found in Cyrus SASL.
│                       │      │                   The add_to_challenge() function in the DIGEST-MD5 plugin
│                       │      │                   computes the size of the buffer needed for a
│                       │      │                   challenge/response field before DIGEST-MD5 quoting is
│                       │      │                   applied, but does not recompute that size when quoting
│                       │      │                   (escaping special characters) makes the value longer. The
│                       │      │                   under-sized buffer is then passed to strcat(), causing a
│                       │      │                   heap-based out-of-bounds write whose size depends on
│                       │      │                   attacker-controlled input. A malicious or on-path DIGEST-MD5
│                       │      │                    (or HTTP Digest) server can trigger this flaw in a
│                       │      │                   connecting client by supplying a crafted challenge field,
│                       │      │                   such as realm or nonce, most likely resulting in a crash of
│                       │      │                   the client application. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-122 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/10/09/20 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-107161 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2460420 
│                       │      │                  ├ [3]: https://github.com/cyrusimap/cyrus-sasl/pull/892 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-107161 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-107161 
│                       │      ├ PublishedDate   : 2026-10-07T20:17:10.977Z 
│                       │      ╰ LastModifiedDate: 2026-10-10T03:17:05.307Z 
│                       ├ [37] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libsystemd0@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libsystemd0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.4?arch=amd6
│                       │      │                  │       4&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e41c7d584057e32 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b2f26f8249b19c13cdc6499e72c044c80a7c04b05ecd0d9456ade
│                       │      │                   2a87c6a4f61 
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
│                       ├ [38] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libudev1@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libudev1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.4?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : db6ded6155f534fe 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4bae8a5ef543ae3a35d9dd28c952c27a6b9f5843fd5c8f3d43e1b
│                       │      │                   7d9b3f12171 
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
│                       ├ [39] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : login.defs 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : eaf648d5e4e975f7 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a526fc53c33e73adaae30cc5542d0444d784f9b70b67da1b37a10
│                       │      │                   d64c832173b 
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
│                       │      │                  ├ [4] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       398330.html 
│                       │      │                  ├ [5] : https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-56433 
│                       │      │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │      │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:20559 
│                       │      │                  ├ [9] : https://github.com/shadow-maint/shadow/blob/e2512d574
│                       │      │                  │       1d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L
│                       │      │                  │       241 
│                       │      │                  ├ [10]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [11]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2026-10-15T01:19:16.297Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 12ffbe3e135ac553 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:672b6b853acc8668faedcdd93399d68d9dfe43a90c25daf8bd4bb
│                       │      │                   0cae6081c5e 
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
│                       │      │                  ├ [4] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       398330.html 
│                       │      │                  ├ [5] : https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-56433 
│                       │      │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │      │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:20559 
│                       │      │                  ├ [9] : https://github.com/shadow-maint/shadow/blob/e2512d574
│                       │      │                  │       1d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L
│                       │      │                  │       241 
│                       │      │                  ├ [10]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [11]: https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2026-10-15T01:19:16.297Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2026-35341 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0a04d50b682bbca15dd2d2a2dd673d2bcfb164e465f05a8db31fb
│                       │      │                   c0c4ae6553e 
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
│                       ├ [42] ╭ VulnerabilityID : CVE-2026-35344 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:21b5951662a83b5050966b48f951b4609ab58cb6e39473e029c09
│                       │      │                   0892fd53bb0 
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
│                       ├ [43] ╭ VulnerabilityID : CVE-2026-35345 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cde743d7a4e22c9e01cb6f9c112de72af97aea9e5bbdeb6c8aac7
│                       │      │                   7c086768eca 
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
│                       ├ [44] ╭ VulnerabilityID : CVE-2026-35348 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ee57abeb63ead60c240969aa2682c55a7ce812444a24da0839cb1
│                       │      │                   517a12f778a 
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
│                       ├ [45] ╭ VulnerabilityID : CVE-2026-35350 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2b61dcaf667df0cf7e8ab177deb2301faa47f25c085347b4fba0e
│                       │      │                   0f7c79cda75 
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
│                       ├ [46] ╭ VulnerabilityID : CVE-2026-35351 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c4494e7a1413882ba68c0ba79e085aec88c5e2b49dff7a42d512c
│                       │      │                   f1e4804d10b 
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
│                       ├ [47] ╭ VulnerabilityID : CVE-2026-35352 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4a26611be8df8bf2830ff6037e8a2d7c7418e83c3113210d57e0b
│                       │      │                   ab6d3cd9407 
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
│                       ├ [48] ╭ VulnerabilityID : CVE-2026-35354 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4c391a706317085424c69eff67e325d4efb6af168f900b7c58e18
│                       │      │                   30e118d2cb7 
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
│                       ├ [49] ╭ VulnerabilityID : CVE-2026-35357 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c25961c86ffe57351ec393130c767be7cbd50f74b9af13c7bec4b
│                       │      │                   2b989cbaf95 
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
│                       ├ [50] ╭ VulnerabilityID : CVE-2026-35359 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a44c98c15900e3eda17a7f16a1049d3e510ee946f67fea6612d85
│                       │      │                   f4899385eb5 
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
│                       ├ [51] ╭ VulnerabilityID : CVE-2026-35360 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0a420cacad923cbfba356d2029143574f05e45643806a8ed4c986
│                       │      │                   f56d9c1bc38 
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
│                       ├ [52] ╭ VulnerabilityID : CVE-2026-35363 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:00f34871211118664cc136b36d07b4133d64e80af65296d47d92a
│                       │      │                   dd99d4b608b 
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
│                       ├ [53] ╭ VulnerabilityID : CVE-2026-35364 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a763c8510418daef3fdabac714751dd2fbca4ee9d080233f4b624
│                       │      │                   0eaa7acf079 
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
│                       ├ [54] ╭ VulnerabilityID : CVE-2026-35367 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e69876bb00a06a9a49efbc5f45c77105c0b7bd34125e9c9ecaae8
│                       │      │                   72b2e519508 
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
│                       ├ [55] ╭ VulnerabilityID : CVE-2026-35368 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8d139f3376f854a49528230463d7d6f6b70ee88c3eac7e60bf648
│                       │      │                   37324ab31e3 
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
│                       ├ [56] ╭ VulnerabilityID : CVE-2026-35370 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e8dcfeeed9964a03e0c2803e0cbde29b3d55bab8ee173e321f506
│                       │      │                   fdec30291c3 
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
│                       ├ [57] ╭ VulnerabilityID : CVE-2026-35371 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:fd74584fbaa4988a435d5053f13e6410ed52fff9bbb7795fe1ace
│                       │      │                   bb0b52beecc 
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
│                       ├ [58] ╭ VulnerabilityID : CVE-2026-35373 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f54a54cd9d775e4ba3d3a20541a35517b2492b93f072a6bea52cc
│                       │      │                   e7b6f154503 
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
│                       ├ [59] ╭ VulnerabilityID : CVE-2026-35374 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b3491e8144f27d501c25bd0e71e5273aa0124a8ad540167c57702
│                       │      │                   a334625ecbb 
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
│                       ├ [60] ╭ VulnerabilityID : CVE-2026-35377 
│                       │      ├ PkgID           : rust-coreutils@0.10.0-1ubuntu2~26.04.1 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.10.0-1ubuntu2~26.04.1
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 6c642eee022d7f9d 
│                       │      ├ InstalledVersion: 0.10.0-1ubuntu2~26.04.1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:508d38b45f8c4848de623c8872e4a6842d047b9e45713d844e406
│                       │      │                   1fd81a29b12 
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
│                       ├ [61] ╭ VulnerabilityID : CVE-2026-18477 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18477 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:885c0646db66a5c08d6fdfe6106ec0f0b8d6ab27b40823956cba5
│                       │      │                   5841c5a413a 
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
│                       ├ [62] ╭ VulnerabilityID : CVE-2026-18508 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                       │      │                  │         195082a8c88cc2e0ab28 
│                       │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                       │      │                            410d826e7d964691b9a6 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18508 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5a5b7a7c3aecd4b19a643998701c349d949ed06ca2b01a7e45ba9
│                       │      │                   7629a0b70cf 
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
│                       ╰ [63] ╭ VulnerabilityID : CVE-2026-85091 
│                              ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ PkgName         : zlib1g 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu3
│                              │                  │       .1?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                              │                  ╰ UID : a4f0bcc5ee12eaad 
│                              ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
│                              │                  │         195082a8c88cc2e0ab28 
│                              │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
│                              │                            410d826e7d964691b9a6 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-85091 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Fingerprint     : sha256:c152e7e720d322b1faedab40c9ccceb8e2fc4861c1ab7a52458b0
│                              │                   6e0d1bd3a9c 
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
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-89407 
│                       │     ├ VendorIDs        ─ [0]: GHSA-p6pp-m3f8-5c89 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-core 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-core-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-core@2.22.2 
│                       │     │                  ╰ UID : c8dddb2c3bfe87b9 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.18.11, 2.21.7, 2.22.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df1
│                       │     │                  │         95082a8c88cc2e0ab28 
│                       │     │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c09874
│                       │     │                            10d826e7d964691b9a6 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89407 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:4ffee573c41591141507acf57b8399150b834720a3fb6c4fd125ce
│                       │     │                   e4294417d9 
│                       │     ├ Title           : com.fasterxml.jackson/jackson-core:
│                       │     │                   tools.jackson.core/jackson-core: Jackson-core: Denial of
│                       │     │                   Service via regular expression backtracking 
│                       │     ├ Description     : NumberInput.looksLikeValidNumber() in FasterXML jackson-core
│                       │     │                   pre-validates "stringified numbers" with two regular
│                       │     │                   expressions: PATTERN_FLOAT
│                       │     │                   ([+-]?[0-9]*[\.]?[0-9]+([eE][+-]?[0-9]+)?), present since
│                       │     │                   2.17.0, and PATTERN_FLOAT_TRAILING_DOT, added in 2.17.2.
│                       │     │                   PATTERN_FLOAT places adjacent quantifiers over the same
│                       │     │                   character class -- an optional [0-9]* run, an optional dot,
│                       │     │                   then a required [0-9]+ run -- so input that ultimately fails
│                       │     │                   to match forces Java's backtracking engine to retry every
│                       │     │                   possible split point of the digit run. 
│                       │     │                   
│                       │     │                   Matching cost therefore grows with the square of the input
│                       │     │                   length. 
│                       │     │                   An attacker who can supply JSON that an application
│                       │     │                   deserializes into a numeric target type reaches this method
│                       │     │                   through jackson-databind's default String-to-number coercion
│                       │     │                   (StdDeserializer and NumberDeserializers for BigDecimal,
│                       │     │                   BigInteger, Double and Float). 
│                       │     │                   Because StreamReadConstraints.maxStringLength defaults to
│                       │     │                   20,000,000 characters, no constraint bounds the input before
│                       │     │                   it reaches the regex. 
│                       │     │                   Testing by the reporter confirmed O(n^2) growth across five
│                       │     │                   consecutive input-size doublings, with a single
│                       │     │                   160,000-character string consuming roughly 74 seconds in one
│                       │     │                   call; a small number of concurrent requests of ordinary body
│                       │     │                   size can therefore exhaust a server's request-handling thread
│                       │     │                    pool. 
│                       │     │                   The affected method does not exist before 2.17.0, so 2.16.x
│                       │     │                   and earlier releases are not affected. 
│                       │     │                   The fix replaces both regular expressions with a hand-rolled
│                       │     │                   single-pass scan. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ╭ [0]: CWE-400 
│                       │     │                  ╰ [1]: CWE-1333 
│                       │     ├ VendorSeverity   ╭ amazon: 3 
│                       │     │                  ├ ghsa  : 3 
│                       │     │                  ╰ redhat: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 5.9 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-89407 
│                       │     │                  ├ [1] : https://advisory.echohq.com/cve/CVE-2026-89407 
│                       │     │                  ├ [2] : https://getsafety.com/vulnerabilities/SFTY-20260922-89
│                       │     │                  │       449/CVE-2026-89407 
│                       │     │                  ├ [3] : https://github.com/FasterXML/jackson-core 
│                       │     │                  ├ [4] : https://github.com/FasterXML/jackson-core/commit/731e7
│                       │     │                  │       94f62623aa0d86ced52490166be903fbb1d 
│                       │     │                  ├ [5] : https://github.com/FasterXML/jackson-core/commit/e7acd
│                       │     │                  │       64cc99bd346704423dc2bfea1ab0a08ddff 
│                       │     │                  ├ [6] : https://github.com/FasterXML/jackson-core/issues/1649 
│                       │     │                  ├ [7] : https://github.com/FasterXML/jackson-core/pull/1650 
│                       │     │                  ├ [8] : https://github.com/FasterXML/jackson-core/pull/1701 
│                       │     │                  ├ [9] : https://github.com/FasterXML/jackson-core/security/adv
│                       │     │                  │       isories/GHSA-p6pp-m3f8-5c89 
│                       │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-89407 
│                       │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-89407 
│                       │     ├ PublishedDate   : 2026-09-22T15:17:21.053Z 
│                       │     ╰ LastModifiedDate: 2026-09-22T20:00:03.713Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2026-89425 
│                       │     ├ VendorIDs        ─ [0]: GHSA-7hhh-6rmp-j9qf 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-core 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-core-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-core@2.22.2 
│                       │     │                  ╰ UID : c8dddb2c3bfe87b9 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.21.7, 2.22.3, 2.18.11 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df1
│                       │     │                  │         95082a8c88cc2e0ab28 
│                       │     │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c09874
│                       │     │                            10d826e7d964691b9a6 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-89425 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:8afcaaf812104de781cbfefd3bd2fe46c7a3b8a4aaa8096201bf4a
│                       │     │                   758f0cc37c 
│                       │     ├ Title           : com.fasterxml.jackson.core/jackson-core: Jackson-core: Denial
│                       │     │                    of Service via unbounded StringBuilder growth during
│                       │     │                   malformed token processing 
│                       │     ├ Description     : UTF8DataInputJsonParser._reportInvalidToken() in FasterXML
│                       │     │                   jackson-core builds the offending-token text for its error
│                       │     │                   message by appending Java identifier characters to a
│                       │     │                   StringBuilder in a loop that has no upper bound. Unlike the
│                       │     │                   three sibling parser implementations, including
│                       │     │                   UTF8StreamJsonParser, it never consults
│                       │     │                   ErrorReportConfiguration.getMaxErrorTokenLength() (default
│                       │     │                   256). A malformed token supplied to a parser created through
│                       │     │                   JsonFactory.createParser(DataInput) is therefore accumulated
│                       │     │                   in full. No StreamReadConstraints setting mitigates this:
│                       │     │                   maxDocumentLength cannot be applied to DataInput sources at
│                       │     │                   all, and maxStringLength does not cover this path because the
│                       │     │                    accumulation bypasses ReadConstrainedTextBuffer. The
│                       │     │                   reporter measured a 20,000,109-character exception message
│                       │     │                   from a 20-million-character malformed token on the DataInput
│                       │     │                   path, against 367 characters for identical input on the
│                       │     │                   InputStream path. Scaling the payload drives the
│                       │     │                   StringBuilder, which also incurs byte-to-char expansion and
│                       │     │                   internal array doubling, to many times the raw payload size
│                       │     │                   and can trigger OutOfMemoryError for the whole JVM.
│                       │     │                   UTF8DataInputJsonParser was introduced in 2.8.0 together with
│                       │     │                    createParser(DataInput); releases before 2.8.0 do not
│                       │     │                   contain the affected class. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ╭ [0]: CWE-400 
│                       │     │                  ╰ [1]: CWE-770 
│                       │     ├ VendorSeverity   ╭ amazon: 3 
│                       │     │                  ├ ghsa  : 3 
│                       │     │                  ╰ redhat: 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-89425 
│                       │     │                  ├ [1]: https://advisory.echohq.com/cve/CVE-2026-89425 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-core 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-core/commit/211cf2
│                       │     │                  │      c5d91abbec38067f37efc1363cd4e88ee3 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-core/pull/1698 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-core/releases/tag/
│                       │     │                  │      jackson-core-2.18.11 
│                       │     │                  ├ [6]: https://github.com/FasterXML/jackson-core/releases/tag/
│                       │     │                  │      jackson-core-3.2.3 
│                       │     │                  ├ [7]: https://github.com/FasterXML/jackson-core/security/advi
│                       │     │                  │      sories/GHSA-7hhh-6rmp-j9qf 
│                       │     │                  ├ [8]: https://nvd.nist.gov/vuln/detail/CVE-2026-89425 
│                       │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-89425 
│                       │     ├ PublishedDate   : 2026-09-23T03:17:04.357Z 
│                       │     ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2026-91776 
│                       │     ├ VendorIDs        ─ [0]: GHSA-wv8q-qhhj-9h54 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/ghcopilot/jackson-databind-2.22.2.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.22.2 
│                       │     │                  ╰ UID : b09f79ee50ae8e1d 
│                       │     ├ InstalledVersion: 2.22.2 
│                       │     ├ FixedVersion    : 2.18.11, 2.21.7, 2.22.3 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df1
│                       │     │                  │         95082a8c88cc2e0ab28 
│                       │     │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c09874
│                       │     │                            10d826e7d964691b9a6 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-91776 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:7b4f9d072195ed390fd3ba106cafc8d6af68878fbf45d1cd51bbd2
│                       │     │                   32e7d8918c 
│                       │     ├ Title           : jackson-databind: com.fasterxml.jackson/jackson-core:
│                       │     │                   jackson-databind: Denial of Service via unbounded cache
│                       │     │                   growth in TypeDeserializerBase 
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
│                       │     ├ VendorSeverity   ╭ ghsa  : 3 
│                       │     │                  ├ redhat: 3 
│                       │     │                  ╰ ubuntu: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 7.5 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 7.5 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-91776 
│                       │     │                  ├ [1] : https://advisory.echohq.com/cve/CVE-2026-91776 
│                       │     │                  ├ [2] : https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [3] : https://github.com/FasterXML/jackson-databind/commit/2
│                       │     │                  │       870d1d6dc1b7e1c07ee11dd5b04ab71cddbb577 
│                       │     │                  ├ [4] : https://github.com/FasterXML/jackson-databind/issues/6
│                       │     │                  │       203 
│                       │     │                  ├ [5] : https://github.com/FasterXML/jackson-databind/pull/6203 
│                       │     │                  ├ [6] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-2.18.11 
│                       │     │                  ├ [7] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-2.21.7 
│                       │     │                  ├ [8] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-2.22.3 
│                       │     │                  ├ [9] : https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-3.1.7 
│                       │     │                  ├ [10]: https://github.com/FasterXML/jackson-databind/releases
│                       │     │                  │       /tag/jackson-databind-3.2.3 
│                       │     │                  ├ [11]: https://github.com/FasterXML/jackson-databind/security
│                       │     │                  │       /advisories/GHSA-wv8q-qhhj-9h54 
│                       │     │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-91776 
│                       │     │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2026-91776 
│                       │     ├ PublishedDate   : 2026-09-23T03:17:04.62Z 
│                       │     ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
│                       ╰ [3] ╭ VulnerabilityID : CVE-2026-91777 
│                             ├ VendorIDs        ─ [0]: GHSA-cxp5-3px4-pw24 
│                             ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                             ├ PkgPath         : openaf/ghcopilot/jackson-databind-2.22.2.jar 
│                             ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                             │                  │       2.22.2 
│                             │                  ╰ UID : b09f79ee50ae8e1d 
│                             ├ InstalledVersion: 2.22.2 
│                             ├ FixedVersion    : 2.21.7, 2.18.11, 2.22.3 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df1
│                             │                  │         95082a8c88cc2e0ab28 
│                             │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c09874
│                             │                            10d826e7d964691b9a6 
│                             ├ SeveritySource  : ghsa 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-91777 
│                             ├ DataSource       ╭ ID  : ghsa 
│                             │                  ├ Name: GitHub Security Advisory Maven 
│                             │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                             │                          osystem%3Amaven 
│                             ├ Fingerprint     : sha256:11bdfa95213d6444fe651f0db245dc465e62ae68205736bc069b41
│                             │                   70a075afef 
│                             ├ Title           : com.fasterxml.jackson.core/jackson-databind:
│                             │                   tools.jackson.core:jackson-databind: Jackson-databind: Denial
│                             │                    of Service via quadratic forward-reference completion 
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
│                             ├ VendorSeverity   ╭ ghsa  : 3 
│                             │                  ├ redhat: 3 
│                             │                  ╰ ubuntu: 2 
│                             ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                             │                  │        │           A:H 
│                             │                  │        ╰ V3Score : 7.5 
│                             │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                             │                           │           A:H 
│                             │                           ╰ V3Score : 7.5 
│                             ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-91777 
│                             │                  ├ [1] : https://advisory.echohq.com/cve/CVE-2026-91777 
│                             │                  ├ [2] : https://github.com/FasterXML/jackson-databind 
│                             │                  ├ [3] : https://github.com/FasterXML/jackson-databind/commit/3
│                             │                  │       7ad9b81712cbb9fb62c2d2c1813593252a24b67 
│                             │                  ├ [4] : https://github.com/FasterXML/jackson-databind/issues/6
│                             │                  │       204 
│                             │                  ├ [5] : https://github.com/FasterXML/jackson-databind/pull/6204 
│                             │                  ├ [6] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.18.11 
│                             │                  ├ [7] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.21.7 
│                             │                  ├ [8] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-2.22.3 
│                             │                  ├ [9] : https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-3.1.7 
│                             │                  ├ [10]: https://github.com/FasterXML/jackson-databind/releases
│                             │                  │       /tag/jackson-databind-3.2.3 
│                             │                  ├ [11]: https://github.com/FasterXML/jackson-databind/security
│                             │                  │       /advisories/GHSA-cxp5-3px4-pw24 
│                             │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-91777 
│                             │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2026-91777 
│                             ├ PublishedDate   : 2026-09-23T03:17:04.783Z 
│                             ╰ LastModifiedDate: 2026-09-24T20:43:32.537Z 
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
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78667 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:4a70e7fea9a6466a04f498a9bb3b135d869858bf39cc4421732be
                        │      │                   5e38c7dbaaf 
                        │      ├ Title           : net/http: golang: golang: Denial of Service via crafted HTTP
                        │      │                    Range headers 
                        │      ├ Description     : When parsing a Range header containing a large number of
                        │      │                   small ranges, FileServer(FS), ServeContent, and
                        │      │                   ServeFile(FS) can consume an excessive amount of CPU. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ redhat: 3 
                        │      │                  ╰ ubuntu: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:H 
                        │      │                           ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-78667 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/81858 
                        │      │                  ├ [2]: https://go.dev/cl/847309 
                        │      │                  ├ [3]: https://go.dev/issue/81858 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-78667 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6609 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-78667 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.88Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.69Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-78669 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6611 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78669 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:3dea8752582223efbda6e86eee1fb18c59cb0e2ede37683a024a7
                        │      │                   5de7216c399 
                        │      ├ Title           : net/http: net/http/internal/http2: golang.org/x/net/http2:
                        │      │                   net/http: Denial of Service via excessive HTTP/2 SETTINGS
                        │      │                   frames 
                        │      ├ Description     : A malicious HTTP/2 peer can cause excessive CPU consumption
                        │      │                   in the client or server by opening a large number of streams
                        │      │                    and then sending many small SETTINGS frames containing
                        │      │                   SETTINGS_INITIAL_WINDOW_SIZE values. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ╭ redhat: 3 
                        │      │                  ╰ ubuntu: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:H 
                        │      │                           ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-78669 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/81742 
                        │      │                  ├ [2] : https://go.dev/cl/847186 
                        │      │                  ├ [3] : https://go.dev/cl/847308 
                        │      │                  ├ [4] : https://go.dev/issue/81742 
                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-78669 
                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2026-6611 
                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2026-78669 
                        │      │                  ╰ [10]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.01Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.857Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-97031 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6607 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97031 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:fc62668fc2f43eb3eac9d491c45e8138307ca189ddfc8e984c234
                        │      │                   cb8afef06ea 
                        │      ├ Title           : crypto/tls: golang: crypto/tls: Denial of Service via
                        │      │                   multiple ECH outer extension references 
                        │      ├ Description     : Multiple ECH outer extension references are not permitted
                        │      │                   under RFC 9849; previously, a client could send a
                        │      │                   well-crafted packet that could trigger memory exhaustion in
                        │      │                   the server process by specifying multiple references. We now
                        │      │                    reject these as malformed and curb the memory amplification
                        │      │                    vector as a result. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-405 
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
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-56866 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6605 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56866 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:ba01f6c333ec78233b5065c77f2078e3a0a94e7bc35724fd4bc1a
                        │      │                   df7d065fe37 
                        │      ├ Title           : net/http: golang: golang: Cross-user response poisoning via
                        │      │                   desynchronized HTTP CONNECT connections 
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
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-444 
                        │      ├ VendorSeverity   ╭ redhat: 2 
                        │      │                  ╰ ubuntu: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56866 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/81740 
                        │      │                  ├ [2]: https://go.dev/cl/847306 
                        │      │                  ├ [3]: https://go.dev/issue/81740 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-56866 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6605 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-56866 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:01.62Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-78659 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6603 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78659 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d250d0ce8f6f22e0a8c50a4dd2c5c6f457169f093b32b0c703ae6
                        │      │                   33b30b631cb 
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
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ─ ubuntu: 2 
                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/81857 
                        │      │                  ├ [1]: https://go.dev/cl/847185 
                        │      │                  ├ [2]: https://go.dev/cl/847314 
                        │      │                  ├ [3]: https://go.dev/issue/81857 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/ZPwCyRUu
                        │      │                  │      GBs 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6603 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-78659 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.27Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2026-78660 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6610 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78660 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:9e1b418b6c95ed54c28c3976fcab70b7df41e9a5b970f05354d39
                        │      │                   2762e47c0b9 
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
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-444 
                        │      ├ VendorSeverity   ─ ubuntu: 2 
                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/81115 
                        │      │                  ├ [1]: https://go.dev/cl/835145 
                        │      │                  ├ [2]: https://go.dev/cl/836385 
                        │      │                  ├ [3]: https://go.dev/issue/81115 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6610 
                        │      │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-78660 
                        │      │                  ╰ [7]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.51Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.243Z 
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-78663 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6612 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78663 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e416d82d56c3aa5e7b6fb629a587a0c8eeaadc0a38e0905f1e991
                        │      │                   a048250a3e1 
                        │      ├ Title           : net/http: net/http/internal/http2: golang:
                        │      │                   golang.org/x/net/http2: golang: flow control limit bypass
                        │      │                   via double refund in HTTP/2 server 
                        │      ├ Description     : The HTTP/2 server can refund connection-level flow control
                        │      │                   twice for the same data: Once when a client resets a stream
                        │      │                   (refunding data for any sent-but-unread portion of the
                        │      │                   stream), and again when a request handler reads the buffered
                        │      │                    data. A malicious client can exploit this to bypass the
                        │      │                   configured connection-level flow control limit
                        │      │                   (MaxReceiveBufferPerConnection). Total buffered data is
                        │      │                   still limited by the concurrent stream limit and
                        │      │                   stream-level flow control. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-675 
                        │      ├ VendorSeverity   ╭ redhat: 2 
                        │      │                  ╰ ubuntu: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:L 
                        │      │                           ╰ V3Score : 5.3 
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-78663 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/81743 
                        │      │                  ├ [2] : https://go.dev/cl/847187 
                        │      │                  ├ [3] : https://go.dev/cl/847310 
                        │      │                  ├ [4] : https://go.dev/issue/81743 
                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-78663 
                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2026-6612 
                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2026-78663 
                        │      │                  ╰ [10]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.647Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.42Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-94439 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6613 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94439 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:13e4a8a9d83459789820ea783ba9db4edb62ae9145d7ecc73e8e2
                        │      │                   37b6a237bf4 
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
                        │      ├ CweIDs           ─ [0]: CWE-444 
                        │      ├ VendorSeverity   ╭ redhat: 2 
                        │      │                  ╰ ubuntu: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-94439 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/81744 
                        │      │                  ├ [2]: https://go.dev/cl/847311 
                        │      │                  ├ [3]: https://go.dev/issue/81744 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-94439 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-6613 
                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-94439 
                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.76Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:50.703Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-94440 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6608 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94440 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:ee8394b72b179853cfa80affd43f9e5562a4ba68142b71ece7572
                        │      │                   41059c465fb 
                        │      ├ Title           : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrar ... 
                        │      ├ Description     : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrarily long line into memory when the remaining
                        │      │                   limit at the start of a part is less than 400 bytes. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ─ ubuntu: 2 
                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/81741 
                        │      │                  ├ [1]: https://go.dev/cl/847307 
                        │      │                  ├ [2]: https://go.dev/issue/81741 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-6608 
                        │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-94440 
                        │      │                  ╰ [6]: https://www.openwall.com/lists/oss-security/2026/10/08/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.917Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:50.907Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-94448 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6599 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94448 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e4571ba466224a0eb133e27ffa6e06cc8f8e2148d8826f3bebf01
                        │      │                   a1e71501221 
                        │      ├ Title           : html/template: golang: golang: cross-site scripting via
                        │      │                   consecutive expressions in JavaScript template literals 
                        │      ├ Description     : When a JavaScript template literal contains consecutive
                        │      │                   expressions, the context tracking state was not properly
                        │      │                   reset upon entering a new expression. We now ensure that
                        │      │                   template-literal expression entries correctly reset context
                        │      │                   variables so all subsequent regular expression literals are
                        │      │                   accurately recognized and escaped. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ─ redhat: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-94448 
                        │      │                  ├ [1]: https://go.dev/cl/839866 
                        │      │                  ├ [2]: https://go.dev/issue/81821 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-94448 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6599 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-94448 
                        │      ├ PublishedDate   : 2026-10-08T23:17:05.3Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.327Z 
                        ├ [10] ╭ VulnerabilityID : CVE-2026-97032 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6617 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97032 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:5227995c1865529ca688859d080cb4b0322aba67c327334a0b4df
                        │      │                   2d4f72ebb17 
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
                        │      ├ CweIDs           ─ [0]: CWE-362 
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
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.967Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-56857 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6604 
                        │      ├ PkgID           : stdlib@v1.26.7 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                        │      │                  ╰ UID : 69015e289f0fffad 
                        │      ├ InstalledVersion: v1.26.7 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                        │      │                  │         195082a8c88cc2e0ab28 
                        │      │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                        │      │                            410d826e7d964691b9a6 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56857 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:c3b7a0a1b3b4a9acb2e7e9910f382f13da534bb083d27b2833bb9
                        │      │                   80f76294c86 
                        │      ├ Title           : os: golang: golang: Directory traversal via Windows junction
                        │      │                    handling 
                        │      ├ Description     : On Windows, when the target of Root.Mkdir or Root.MkdirAll
                        │      │                   is a junction pointing to an empty location, the operation
                        │      │                   can create a directory at the junction target even when that
                        │      │                    target is located outside the root. This only applies to
                        │      │                   operations where the last path component is a junction
                        │      │                   (path/to/junction, but not path/junction/target). 
                        │      ├ Severity        : LOW 
                        │      ├ CweIDs           ─ [0]: CWE-1386 
                        │      ├ VendorSeverity   ─ redhat: 1 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 3.3 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56857 
                        │      │                  ├ [1]: https://go.dev/cl/847305 
                        │      │                  ├ [2]: https://go.dev/issue/81739 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                        │      │                  │      znI 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-56857 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6604 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-56857 
                        │      ├ PublishedDate   : 2026-10-08T23:17:01.487Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ╰ [12] ╭ VulnerabilityID : CVE-2026-97030 
                               ├ VendorIDs        ─ [0]: GO-2026-6600 
                               ├ PkgID           : stdlib@v1.26.7 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.7 
                               │                  ╰ UID : 69015e289f0fffad 
                               ├ InstalledVersion: v1.26.7 
                               ├ FixedVersion    : 1.26.9, 1.27.2 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:a14e562a337e7621b29e09992ebd9d4394ef8077c8df
                               │                  │         195082a8c88cc2e0ab28 
                               │                  ╰ DiffID: sha256:ac45b803eb53a4b10797514ea0b3237a7637d50c0987
                               │                            410d826e7d964691b9a6 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97030 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:9a601d4d50e156cb869fc235cb99caf94601446f0a0f7356cd256
                               │                   245b01229ee 
                               ├ Title           : A trusted template author may have previously written a
                               │                   valid template ... 
                               ├ Description     : A trusted template author may have previously written a
                               │                   valid template wherein the use of the 'yield' keyword would
                               │                   not be correctly escaped. We now ensure that valid keyword
                               │                   uses are escaped and non-keyword uses are not escaped. 
                               ├ Severity        : UNKNOWN 
                               ├ CweIDs           ─ [0]: CWE-79 
                               ├ References       ╭ [0]: https://go.dev/cl/840925 
                               │                  ├ [1]: https://go.dev/issue/81823 
                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                               │                  │      znI 
                               │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-6600 
                               ├ PublishedDate   : 2026-10-08T23:17:05.91Z 
                               ╰ LastModifiedDate: 2026-10-15T16:18:24.817Z 
```
