```yaml
╭ [0] ╭ Target         : nmaguiar/mini-a-ghc:build (ubuntu 26.04) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │      ├ PkgName         : bsdutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 35a8976635e225e2 
│                       │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2af481f1e89a577e98d8e298385b52bd5d468bcecc862030107d1
│                       │      │                   9742f2fa47b 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │      ├ PkgName         : bsdutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 35a8976635e225e2 
│                       │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7cb2d373320d99ed34a0658181b3a8f655ab52c406390f2693a3f
│                       │      │                   c0952830447 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:964be8d9630138f4c67c38235b12c127edcf85c74ba625844b168
│                       │      │                   9eb36bdf6f0 
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
│                       ├ [3]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3fed756f42dfde9ee027e39eb5109908fe35d4b6d9aa6017514bf
│                       │      │                   475d032a696 
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
│                       ├ [4]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cf54fed64ad249baccb3f4bde56720da9a3087f77e560290845bd
│                       │      │                   9116aaaba86 
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
│                       ├ [5]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b7877b7651492cb64a8e00d90d812770b473f3d347863bba6aeb4
│                       │      │                   890d791d60d 
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
│                       ├ [6]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3d0e109623d0826a01d6b0dc2f02a77f33f6622e1cc4fef442fcc
│                       │      │                   5561e14f652 
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
│                       ├ [7]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libblkid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : f63a0a78e3cac3a3 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:44352002baac075896a05cbb703dcf3ff47020327ee5d2bdcd70f
│                       │      │                   29efe0420d0 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libblkid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : f63a0a78e3cac3a3 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:70bf9bd42c2da20fcef92963c9cda30f7d42a9c5f087716a2bbae
│                       │      │                   176f995040e 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1b4e5675d08a2eff3e842953f680f9606cdb921ceb95890e750a3
│                       │      │                   be03e5bfcc7 
│                       │      ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                       │      │                   specific character sets 
│                       │      ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                       │      │                   earlier may crash due to an assertion failure when
│                       │      │                   converting inputs from the IBM1390 or IBM1399 character
│                       │      │                   sets, which may be used to remotely crash an application.
│                       │      │                   
│                       │      │                   This vulnerability can be trivially mitigated by removing
│                       │      │                   the IBM1390 and IBM1399 character sets from systems that do
│                       │      │                   not need them. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-617 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │      │                  ├ [6] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4046 
│                       │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:20594 
│                       │      │                  ├ [10]: https://inbox.sourceware.org/libc-announce/76814edf-c
│                       │      │                  │       f7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │      │                  ├ [14]: https://packages.fedoraproject.org/pkgs/glibc/glibc-g
│                       │      │                  │       conv-extra/ 
│                       │      │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │      │                  ├ [16]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0007 
│                       │      │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:57.707Z 
│                       ├ [10] ╭ VulnerabilityID : CVE-2026-5435 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:65b8687fc5679e5e353f5e49ba9c61eb52a8f41ebf2c73a4dc632
│                       │      │                   3e1b9f57012 
│                       │      ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                       │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail to
│                       │      │                    enforce the caller-supplied buffer length, and can result
│                       │      │                   in an out-of-bounds write when printing TSIG records. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5435 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │      │                  │       194.git.fweimer@redhat.com/ 
│                       │      │                  ├ [15]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │      │                  │       76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-5435.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                       │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                       │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0011 
│                       │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                       │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.36Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2026-5450 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5450 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c607cb00b60ef463d584c3aa01cdbef6364b0ec0a0bd381a7f582
│                       │      │                   bf1c8ff2370 
│                       │      ├ Title           : glibc: glibc: Heap Buffer Overflow in `scanf` with `%mc`
│                       │      │                   format specifier and large width 
│                       │      ├ Description     : Calling the scanf family of functions with a %mc (malloc'd
│                       │      │                   character match) in the GNU C Library version 2.7 to version
│                       │      │                    2.43 with a format width specifier with an explicit width
│                       │      │                   greater than 1024 could result in a one byte heap buffer
│                       │      │                   overflow. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-122 
│                       │      │                  ╰ [1]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 4 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:L
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:33226 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5450 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459853 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2459853 
│                       │      │                  ├ [4] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5450 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-33226.html 
│                       │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:33092 
│                       │      │                  ├ [8] : https://inbox.sourceware.org/libc-announce/b11f0003-6
│                       │      │                  │       ec1-4bd6-b9de-9e38a4efeca3@redhat.com/T/#u 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2026-5450.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2026-50370.html 
│                       │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2026-5450 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-5450#range-
│                       │      │                  │       21286997 
│                       │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=CVE-2
│                       │      │                  │       026-5450 
│                       │      │                  ├ [14]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0009 
│                       │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2026-5450 
│                       │      ├ PublishedDate   : 2026-04-20T21:16:36.85Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.52Z 
│                       ├ [12] ╭ VulnerabilityID : CVE-2026-5928 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5928 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8651f6d19604b2e10a82c71adb85da6319830fab03604f6ff1652
│                       │      │                   0dd88d39040 
│                       │      ├ Title           : glibc: glibc: Information disclosure or denial of service
│                       │      │                   via ungetwc function with specific wide character
│                       │      │                   encodings 
│                       │      ├ Description     : Calling the ungetwc function on a FILE stream with wide
│                       │      │                   characters encoded in a character set that has overlaps
│                       │      │                   between its single byte and multi-byte character encodings,
│                       │      │                   in the GNU C Library version 2.43 or earlier, may result in
│                       │      │                   an attempt to read bytes before an allocated buffer,
│                       │      │                   potentially resulting in unintentional disclosure of
│                       │      │                   neighboring data in the heap, or a program crash.
│                       │      │                   
│                       │      │                   A bug in the wide character pushback implementation
│                       │      │                   (_IO_wdefault_pbackfail in libio/wgenops.c) causes ungetwc()
│                       │      │                    to operate on the regular character buffer
│                       │      │                   (fp->_IO_read_ptr) instead of the actual wide-stream read
│                       │      │                   pointer (fp->_wide_data->_IO_read_ptr). The program crash
│                       │      │                   may happen in cases where fp->_IO_read_ptr is not
│                       │      │                   initialized and hence points to NULL. The buffer under-read
│                       │      │                   requires a special situation where the input character
│                       │      │                   encoding is such that there are overlaps between single byte
│                       │      │                    representations and multibyte representations in that
│                       │      │                   encoding, resulting in spurious matches. The spurious match
│                       │      │                   case is not possible in the standard Unicode character
│                       │      │                   sets. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-127 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5928 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-5928.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-5928 
│                       │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=33998 
│                       │      │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0010 
│                       │      │                  ├ [19]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-5928 
│                       │      ├ PublishedDate   : 2026-04-20T21:16:36.963Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.69Z 
│                       ├ [13] ╭ VulnerabilityID : CVE-2026-6238 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:14a91b149474111811d7ed92730eb28d151d3961077d5cf079d80
│                       │      │                   997d00242e1 
│                       │      ├ Title           : glibc: glibc: Application crash or uninitialized memory read
│                       │      │                    via crafted DNS response 
│                       │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │      │                   fp_nquery in the GNU C Library version 2.0.1 to version 2.43
│                       │      │                    fail to validate the RDATA content against the RDATA length
│                       │      │                    in a DNS response when processing A6, CERT, LOC, TKEY or
│                       │      │                   TSIG records, which may allow an attacker to craft a DNS
│                       │      │                   response, causing a target application to crash or read
│                       │      │                   uninitialized memory.
│                       │      │                   
│                       │      │                   These functions are for application debugging only and hence
│                       │      │                    not in the path of code executed by the DNS resolver. 
│                       │      │                   Further, they have been deprecated since version 2.34 and
│                       │      │                   should not be used by any new applications.  Applications
│                       │      │                   should consider porting away from these interfaces since
│                       │      │                   they may be removed in future versions. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-126 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6238 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │      │                  │       194.git.fweimer@redhat.com/ 
│                       │      │                  ├ [15]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │      │                  │       76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-6238.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                       │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                       │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0012 
│                       │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                       │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:09.2Z 
│                       ├ [14] ╭ VulnerabilityID : CVE-2026-4046 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:36bb9f46e4de52339944e852defd84905c9bc92db9abb748c7013
│                       │      │                   f85582f26b3 
│                       │      ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                       │      │                   specific character sets 
│                       │      ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                       │      │                   earlier may crash due to an assertion failure when
│                       │      │                   converting inputs from the IBM1390 or IBM1399 character
│                       │      │                   sets, which may be used to remotely crash an application.
│                       │      │                   
│                       │      │                   This vulnerability can be trivially mitigated by removing
│                       │      │                   the IBM1390 and IBM1399 character sets from systems that do
│                       │      │                   not need them. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-617 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │      │                  ├ [6] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4046 
│                       │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:20594 
│                       │      │                  ├ [10]: https://inbox.sourceware.org/libc-announce/76814edf-c
│                       │      │                  │       f7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │      │                  ├ [14]: https://packages.fedoraproject.org/pkgs/glibc/glibc-g
│                       │      │                  │       conv-extra/ 
│                       │      │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │      │                  ├ [16]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0007 
│                       │      │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:57.707Z 
│                       ├ [15] ╭ VulnerabilityID : CVE-2026-5435 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:fddbcb3b73fb634807d7988e0a8b02630e054628c8b751bd31c7b
│                       │      │                   909c8ed080b 
│                       │      ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                       │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail to
│                       │      │                    enforce the caller-supplied buffer length, and can result
│                       │      │                   in an out-of-bounds write when printing TSIG records. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5435 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │      │                  │       194.git.fweimer@redhat.com/ 
│                       │      │                  ├ [15]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │      │                  │       76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-5435.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                       │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                       │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0011 
│                       │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                       │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.36Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2026-5450 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5450 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4a4e8e3a9eebf98c5fe076d7715c64aaad4e2dc8dc62799f1d8e6
│                       │      │                   cd6a7559e58 
│                       │      ├ Title           : glibc: glibc: Heap Buffer Overflow in `scanf` with `%mc`
│                       │      │                   format specifier and large width 
│                       │      ├ Description     : Calling the scanf family of functions with a %mc (malloc'd
│                       │      │                   character match) in the GNU C Library version 2.7 to version
│                       │      │                    2.43 with a format width specifier with an explicit width
│                       │      │                   greater than 1024 could result in a one byte heap buffer
│                       │      │                   overflow. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-122 
│                       │      │                  ╰ [1]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 4 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:L
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:33226 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5450 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459853 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2459853 
│                       │      │                  ├ [4] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5450 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-33226.html 
│                       │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:33092 
│                       │      │                  ├ [8] : https://inbox.sourceware.org/libc-announce/b11f0003-6
│                       │      │                  │       ec1-4bd6-b9de-9e38a4efeca3@redhat.com/T/#u 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2026-5450.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2026-50370.html 
│                       │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2026-5450 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-5450#range-
│                       │      │                  │       21286997 
│                       │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=CVE-2
│                       │      │                  │       026-5450 
│                       │      │                  ├ [14]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0009 
│                       │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2026-5450 
│                       │      ├ PublishedDate   : 2026-04-20T21:16:36.85Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.52Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2026-5928 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5928 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:32b2fdaee44f6f9e1b95bb8499112589fbbc6a8b6755a21c3e05d
│                       │      │                   9bf17c8c74a 
│                       │      ├ Title           : glibc: glibc: Information disclosure or denial of service
│                       │      │                   via ungetwc function with specific wide character
│                       │      │                   encodings 
│                       │      ├ Description     : Calling the ungetwc function on a FILE stream with wide
│                       │      │                   characters encoded in a character set that has overlaps
│                       │      │                   between its single byte and multi-byte character encodings,
│                       │      │                   in the GNU C Library version 2.43 or earlier, may result in
│                       │      │                   an attempt to read bytes before an allocated buffer,
│                       │      │                   potentially resulting in unintentional disclosure of
│                       │      │                   neighboring data in the heap, or a program crash.
│                       │      │                   
│                       │      │                   A bug in the wide character pushback implementation
│                       │      │                   (_IO_wdefault_pbackfail in libio/wgenops.c) causes ungetwc()
│                       │      │                    to operate on the regular character buffer
│                       │      │                   (fp->_IO_read_ptr) instead of the actual wide-stream read
│                       │      │                   pointer (fp->_wide_data->_IO_read_ptr). The program crash
│                       │      │                   may happen in cases where fp->_IO_read_ptr is not
│                       │      │                   initialized and hence points to NULL. The buffer under-read
│                       │      │                   requires a special situation where the input character
│                       │      │                   encoding is such that there are overlaps between single byte
│                       │      │                    representations and multibyte representations in that
│                       │      │                   encoding, resulting in spurious matches. The spurious match
│                       │      │                   case is not possible in the standard Unicode character
│                       │      │                   sets. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-127 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5928 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-5928.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-5928 
│                       │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=33998 
│                       │      │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0010 
│                       │      │                  ├ [19]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-5928 
│                       │      ├ PublishedDate   : 2026-04-20T21:16:36.963Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.69Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2026-6238 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d0ec01cadf506495965c7b597bb19dd866121301db1de7c30fd38
│                       │      │                   c5897f71629 
│                       │      ├ Title           : glibc: glibc: Application crash or uninitialized memory read
│                       │      │                    via crafted DNS response 
│                       │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │      │                   fp_nquery in the GNU C Library version 2.0.1 to version 2.43
│                       │      │                    fail to validate the RDATA content against the RDATA length
│                       │      │                    in a DNS response when processing A6, CERT, LOC, TKEY or
│                       │      │                   TSIG records, which may allow an attacker to craft a DNS
│                       │      │                   response, causing a target application to crash or read
│                       │      │                   uninitialized memory.
│                       │      │                   
│                       │      │                   These functions are for application debugging only and hence
│                       │      │                    not in the path of code executed by the DNS resolver. 
│                       │      │                   Further, they have been deprecated since version 2.34 and
│                       │      │                   should not be used by any new applications.  Applications
│                       │      │                   should consider porting away from these interfaces since
│                       │      │                   they may be removed in future versions. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-126 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6238 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │      │                  │       194.git.fweimer@redhat.com/ 
│                       │      │                  ├ [15]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │      │                  │       76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-6238.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                       │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                       │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0012 
│                       │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                       │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:09.2Z 
│                       ├ [19] ╭ VulnerabilityID : CVE-2026-4046 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:da87e6e0cc04f391d95d5e7b78159616f9c61f3c8cf588abd7107
│                       │      │                   c6a04925564 
│                       │      ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                       │      │                   specific character sets 
│                       │      ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                       │      │                   earlier may crash due to an assertion failure when
│                       │      │                   converting inputs from the IBM1390 or IBM1399 character
│                       │      │                   sets, which may be used to remotely crash an application.
│                       │      │                   
│                       │      │                   This vulnerability can be trivially mitigated by removing
│                       │      │                   the IBM1390 and IBM1399 character sets from systems that do
│                       │      │                   not need them. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-617 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 3 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │      │                  ├ [6] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4046 
│                       │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                       │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:20594 
│                       │      │                  ├ [10]: https://inbox.sourceware.org/libc-announce/76814edf-c
│                       │      │                  │       f7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                       │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                       │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │      │                  ├ [14]: https://packages.fedoraproject.org/pkgs/glibc/glibc-g
│                       │      │                  │       conv-extra/ 
│                       │      │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │      │                  ├ [16]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0007 
│                       │      │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:57.707Z 
│                       ├ [20] ╭ VulnerabilityID : CVE-2026-5435 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9e02d16fd3d04114b3ef685f47cb676b4ee485983fa2228d98284
│                       │      │                   337abbc76a2 
│                       │      ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                       │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail to
│                       │      │                    enforce the caller-supplied buffer length, and can result
│                       │      │                   in an out-of-bounds write when printing TSIG records. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5435 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │      │                  │       194.git.fweimer@redhat.com/ 
│                       │      │                  ├ [15]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │      │                  │       76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-5435.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                       │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                       │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0011 
│                       │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                       │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.36Z 
│                       ├ [21] ╭ VulnerabilityID : CVE-2026-5450 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5450 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:63ed3b300eb42125924498cf95ecefcc60fd810f194d5e518909b
│                       │      │                   d5a781b9537 
│                       │      ├ Title           : glibc: glibc: Heap Buffer Overflow in `scanf` with `%mc`
│                       │      │                   format specifier and large width 
│                       │      ├ Description     : Calling the scanf family of functions with a %mc (malloc'd
│                       │      │                   character match) in the GNU C Library version 2.7 to version
│                       │      │                    2.43 with a format width specifier with an explicit width
│                       │      │                   greater than 1024 could result in a one byte heap buffer
│                       │      │                   overflow. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-122 
│                       │      │                  ╰ [1]: CWE-787 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 4 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:L
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:33226 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5450 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459853 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2459853 
│                       │      │                  ├ [4] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5450 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-33226.html 
│                       │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:33092 
│                       │      │                  ├ [8] : https://inbox.sourceware.org/libc-announce/b11f0003-6
│                       │      │                  │       ec1-4bd6-b9de-9e38a4efeca3@redhat.com/T/#u 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2026-5450.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2026-50370.html 
│                       │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2026-5450 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-5450#range-
│                       │      │                  │       21286997 
│                       │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=CVE-2
│                       │      │                  │       026-5450 
│                       │      │                  ├ [14]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0009 
│                       │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2026-5450 
│                       │      ├ PublishedDate   : 2026-04-20T21:16:36.85Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.52Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2026-5928 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5928 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3db964ce775b1399e5a5f3b29d5b4d891bca12fa3888175fd1f9c
│                       │      │                   516e66f8c23 
│                       │      ├ Title           : glibc: glibc: Information disclosure or denial of service
│                       │      │                   via ungetwc function with specific wide character
│                       │      │                   encodings 
│                       │      ├ Description     : Calling the ungetwc function on a FILE stream with wide
│                       │      │                   characters encoded in a character set that has overlaps
│                       │      │                   between its single byte and multi-byte character encodings,
│                       │      │                   in the GNU C Library version 2.43 or earlier, may result in
│                       │      │                   an attempt to read bytes before an allocated buffer,
│                       │      │                   potentially resulting in unintentional disclosure of
│                       │      │                   neighboring data in the heap, or a program crash.
│                       │      │                   
│                       │      │                   A bug in the wide character pushback implementation
│                       │      │                   (_IO_wdefault_pbackfail in libio/wgenops.c) causes ungetwc()
│                       │      │                    to operate on the regular character buffer
│                       │      │                   (fp->_IO_read_ptr) instead of the actual wide-stream read
│                       │      │                   pointer (fp->_wide_data->_IO_read_ptr). The program crash
│                       │      │                   may happen in cases where fp->_IO_read_ptr is not
│                       │      │                   initialized and hence points to NULL. The buffer under-read
│                       │      │                   requires a special situation where the input character
│                       │      │                   encoding is such that there are overlaps between single byte
│                       │      │                    representations and multibyte representations in that
│                       │      │                   encoding, resulting in spurious matches. The spurious match
│                       │      │                   case is not possible in the standard Unicode character
│                       │      │                   sets. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-127 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-5928 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-5928.html 
│                       │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-5928 
│                       │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=33998 
│                       │      │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0010 
│                       │      │                  ├ [19]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-5928 
│                       │      ├ PublishedDate   : 2026-04-20T21:16:36.963Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:01.69Z 
│                       ├ [23] ╭ VulnerabilityID : CVE-2026-6238 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ FixedVersion    : 2.43-2ubuntu2.3 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8f9794bb140d2e9b9576babc8766a85eaa15ed69e4b6f73179adf
│                       │      │                   923f01ee67c 
│                       │      ├ Title           : glibc: glibc: Application crash or uninitialized memory read
│                       │      │                    via crafted DNS response 
│                       │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │      │                   fp_nquery in the GNU C Library version 2.0.1 to version 2.43
│                       │      │                    fail to validate the RDATA content against the RDATA length
│                       │      │                    in a DNS response when processing A6, CERT, LOC, TKEY or
│                       │      │                   TSIG records, which may allow an attacker to craft a DNS
│                       │      │                   response, causing a target application to crash or read
│                       │      │                   uninitialized memory.
│                       │      │                   
│                       │      │                   These functions are for application debugging only and hence
│                       │      │                    not in the path of code executed by the DNS resolver. 
│                       │      │                   Further, they have been deprecated since version 2.34 and
│                       │      │                   should not be used by any new applications.  Applications
│                       │      │                   should consider porting away from these interfaces since
│                       │      │                   they may be removed in future versions. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-126 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:42952 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6238 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2459854 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2463465 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2463539 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2459854 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2463465 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2463539 
│                       │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5435 
│                       │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5928 
│                       │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6238 
│                       │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-42952.html 
│                       │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:42694 
│                       │      │                  ├ [14]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │      │                  │       194.git.fweimer@redhat.com/ 
│                       │      │                  ├ [15]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │      │                  │       76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-6238.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-42952.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                       │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                       │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │      │                  │       f=advisories/GLIBC-SA-2026-0012 
│                       │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8611-1 
│                       │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                       │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:19:09.2Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2025-66382 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f967568d25eafe45ce4b32f1457dbb38da76994969b0732cc96a6
│                       │      │                   0ea3394d2af 
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
│                       ├ [25] ╭ VulnerabilityID : CVE-2024-2236 
│                       │      ├ PkgID           : libgcrypt20@1.12.0-2ubuntu1 
│                       │      ├ PkgName         : libgcrypt20 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu1?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : c975856993003ac6 
│                       │      ├ InstalledVersion: 1.12.0-2ubuntu1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d164f2c673d2f0fd7b81ac2a147f444537f7f523be7830c225174
│                       │      │                   e0857bd7627 
│                       │      ├ Title           : libgcrypt: vulnerable to Marvin Attack 
│                       │      ├ Description     : A timing-based side-channel flaw was found in libgcrypt's
│                       │      │                   RSA implementation. This issue may allow a remote attacker
│                       │      │                   to initiate a Bleichenbacher-style attack, which can lead to
│                       │      │                    the decryption of RSA ciphertexts. 
│                       │      ├ Severity        : LOW 
│                       │      ├ CweIDs           ─ [0]: CWE-385 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 1 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9404 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3530 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3534 
│                       │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-2236 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2245218 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2245218 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2268268 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-2236 
│                       │      │                  ├ [8] : https://dev.gnupg.org/T7136 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:9404 
│                       │      │                  ├ [11]: https://github.com/tomato42/marvin-toolkit/tree/maste
│                       │      │                  │       r/example/libgcrypt 
│                       │      │                  ├ [12]: https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt-
│                       │      │                  │       mirror/-/merge_requests/17 
│                       │      │                  ├ [13]: https://linux.oracle.com/cve/CVE-2024-2236.html 
│                       │      │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                       │      │                  ├ [15]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024-M
│                       │      │                  │       arch/005607.html 
│                       │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                       │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                       │      ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T07:24:06.083Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : c49d39658a19eb59 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:19313d5ccb495476d8712efcf79ec484e76a2e65a7c9c8dd103d3
│                       │      │                   0ce4052898b 
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
│                       ├ [27] ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : c49d39658a19eb59 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:51faf6f80e4543303f57b7688e6f56445d11696a5e269047edc2a
│                       │      │                   e65277f23aa 
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
│                       ├ [28] ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : c49d39658a19eb59 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1ccca9ab9018e8b86551f416028e4434c765ccbf1e593437b62e4
│                       │      │                   1723d424796 
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
│                       ├ [29] ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : c49d39658a19eb59 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ca7ee7981cfd6117e24a4737965d714e152c6b267621db4f5e645
│                       │      │                   0b2fd8b5e1d 
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
│                       ├ [30] ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : c49d39658a19eb59 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dcd3d5d9f02f7cdbc3ea7ad59b1eaf17faa00a7d62ebcba8269b3
│                       │      │                   322c34a5dc9 
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
│                       ├ [31] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libmount1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : ee0638a59a092c7e 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a47517b4bff5a4557b1bbc8567f3bdc285edab43143dac8499093
│                       │      │                   95d2c0fff13 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libmount1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : ee0638a59a092c7e 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c6462d862e51966347165514395f1f036d897349860165421fc2b
│                       │      │                   89d2f2f3af4 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2026-13757 
│                       │      ├ PkgID           : libp11-kit0@0.26.2-2 
│                       │      ├ PkgName         : libp11-kit0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distro
│                       │      │                  │       =ubuntu-26.04 
│                       │      │                  ╰ UID : f30da36e7f9e8d5a 
│                       │      ├ InstalledVersion: 0.26.2-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2cebc3a2170dfb0d8e1fda696ec5342b37eea901d3176818861a6
│                       │      │                   4f1c9d9c2a6 
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
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37469 
│                       │      │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:38342 
│                       │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-13757 
│                       │      │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                       │      │                  ├ [4]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                       │      ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                       │      ╰ LastModifiedDate: 2026-07-13T06:16:24.863Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libsmartcols1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : ff5e7b67d2385233 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:32ed180f25c4d559e78e89c7a2cbff87e734e003c5afaba535711
│                       │      │                   4920628c198 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libsmartcols1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : ff5e7b67d2385233 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f927e7263e225b27b58c5a3485d3f5d48573a5dd04afc3ff1a3c6
│                       │      │                   760d6872123 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                       │      ├ PkgName         : libsystemd0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 68ed9dc5cf416dae 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1b9d8e798fbb44fe52f0d946cfdce8aab951a675fcee6b10f419b
│                       │      │                   a6c25d0314c 
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
│                       ├ [37] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libudev1@259.5-0ubuntu3 
│                       │      ├ PkgName         : libudev1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&dis
│                       │      │                  │       tro=ubuntu-26.04 
│                       │      │                  ╰ UID : 419f3d2219f938db 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a7fae3904d890d086b287e5b25e0c22f9391029b9130c1a52735f
│                       │      │                   479aad0846e 
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
│                       ├ [38] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libuuid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 41d4afb2fde363cf 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f5e8f03b6af9f358047fbfc0547c05afd18db30eeadf4d47fcf93
│                       │      │                   f488997896a 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libuuid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 41d4afb2fde363cf 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2d22e0303adc0276949c88d784ef66af50236820d48a90c978600
│                       │      │                   e218c5764bc 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ PkgName         : login 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 9abf213fead1984d 
│                       │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:59ccd7a124bb373c334623829ae439527837b5527bc4ce1c7c700
│                       │      │                   6a950d3fdfa 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ PkgName         : login 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 9abf213fead1984d 
│                       │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4a572c7d43b56fe491bdc024ef50a42c3ddecc63385ea31ffff4a
│                       │      │                   0b211519373 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : login.defs 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : eaf648d5e4e975f7 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b27ff68d9ae970bc5bd38cad710ec48088e60acc923a2966cf219
│                       │      │                   b7d3ff295e1 
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
│                       │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-56433 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20145 
│                       │      │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d574
│                       │      │                  │       1d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L
│                       │      │                  │       241 
│                       │      │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : mount 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:926432e69963229f44a2ed3bc78475ab62806c66d7356f8bb26a4
│                       │      │                   114692155fa 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [44] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : mount 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:97ab248e1ed3990b647c2b2ea5a15cb0fc7e20adc3bcd822494b6
│                       │      │                   9e5d3428a07 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ├ [45] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 897a503b346d3bbf 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a4021234bddeb24c8787021293d29b2135d5a630b20d79e4e3a79
│                       │      │                   78ac741a6da 
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
│                       │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       24-56433 
│                       │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20145 
│                       │      │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d574
│                       │      │                  │       1d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238-L
│                       │      │                  │       241 
│                       │      │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                       │      │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/4.4 
│                       │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [46] ╭ VulnerabilityID : CVE-2026-35341 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b7a8e56f1ef0b07a800562b11f8d37eb768231c1bef0d771c41af
│                       │      │                   21d6eaa8db6 
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
│                       ├ [47] ╭ VulnerabilityID : CVE-2026-35344 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e6199004e2adecc531be1473a1c49c37a2ce5e31efb423e66b479
│                       │      │                   bd3ff70aef0 
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
│                       ├ [48] ╭ VulnerabilityID : CVE-2026-35345 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:27131f121f247127051e2073d83f69ec72eb61f05f7cb3a5e97cf
│                       │      │                   a004e74a29a 
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
│                       ├ [49] ╭ VulnerabilityID : CVE-2026-35348 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:daaed15d824a92ec942f5617fefdfb42d7002f563ccede4910fcc
│                       │      │                   3d8c8cf22a3 
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
│                       ├ [50] ╭ VulnerabilityID : CVE-2026-35350 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7342fe58f6df4ed708b7028a01266fb0511149eb42d7bdaabc165
│                       │      │                   1476b755ffc 
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
│                       ├ [51] ╭ VulnerabilityID : CVE-2026-35351 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9b790fdd47e5c0364685ad7744b23431ffe5b7210230d6c8ec801
│                       │      │                   b21d7c7076b 
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
│                       ├ [52] ╭ VulnerabilityID : CVE-2026-35352 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c158c30a33214b83e171547210c3edf21d4fb58e5bebe87ea3459
│                       │      │                   f6d0d80b710 
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
│                       ├ [53] ╭ VulnerabilityID : CVE-2026-35354 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:44257c233922a08b3465b8880caa0b9e16079c459ead532c3e28f
│                       │      │                   482a6bba235 
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
│                       ├ [54] ╭ VulnerabilityID : CVE-2026-35357 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:27590a961f80eb30ce87da3aec24bb05244c0e8c4a71d3d6065e4
│                       │      │                   1f36e7db11c 
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
│                       ├ [55] ╭ VulnerabilityID : CVE-2026-35359 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:386fbca17db0c1d2d8b767973bc7a9f0be7efc9069f2564a232f6
│                       │      │                   f72decca14f 
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
│                       ├ [56] ╭ VulnerabilityID : CVE-2026-35360 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:dba6a1219f68da6999d91214bc362fa8f434e4fc452276b293ef3
│                       │      │                   094516143ea 
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
│                       ├ [57] ╭ VulnerabilityID : CVE-2026-35363 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:fad98762169113ce52a0bfaae6a81d8e92c8306ce3d74f6cb3f27
│                       │      │                   c3e2d3872aa 
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
│                       ├ [58] ╭ VulnerabilityID : CVE-2026-35364 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:756750c56bdbe0a032ca7defdca258b6c0b882028d14cf8112a26
│                       │      │                   d5f9c19e4dd 
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
│                       ├ [59] ╭ VulnerabilityID : CVE-2026-35367 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:09af4ad35cafef2eea2bbc62794869bd7c2c44c0dda07a062fcb6
│                       │      │                   a59de9f5797 
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
│                       ├ [60] ╭ VulnerabilityID : CVE-2026-35368 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:50ab5ea1afd381e5254f9187f939b5d7214d4dc10af7b363a7ea1
│                       │      │                   47c65de00db 
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
│                       ├ [61] ╭ VulnerabilityID : CVE-2026-35370 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a88dedb58c44b92096e66f7880f0c8e19f8e0a6fee7ad98a08ded
│                       │      │                   6b0543a0558 
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
│                       ├ [62] ╭ VulnerabilityID : CVE-2026-35371 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:fa5e314e234b8715ffc92a73ce7b7132b231affd199a87f172bc0
│                       │      │                   dbfcc3dd71e 
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
│                       ├ [63] ╭ VulnerabilityID : CVE-2026-35373 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9bf89e0eeae384594e6f48ca9e605df4bd27960aff9953b61fef9
│                       │      │                   8c75de63ff6 
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
│                       ├ [64] ╭ VulnerabilityID : CVE-2026-35374 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ba863a1a1be129a6a1e61500f754a53f4d4d85a8b9ad7fbe8e51e
│                       │      │                   e1602cc82fb 
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
│                       ├ [65] ╭ VulnerabilityID : CVE-2026-35377 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9595474b38ca0560efbc5cde39146b62be82395644a014ebea684
│                       │      │                   204650f95de 
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
│                       ├ [66] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : util-linux 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 34e9503915630576 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:21c6b67ccce07e937d685a9ab5f014ae4eae5ace2de4ccb0c41fa
│                       │      │                   56784ab2edc 
│                       │      ├ Title           : util-linux: TOCTOU in the mount program when setting up loop
│                       │      │                    devices 
│                       │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │      │                   to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │      │                   vulnerability has been identified in the SUID binary
│                       │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │      │                   setting up loop devices, validates the source file path with
│                       │      │                    user privileges via fork() + setuid() + realpath(), but
│                       │      │                   subsequently re-canonicalizes and opens it with root
│                       │      │                   privileges (euid=0) without verifying that the path has not
│                       │      │                   been replaced between both operations. Neither O_NOFOLLOW,
│                       │      │                   nor inode comparison, nor post-open fstat() are employed.
│                       │      │                   This allows a local unprivileged user to replace the source
│                       │      │                   file with a symlink pointing to any root-owned file or
│                       │      │                   device during the race window, causing the SUID binary to
│                       │      │                   open and mount it as root. Exploitation requires an
│                       │      │                   /etc/fstab entry with user,loop options whose path points to
│                       │      │                    a directory where the attacker has write permission, and
│                       │      │                   that /usr/bin/mount has the SUID bit set (the default
│                       │      │                   configuration on virtually all Linux distributions). The
│                       │      │                   impact is unauthorized read access to root-protected files
│                       │      │                   and block devices, including backup images, disk volumes,
│                       │      │                   and any file containing a valid filesystem. This issue has
│                       │      │                   been patched in version 2.41.4. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-59 
│                       │      │                  ├ [1]: CWE-269 
│                       │      │                  ╰ [2]: CWE-367 
│                       │      ├ VendorSeverity   ╭ azure       : 2 
│                       │      │                  ├ bottlerocket: 2 
│                       │      │                  ├ julia       : 2 
│                       │      │                  ├ redhat      : 2 
│                       │      │                  ╰ ubuntu      : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026
│                       │      │                  │      -27456 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-k
│                       │      │                  │      it/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.to
│                       │      │                  │      ml 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [67] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : util-linux 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 34e9503915630576 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                       │      │                  │         951ef28e5d27e6862f01 
│                       │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                       │      │                            1e3bb96d781f2e6aaee9 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:39d13c16311260ab2c2a6212274932aa9eb836f3e1443903c1ef6
│                       │      │                   60c140ce0cc 
│                       │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │      │                   improper hostname canonicalization 
│                       │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │      │                   canonicalization in the `login(1)` utility, when invoked
│                       │      │                   with the `-h` option, can modify the supplied remote
│                       │      │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                       │      │                    exploit this by providing a specially crafted hostname,
│                       │      │                   potentially bypassing host-based Pluggable Authentication
│                       │      │                   Modules (PAM) access control rules that rely on fully
│                       │      │                   qualified domain names. This could lead to unauthorized
│                       │      │                   access. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-289 
│                       │      ├ VendorSeverity   ╭ azure : 1 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.3 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                       ╰ [68] ╭ VulnerabilityID : CVE-2026-27171 
│                              ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                              ├ PkgName         : zlib1g 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu3
│                              │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                              │                  ╰ UID : f9537564bd1f9cb2 
│                              ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
│                              │                  │         951ef28e5d27e6862f01 
│                              │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
│                              │                            1e3bb96d781f2e6aaee9 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Fingerprint     : sha256:56ac314c23ca7b598d1491d1864013e816d3c9bc74aa4cfb12c18
│                              │                   3248fecaea1 
│                              ├ Title           : zlib: zlib: Denial of Service via infinite loop in CRC32
│                              │                   combine functions 
│                              ├ Description     : zlib before 1.3.2 allows CPU consumption via crc32_combine64
│                              │                    and crc32_combine_gen64 because x2nmodp can do right shifts
│                              │                    within a loop that has no termination condition. 
│                              ├ Severity        : LOW 
│                              ├ CweIDs           ─ [0]: CWE-1284 
│                              ├ VendorSeverity   ╭ amazon     : 1 
│                              │                  ├ azure      : 1 
│                              │                  ├ cbl-mariner: 1 
│                              │                  ├ julia      : 2 
│                              │                  ├ nvd        : 2 
│                              │                  ├ photon     : 2 
│                              │                  ├ redhat     : 1 
│                              │                  ╰ ubuntu     : 1 
│                              ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                              │                  │        │           /A:H 
│                              │                  │        ╰ V3Score : 5.5 
│                              │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                              │                  │        │           /A:H 
│                              │                  │        ╰ V3Score : 5.5 
│                              │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                              │                           │           /A:L 
│                              │                           ╰ V3Score : 3.3 
│                              ├ References       ╭ [0] : https://7asecurity.com/blog/2026/02/zlib-7asecurity-a
│                              │                  │       udit 
│                              │                  ├ [1] : https://7asecurity.com/blog/2026/02/zlib-7asecurity-a
│                              │                  │       udit/ 
│                              │                  ├ [2] : https://7asecurity.com/reports/pentest-report-zlib-RC
│                              │                  │       1.1.pdf 
│                              │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-27171 
│                              │                  ├ [4] : https://github.com/advisories/GHSA-h858-mf2m-8jf4 
│                              │                  ├ [5] : https://github.com/madler/zlib/issues/904 
│                              │                  ├ [6] : https://github.com/madler/zlib/releases/tag/v1.3.2 
│                              │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-27171 
│                              │                  ├ [8] : https://ostif.org/zlib-audit-complete 
│                              │                  ├ [9] : https://ostif.org/zlib-audit-complete/ 
│                              │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-27171 
│                              ├ PublishedDate   : 2026-02-18T04:16:01.263Z 
│                              ╰ LastModifiedDate: 2026-06-17T10:26:47.357Z 
├ [1] ╭ Target  : Java 
│     ├ Class   : lang-pkgs 
│     ├ Type    : jar 
│     ╰ Packages 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-25681 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5029 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:5035361d96613ccab1690864a854c8dc5864299cb6ab34b32d2de
                        │      │                   a038175f028 
                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Arbitrary code
                        │      │                    execution via Cross-Site Scripting 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-1021 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ azure      : 2 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ redhat     : 3 
                        │      │                  ╰ rocky      : 3 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 8.1 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37123 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-25681 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2480680 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2480681 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2480685 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2480688 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2480757 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/2480761 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/2493620 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480684 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-25681 
                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-27136 
                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39829 
                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39830 
                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39832 
                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39835 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-42508 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-57231 
                        │      │                  ├ [25]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
                        │      │                  ├ [26]: https://errata.rockylinux.org/RLSA-2026:37072 
                        │      │                  ├ [27]: https://go.dev/cl/781703 
                        │      │                  ├ [28]: https://go.dev/issue/79574 
                        │      │                  ├ [29]: https://groups.google.com/g/golang-announce/c/iI-mYSI
                        │      │                  │       0lu8 
                        │      │                  ├ [30]: https://linux.oracle.com/cve/CVE-2026-25681.html 
                        │      │                  ├ [31]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
                        │      │                  ├ [32]: https://nvd.nist.gov/vuln/detail/CVE-2026-25681 
                        │      │                  ├ [33]: https://pkg.go.dev/vuln/GO-2026-5029 
                        │      │                  ╰ [34]: https://www.cve.org/CVERecord?id=CVE-2026-25681 
                        │      ├ PublishedDate   : 2026-05-22T16:16:19.863Z 
                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-27136 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5030 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d155736bc251d9cde499edca5b801f5ff8c481f648fdfef61ae93
                        │      │                   ab29c27a8cc 
                        │      ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
                        │      │                   Cross-Site Scripting via HTML parsing bypass 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-1021 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ azure      : 2 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ redhat     : 3 
                        │      │                  ╰ rocky      : 3 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 8.1 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37123 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-27136 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2480680 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2480681 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2480685 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2480688 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2480757 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/2480761 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/2493620 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480684 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-25681 
                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-27136 
                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39829 
                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39830 
                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39832 
                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39835 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-42508 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-57231 
                        │      │                  ├ [25]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
                        │      │                  ├ [26]: https://errata.rockylinux.org/RLSA-2026:37072 
                        │      │                  ├ [27]: https://go.dev/cl/781685 
                        │      │                  ├ [28]: https://go.dev/issue/79575 
                        │      │                  ├ [29]: https://groups.google.com/g/golang-announce/c/iI-mYSI
                        │      │                  │       0lu8 
                        │      │                  ├ [30]: https://linux.oracle.com/cve/CVE-2026-27136.html 
                        │      │                  ├ [31]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
                        │      │                  ├ [32]: https://nvd.nist.gov/vuln/detail/CVE-2026-27136 
                        │      │                  ├ [33]: https://pkg.go.dev/vuln/GO-2026-5030 
                        │      │                  ╰ [34]: https://www.cve.org/CVERecord?id=CVE-2026-27136 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.087Z 
                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33814 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.53.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e532ce0b812152e079a120d3f7832b821fcc296946b5b0f724c40
                        │      │                   0e4abaee871 
                        │      ├ Title           : net/http/internal/http2: golang: golang.org/x/net: Go
                        │      │                   HTTP/2: Denial of Service via malformed
                        │      │                   SETTINGS_MAX_FRAME_SIZE frame 
                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
                        │      │                    an infinite loop of writing CONTINUATION frames if it
                        │      │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ╭ [0]: CWE-835 
                        │      │                  ╰ [1]: CWE-606 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ azure      : 2 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ nvd        : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ photon     : 3 
                        │      │                  ├ redhat     : 3 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:33120 
                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:33123 
                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:33142 
                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:33150 
                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:34342 
                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:37387 
                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:42644 
                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:43692 
                        │      │                  ├ [10]: https://access.redhat.com/security/cve/CVE-2026-33814 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
                        │      │                  ├ [12]: https://github.com/golang/go/issues/78476 
                        │      │                  ├ [13]: https://go-review.googlesource.com/c/go/+/761581 
                        │      │                  ├ [14]: https://go-review.googlesource.com/c/net/+/761640 
                        │      │                  ├ [15]: https://go.dev/cl/761581 
                        │      │                  ├ [16]: https://go.dev/cl/761640 
                        │      │                  ├ [17]: https://go.dev/issue/78476 
                        │      │                  ├ [18]: https://groups.google.com/g/golang-announce/c/qcCIEXs
                        │      │                  │       o47M 
                        │      │                  ├ [19]: https://linux.oracle.com/cve/CVE-2026-33814.html 
                        │      │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
                        │      │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
                        │      │                  ├ [22]: https://pkg.go.dev/vuln/GO-2026-4918 
                        │      │                  ├ [23]: https://security.access.redhat.com/data/csaf/v2/vex/2
                        │      │                  │       026/cve-2026-33814.json 
                        │      │                  ├ [24]: https://ubuntu.com/security/notices/USN-8430-1 
                        │      │                  ├ [25]: https://ubuntu.com/security/notices/USN-8471-1 
                        │      │                  ├ [26]: https://ubuntu.com/security/notices/USN-8472-1 
                        │      │                  ├ [27]: https://ubuntu.com/security/notices/USN-8473-1 
                        │      │                  ╰ [28]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
                        │      ╰ LastModifiedDate: 2026-07-24T13:18:01.21Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39821 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5026 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d8835c0249820eadd06eaf53ec7b06b85148f7655abb9bfb487b8
                        │      │                   4cf7f3f2200 
                        │      ├ Title           : golang.org/x/net/idna: golang: net/http:
                        │      │                   golang.org/x/net/idna: Privilege escalation via incorrect
                        │      │                   Punycode label processing 
                        │      ├ Description     : The ToASCII and ToUnicode functions incorrectly accept
                        │      │                   Punycode-encoded labels that decode to an ASCII-only label.
                        │      │                   For example, ToUnicode("xn--example-.com") incorrectly
                        │      │                   returns the name "example.com" rather than an error. This
                        │      │                   behavior can lead to privilege escalation in programs using
                        │      │                   the idna package. For example, a program which performs
                        │      │                   privilege checks on the ASCII hostname may reject
                        │      │                   "example.com" but permit "xn--example-.com". If that program
                        │      │                    subsequently converts the ASCII hostname to Unicode, it
                        │      │                   will inadvertently permits access to the Unicode name
                        │      │                   "example.com". 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-1289 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ azure      : 4 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ redhat     : 3 
                        │      │                  ├ rocky      : 3 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 8.2 
                        │      ├ References       ╭ [0]  : https://access.redhat.com/errata/RHSA-2026:23262 
                        │      │                  ├ [1]  : https://access.redhat.com/errata/RHSA-2026:23264 
                        │      │                  ├ [2]  : https://access.redhat.com/errata/RHSA-2026:26546 
                        │      │                  ├ [3]  : https://access.redhat.com/errata/RHSA-2026:26547 
                        │      │                  ├ [4]  : https://access.redhat.com/errata/RHSA-2026:30650 
                        │      │                  ├ [5]  : https://access.redhat.com/errata/RHSA-2026:30651 
                        │      │                  ├ [6]  : https://access.redhat.com/errata/RHSA-2026:30853 
                        │      │                  ├ [7]  : https://access.redhat.com/errata/RHSA-2026:30854 
                        │      │                  ├ [8]  : https://access.redhat.com/errata/RHSA-2026:30855 
                        │      │                  ├ [9]  : https://access.redhat.com/errata/RHSA-2026:33155 
                        │      │                  ├ [10] : https://access.redhat.com/errata/RHSA-2026:33160 
                        │      │                  ├ [11] : https://access.redhat.com/errata/RHSA-2026:33163 
                        │      │                  ├ [12] : https://access.redhat.com/errata/RHSA-2026:33173 
                        │      │                  ├ [13] : https://access.redhat.com/errata/RHSA-2026:33183 
                        │      │                  ├ [14] : https://access.redhat.com/errata/RHSA-2026:33524 
                        │      │                  ├ [15] : https://access.redhat.com/errata/RHSA-2026:33531 
                        │      │                  ├ [16] : https://access.redhat.com/errata/RHSA-2026:34342 
                        │      │                  ├ [17] : https://access.redhat.com/errata/RHSA-2026:34357 
                        │      │                  ├ [18] : https://access.redhat.com/errata/RHSA-2026:34359 
                        │      │                  ├ [19] : https://access.redhat.com/errata/RHSA-2026:34364 
                        │      │                  ├ [20] : https://access.redhat.com/errata/RHSA-2026:34789 
                        │      │                  ├ [21] : https://access.redhat.com/errata/RHSA-2026:35826 
                        │      │                  ├ [22] : https://access.redhat.com/errata/RHSA-2026:35827 
                        │      │                  ├ [23] : https://access.redhat.com/errata/RHSA-2026:35828 
                        │      │                  ├ [24] : https://access.redhat.com/errata/RHSA-2026:35829 
                        │      │                  ├ [25] : https://access.redhat.com/errata/RHSA-2026:35830 
                        │      │                  ├ [26] : https://access.redhat.com/errata/RHSA-2026:35831 
                        │      │                  ├ [27] : https://access.redhat.com/errata/RHSA-2026:35993 
                        │      │                  ├ [28] : https://access.redhat.com/errata/RHSA-2026:35994 
                        │      │                  ├ [29] : https://access.redhat.com/errata/RHSA-2026:36105 
                        │      │                  ├ [30] : https://access.redhat.com/errata/RHSA-2026:36167 
                        │      │                  ├ [31] : https://access.redhat.com/errata/RHSA-2026:36207 
                        │      │                  ├ [32] : https://access.redhat.com/errata/RHSA-2026:36648 
                        │      │                  ├ [33] : https://access.redhat.com/errata/RHSA-2026:36651 
                        │      │                  ├ [34] : https://access.redhat.com/errata/RHSA-2026:36796 
                        │      │                  ├ [35] : https://access.redhat.com/errata/RHSA-2026:36797 
                        │      │                  ├ [36] : https://access.redhat.com/errata/RHSA-2026:36808 
                        │      │                  ├ [37] : https://access.redhat.com/errata/RHSA-2026:36820 
                        │      │                  ├ [38] : https://access.redhat.com/errata/RHSA-2026:36883 
                        │      │                  ├ [39] : https://access.redhat.com/errata/RHSA-2026:37387 
                        │      │                  ├ [40] : https://access.redhat.com/errata/RHSA-2026:37435 
                        │      │                  ├ [41] : https://access.redhat.com/errata/RHSA-2026:37436 
                        │      │                  ├ [42] : https://access.redhat.com/errata/RHSA-2026:38995 
                        │      │                  ├ [43] : https://access.redhat.com/errata/RHSA-2026:39005 
                        │      │                  ├ [44] : https://access.redhat.com/errata/RHSA-2026:39573 
                        │      │                  ├ [45] : https://access.redhat.com/errata/RHSA-2026:39879 
                        │      │                  ├ [46] : https://access.redhat.com/errata/RHSA-2026:40118 
                        │      │                  ├ [47] : https://access.redhat.com/errata/RHSA-2026:40262 
                        │      │                  ├ [48] : https://access.redhat.com/errata/RHSA-2026:40945 
                        │      │                  ├ [49] : https://access.redhat.com/errata/RHSA-2026:41019 
                        │      │                  ├ [50] : https://access.redhat.com/errata/RHSA-2026:41030 
                        │      │                  ├ [51] : https://access.redhat.com/errata/RHSA-2026:41031 
                        │      │                  ├ [52] : https://access.redhat.com/errata/RHSA-2026:41036 
                        │      │                  ├ [53] : https://access.redhat.com/errata/RHSA-2026:41055 
                        │      │                  ├ [54] : https://access.redhat.com/errata/RHSA-2026:41066 
                        │      │                  ├ [55] : https://access.redhat.com/errata/RHSA-2026:41928 
                        │      │                  ├ [56] : https://access.redhat.com/errata/RHSA-2026:41930 
                        │      │                  ├ [57] : https://access.redhat.com/errata/RHSA-2026:42043 
                        │      │                  ├ [58] : https://access.redhat.com/errata/RHSA-2026:42047 
                        │      │                  ├ [59] : https://access.redhat.com/errata/RHSA-2026:42048 
                        │      │                  ├ [60] : https://access.redhat.com/errata/RHSA-2026:42049 
                        │      │                  ├ [61] : https://access.redhat.com/errata/RHSA-2026:42050 
                        │      │                  ├ [62] : https://access.redhat.com/errata/RHSA-2026:42051 
                        │      │                  ├ [63] : https://access.redhat.com/errata/RHSA-2026:42078 
                        │      │                  ├ [64] : https://access.redhat.com/errata/RHSA-2026:42079 
                        │      │                  ├ [65] : https://access.redhat.com/errata/RHSA-2026:42080 
                        │      │                  ├ [66] : https://access.redhat.com/errata/RHSA-2026:42082 
                        │      │                  ├ [67] : https://access.redhat.com/errata/RHSA-2026:42132 
                        │      │                  ├ [68] : https://access.redhat.com/errata/RHSA-2026:42142 
                        │      │                  ├ [69] : https://access.redhat.com/errata/RHSA-2026:42146 
                        │      │                  ├ [70] : https://access.redhat.com/errata/RHSA-2026:42150 
                        │      │                  ├ [71] : https://access.redhat.com/errata/RHSA-2026:42151 
                        │      │                  ├ [72] : https://access.redhat.com/errata/RHSA-2026:42240 
                        │      │                  ├ [73] : https://access.redhat.com/errata/RHSA-2026:42644 
                        │      │                  ├ [74] : https://access.redhat.com/errata/RHSA-2026:42796 
                        │      │                  ├ [75] : https://access.redhat.com/errata/RHSA-2026:42852 
                        │      │                  ├ [76] : https://access.redhat.com/errata/RHSA-2026:43038 
                        │      │                  ├ [77] : https://access.redhat.com/errata/RHSA-2026:43052 
                        │      │                  ├ [78] : https://access.redhat.com/errata/RHSA-2026:43692 
                        │      │                  ├ [79] : https://access.redhat.com/errata/RHSA-2026:44622 
                        │      │                  ├ [80] : https://access.redhat.com/errata/RHSA-2026:44624 
                        │      │                  ├ [81] : https://access.redhat.com/errata/RHSA-2026:46395 
                        │      │                  ├ [82] : https://access.redhat.com/errata/RHSA-2026:47149 
                        │      │                  ├ [83] : https://access.redhat.com/errata/RHSA-2026:47735 
                        │      │                  ├ [84] : https://access.redhat.com/errata/RHSA-2026:47737 
                        │      │                  ├ [85] : https://access.redhat.com/security/cve/CVE-2026-39821 
                        │      │                  ├ [86] : https://bugzilla.redhat.com/2480756 
                        │      │                  ├ [87] : https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │      │                  ├ [88] : https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
                        │      │                  ├ [89] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
                        │      │                  │        026-27145 
                        │      │                  ├ [90] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
                        │      │                  │        026-39821 
                        │      │                  ├ [91] : https://errata.almalinux.org/9/ALSA-2026-37435.html 
                        │      │                  ├ [92] : https://errata.rockylinux.org/RLSA-2026:46395 
                        │      │                  ├ [93] : https://github.com/golang/go/issues/78760 
                        │      │                  ├ [94] : https://go.dev/cl/767220 
                        │      │                  ├ [95] : https://go.dev/issue/78760 
                        │      │                  ├ [96] : https://groups.google.com/g/golang-announce/c/iI-mYS
                        │      │                  │        I0lu8 
                        │      │                  ├ [97] : https://linux.oracle.com/cve/CVE-2026-39821.html 
                        │      │                  ├ [98] : https://linux.oracle.com/errata/ELSA-2026-46395.html 
                        │      │                  ├ [99] : https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
                        │      │                  ├ [100]: https://pkg.go.dev/vuln/GO-2026-5026 
                        │      │                  ├ [101]: https://security.access.redhat.com/data/csaf/v2/vex/
                        │      │                  │        2026/cve-2026-39821.json 
                        │      │                  ├ [102]: https://ubuntu.com/security/notices/USN-8416-1 
                        │      │                  ╰ [103]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
                        │      ╰ LastModifiedDate: 2026-07-29T13:18:20.72Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2025-47911 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4440 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.45.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47911 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:578fc78adcd25032806710d1ff465eacac56e9453a2d758870194
                        │      │                   ec2a6a20548 
                        │      ├ Title           : golang.org/x/net/html: Quadratic parsing complexity in
                        │      │                   golang.org/x/net/html 
                        │      ├ Description     : The html.Parse function in golang.org/x/net/html has
                        │      │                   quadratic parsing complexity when processing certain inputs,
                        │      │                    which can lead to denial of service (DoS) if an attacker
                        │      │                   provides specially crafted HTML content. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ VendorSeverity   ╭ amazon     : 2 
                        │      │                  ├ azure      : 2 
                        │      │                  ├ cbl-mariner: 2 
                        │      │                  ├ nvd        : 2 
                        │      │                  ├ redhat     : 2 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                  │        │           /A:L 
                        │      │                  │        ╰ V3Score : 5.3 
                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                           │           /A:L 
                        │      │                           ╰ V3Score : 5.3 
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-47911 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/75682 
                        │      │                  ├ [2] : https://github.com/golang/vulndb/issues/4440 
                        │      │                  ├ [3] : https://go.dev/cl/709876 
                        │      │                  ├ [4] : https://groups.google.com/g/golang-announce/c/jnQcOYp
                        │      │                  │       iR2c 
                        │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-47911 
                        │      │                  ├ [6] : https://pkg.go.dev/vuln/GO-2026-4440 
                        │      │                  ├ [7] : https://ubuntu.com/security/notices/USN-8089-1 
                        │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8089-2 
                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8089-3 
                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-47911 
                        │      ├ PublishedDate   : 2026-02-05T18:16:09.893Z 
                        │      ╰ LastModifiedDate: 2026-06-17T09:28:50.07Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2025-58190 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4441 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.45.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58190 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:2772571ad923b5b1b64a6274731a9ee33a7a497dabea65b135a00
                        │      │                   d3444ddd8ab 
                        │      ├ Title           : golang.org/x/net/html: Infinite parsing loop in
                        │      │                   golang.org/x/net 
                        │      ├ Description     : The html.Parse function in golang.org/x/net/html has an
                        │      │                   infinite parsing loop when processing certain inputs, which
                        │      │                   can lead to denial of service (DoS) if an attacker provides
                        │      │                   specially crafted HTML content. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-835 
                        │      ├ VendorSeverity   ╭ amazon     : 2 
                        │      │                  ├ azure      : 2 
                        │      │                  ├ cbl-mariner: 2 
                        │      │                  ├ nvd        : 2 
                        │      │                  ├ redhat     : 2 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │      │                  │        │           /A:L 
                        │      │                  │        ╰ V3Score : 5.3 
                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N
                        │      │                           │           /A:L 
                        │      │                           ╰ V3Score : 4.3 
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-58190 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/70179 
                        │      │                  ├ [2] : https://github.com/golang/vulndb/issues/4441 
                        │      │                  ├ [3] : https://go.dev/cl/709875 
                        │      │                  ├ [4] : https://groups.google.com/g/golang-announce/c/jnQcOYp
                        │      │                  │       iR2c 
                        │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-58190 
                        │      │                  ├ [6] : https://pkg.go.dev/vuln/GO-2026-4441 
                        │      │                  ├ [7] : https://ubuntu.com/security/notices/USN-8089-1 
                        │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8089-2 
                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8089-3 
                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-58190 
                        │      ├ PublishedDate   : 2026-02-05T18:16:10.027Z 
                        │      ╰ LastModifiedDate: 2026-06-17T09:44:02.557Z 
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-25680 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5028 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d672e8a2654624a4e39895cab5b4012f4599c225504cb61d7e0c4
                        │      │                   cad51395b7e 
                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Denial of
                        │      │                   Service due to excessive HTML parsing 
                        │      ├ Description     : Parsing arbitrary HTML can consume excessive CPU time,
                        │      │                   possibly leading to denial of service. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-400 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ├ azure : 2 
                        │      │                  ╰ redhat: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N
                        │      │                           │           /A:H 
                        │      │                           ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-25680 
                        │      │                  ├ [1]: https://go.dev/cl/781702 
                        │      │                  ├ [2]: https://go.dev/issue/79573 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-25680 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5028 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-25680 
                        │      ├ PublishedDate   : 2026-05-22T16:16:19.753Z 
                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42502 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5027 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:262bfbfda77b289e7654a1f8cfb63e0f31424325b5e83f7a97004
                        │      │                   867a58933a4 
                        │      ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
                        │      │                   Cross-Site Scripting via unexpected HTML tree rendering 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-1021 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ├ azure : 2 
                        │      │                  ╰ redhat: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42502 
                        │      │                  ├ [1]: https://go.dev/cl/781701 
                        │      │                  ├ [2]: https://go.dev/issue/79572 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42502 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5027 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42502 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.587Z 
                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-42506 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5025 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:fb8bc382fc52e28e3eb5f942ff81fed5fa2bdacfefffb2bf2d6d5
                        │      │                   9b20875eafd 
                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Cross-Site
                        │      │                   Scripting (XSS) via arbitrary HTML parsing 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ├ azure : 2 
                        │      │                  ╰ redhat: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:L
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 5.4 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42506 
                        │      │                  ├ [1]: https://go.dev/cl/781700 
                        │      │                  ├ [2]: https://go.dev/issue/79571 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42506 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5025 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42506 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.803Z 
                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-46600 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5942 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.56.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:acd33296852551dfce33961e2e0190308ef604c45184ef5c242aa
                        │      │                   c9a200e858b 
                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic when the size
                        │      │                   of a param ... 
                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
                        │      │                   of a parameter value overflows the message buffer. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ CweIDs           ─ [0]: CWE-125 
                        │      ├ References       ╭ [0]: https://go.dev/cl/786345 
                        │      │                  ├ [1]: https://go.dev/issue/79795 
                        │      │                  ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
                        │      ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
                        ├ [10] ╭ VulnerabilityID : CVE-2026-39824 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5024 
                        │      ├ PkgID           : golang.org/x/sys@v0.33.0 
                        │      ├ PkgName         : golang.org/x/sys 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.33.0 
                        │      │                  ╰ UID : a350d4cc028089d4 
                        │      ├ InstalledVersion: v0.33.0 
                        │      ├ FixedVersion    : 0.44.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:f06672c01ae2dae184f49ec0bb30177230379a666899a86c25d63
                        │      │                   98cf1e8e3e9 
                        │      ├ Title           : Invoking integer overflow in NewNTUnicodeString in
                        │      │                   golang.org/x/sys/windows 
                        │      ├ Description     : NewNTUnicodeString does not check for string length
                        │      │                   overflow. When provided with a string that overflows the
                        │      │                   maximum size of a NTUnicodeString (a 16-bit number of
                        │      │                   bytes), it returns a truncated string rather than an
                        │      │                   error. 
                        │      ├ Severity        : UNKNOWN 
                        │      ├ CweIDs           ─ [0]: CWE-190 
                        │      ├ References       ╭ [0]: https://go.dev/cl/770080 
                        │      │                  ├ [1]: https://go.dev/issue/78916 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/6MMI8Lj-
                        │      │                  │      Atg 
                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5024 
                        │      ├ PublishedDate   : 2026-05-22T20:16:33.057Z 
                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-39822 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
                        │      ├ PkgID           : stdlib@v1.26.4 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
                        │      │                  ╰ UID : 364846ec8fe81bdc 
                        │      ├ InstalledVersion: v1.26.4 
                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                        │      │                  │         951ef28e5d27e6862f01 
                        │      │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                        │      │                            1e3bb96d781f2e6aaee9 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:3d23ca3a99cb9019f59c7449a27c460d0708b0ee37bcf01b70025
                        │      │                   24ec86fe4dd 
                        │      ├ Title           : os: golang: Go os.Root: Symlink following vulnerability
                        │      │                   allows directory traversal 
                        │      ├ Description     : On Unix systems, opening a file in an os.Root improperly
                        │      │                   follows symlinks to locations outside of the Root when the
                        │      │                   final path component of the a path is a symbolic link and
                        │      │                   the path ends in /. For example, 'root.Open("symlink/")'
                        │      │                   will open "symlink" even when "symlink" is a symbolic link
                        │      │                   pointing outside of the root. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-61 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 2 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ redhat     : 3 
                        │      │                  ╰ rocky      : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
                        │      │                  │         │           H/A:H 
                        │      │                  │         ╰ V3Score : 7.8 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
                        │      │                            │           H/A:H 
                        │      │                            ╰ V3Score : 7.8 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-39822 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2498152 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39822 
                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-38878.html 
                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:38495 
                        │      │                  ├ [7] : https://go.dev/cl/797880 
                        │      │                  ├ [8] : https://go.dev/issue/79005 
                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/OrmQE_Y
                        │      │                  │       p5Sc 
                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-39822.html 
                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
                        │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-4970 
                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
                        │      ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
                        │      ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
                        ╰ [12] ╭ VulnerabilityID : CVE-2026-42505 
                               ├ VendorIDs        ─ [0]: GO-2026-5856 
                               ├ PkgID           : stdlib@v1.26.4 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
                               │                  ╰ UID : 364846ec8fe81bdc 
                               ├ InstalledVersion: v1.26.4 
                               ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:66c5c2968dee3a4ba75bf26e98974f0aaacea1c5c6ed
                               │                  │         951ef28e5d27e6862f01 
                               │                  ╰ DiffID: sha256:39b37b0b8ee10378a1262f3bc47bb805e3f0effe0a51
                               │                            1e3bb96d781f2e6aaee9 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:c7680de40b5a45a7b38ef96eda4153faecd6f0d365234d00994c3
                               │                   cd75f6e3873 
                               ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure in
                               │                    Encrypted Client Hello 
                               ├ Description     : Handshakes which used Encrypted Client Hello could be
                               │                   de-anonymized by a passive network observer due to a
                               │                   disclosure of pre-shared key identities in the unencrypted
                               │                   client hello. 
                               ├ Severity        : MEDIUM 
                               ├ CweIDs           ─ [0]: CWE-201 
                               ├ VendorSeverity   ╭ amazon : 2 
                               │                  ├ bitnami: 2 
                               │                  ╰ redhat : 2 
                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                               │                  │         │           N/A:N 
                               │                  │         ╰ V3Score : 5.3 
                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                               │                            │           N/A:N 
                               │                            ╰ V3Score : 5.3 
                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42505 
                               │                  ├ [1]: https://go.dev/cl/775960 
                               │                  ├ [2]: https://go.dev/issue/79282 
                               │                  ├ [3]: https://groups.google.com/g/golang-announce/c/OrmQE_Yp
                               │                  │      5Sc 
                               │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
                               │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5856 
                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
                               ├ PublishedDate   : 2026-07-08T17:17:21.497Z 
                               ╰ LastModifiedDate: 2026-07-13T17:05:36.303Z 
```
