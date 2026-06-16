```yaml
╭ [0] ╭ Target         : nmaguiar/mini-a-ghc:latest (ubuntu 26.04) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0]   ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 35a8976635e225e2 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a38e0e0a944b8790f58e08f1e39a26bd60294d32fed41e8cd70f
│                       │       │                   cdd1fafe2fb1 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [1]   ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 35a8976635e225e2 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a400caf3039a04a996ff3fe471d905cb79defadf304c795c5eee
│                       │       │                   c3d02b6f6716 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [2]   ╭ VulnerabilityID : CVE-2026-41163 
│                       │       ├ PkgID           : bubblewrap@0.11.1-1 
│                       │       ├ PkgName         : bubblewrap 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bubblewrap@0.11.1-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : ac02d1f0043d0a20 
│                       │       ├ InstalledVersion: 0.11.1-1 
│                       │       ├ FixedVersion    : 0.11.1-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41163 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:320b1d505cb83fb25a501239872a3d8471adba3380e8cdc3e64c
│                       │       │                   d7b94b4ed991 
│                       │       ├ Title           : bubblewrap: bubblewrap: Privilege escalation via ptrace
│                       │       │                   when installed in setuid mode 
│                       │       ├ Description     : bubblewrap is a low-level unprivileged sandboxing tool.
│                       │       │                   From version 0.11.0 to before version 0.11.2, if bubblewrap
│                       │       │                    is installed in setuid mode then the user can use ptrace
│                       │       │                   to attach to bubblewrap and control the unprivileged part
│                       │       │                   of the sandbox setup phase. This allows the attacker to
│                       │       │                   arbitrarily use the privileged operations, and in
│                       │       │                   particular the "overlay mount" operation, allowing the
│                       │       │                   creation of overlay mounts which is otherwise not allowed
│                       │       │                   in the setuid version of bubblewrap. This issue has been
│                       │       │                   patched in version 0.11.2. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-269 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41163 
│                       │       │                  ├ [1]: https://github.com/containers/bubblewrap/releases/tag
│                       │       │                  │      /v0.11.2 
│                       │       │                  ├ [2]: https://github.com/containers/bubblewrap/security/adv
│                       │       │                  │      isories/GHSA-xq78-7hw4-5jvp 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41163 
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8288-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-41163 
│                       │       ├ PublishedDate   : 2026-05-09T04:16:21.167Z 
│                       │       ╰ LastModifiedDate: 2026-05-13T16:49:32.233Z 
│                       ├ [3]   ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f63a0a78e3cac3a3 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0c07f6d395bfb1d2513451f758a671bf40443912353bc91e880a
│                       │       │                   c2f66f32be30 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [4]   ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f63a0a78e3cac3a3 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a6968b8e7933657bbe96fcc87e720986ba8e4742b4df37af5398
│                       │       │                   79e3f144102e 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [5]   ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:90a7cceba907c35d8d39267d04561f0cb4ef8abea62136672bb7
│                       │       │                   2a39faa71c5f 
│                       │       ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                       │       │                   specific character sets 
│                       │       ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                       │       │                    earlier may crash due to an assertion failure when
│                       │       │                   converting inputs from the IBM1390 or IBM1399 character
│                       │       │                   sets, which may be used to remotely crash an application.
│                       │       │                   
│                       │       │                   This vulnerability can be trivially mitigated by removing
│                       │       │                   the IBM1390 and IBM1399 character sets from systems that do
│                       │       │                    not need them. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-617 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20587 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [11]: https://inbox.sourceware.org/libc-announce/76814edf-
│                       │       │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │       │                  ├ [15]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                       │       │                  │       gconv-extra/ 
│                       │       │                  ├ [16]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │       │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                       │       │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                       │       │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                       │       │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │       │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │       ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │       ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                       ├ [6]   ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:190dfc03d54b0472e2468c61dc43edcce2e12c9f786e12bd1472
│                       │       │                   464f5687bdf0 
│                       │       ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted
│                       │       │                   DNS server response 
│                       │       ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │       │                   nsswitch.conf that specifies the library's DNS backend in
│                       │       │                   the GNU C Library version 2.34 to version 2.43 could, with
│                       │       │                   a crafted response from the configured DNS server, result
│                       │       │                   in a violation of the DNS specification that causes the
│                       │       │                   application to treat a non-answer section of the DNS
│                       │       │                   response as a valid answer. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ├ rocky : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │       │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │       │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │       ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                       ├ [7]   ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d3df48d6f30758deae3db95ac6b650160d9d53f0f37495aeb083
│                       │       │                   29e04e5c1203 
│                       │       ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                       │       │                   gethostbyaddr functions 
│                       │       ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │       │                   nsswitch.conf that specifies the library's DNS backend in
│                       │       │                   the GNU C library version 2.34 to version 2.43 could result
│                       │       │                    in an invalid DNS hostname being returned to the caller in
│                       │       │                    violation of the DNS specification. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-20 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma  : 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ├ rocky : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │       │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │       │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │       ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                       ├ [8]   ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ee2e570cc3d9bbd73426407dbb2c09aa1cb4decab35f1602447f
│                       │       │                   0813f65fa3bb 
│                       │       ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                       │       │                   to enforce the caller-supplied buffer length, and can
│                       │       │                   result in an out-of-bounds write when printing TSIG
│                       │       │                   records. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-5435 
│                       │       │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │       │                  │      194.git.fweimer@redhat.com/ 
│                       │       │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │       │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                       │       │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                       │       │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │       │                  │      f=advisories/GLIBC-SA-2026-0011 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                       │       ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                       │       ╰ LastModifiedDate: 2026-05-05T17:38:37.03Z 
│                       ├ [9]   ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2ece6c7f15efa5eec1203830465156ea4a60f54acb5d4b100aed
│                       │       │                   aa1cc6e08c2a 
│                       │       ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                       │       │                   read via crafted DNS response 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                       │       │                   to validate the RDATA content against the RDATA length in a
│                       │       │                    DNS response when processing LOC, CERT, TKEY or TSIG
│                       │       │                   records, which may allow an attacker to craft a DNS
│                       │       │                   response, causing a target application to crash or read
│                       │       │                   uninitialized memory.
│                       │       │                   
│                       │       │                   These functions are for application debugging only and
│                       │       │                   hence not in the path of code executed by the DNS resolver.
│                       │       │                     Further, they have been deprecated since version 2.34 and
│                       │       │                    should not be used by any new applications.  Applications
│                       │       │                   should consider porting away from these interfaces since
│                       │       │                   they may be removed in future versions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-126 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-6238 
│                       │       │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │       │                  │      194.git.fweimer@redhat.com/ 
│                       │       │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │       │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                       │       │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                       │       │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │       │                  │      f=advisories/GLIBC-SA-2026-0012 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                       │       ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T17:57:24.007Z 
│                       ├ [10]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c6d0036e7cbcfbda40b91a56326fcbf6ad75b9f097e44fd56eed
│                       │       │                   9bb5ba4a5643 
│                       │       ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                       │       │                   specific character sets 
│                       │       ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                       │       │                    earlier may crash due to an assertion failure when
│                       │       │                   converting inputs from the IBM1390 or IBM1399 character
│                       │       │                   sets, which may be used to remotely crash an application.
│                       │       │                   
│                       │       │                   This vulnerability can be trivially mitigated by removing
│                       │       │                   the IBM1390 and IBM1399 character sets from systems that do
│                       │       │                    not need them. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-617 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20587 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [11]: https://inbox.sourceware.org/libc-announce/76814edf-
│                       │       │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │       │                  ├ [15]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                       │       │                  │       gconv-extra/ 
│                       │       │                  ├ [16]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │       │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                       │       │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                       │       │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                       │       │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │       │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │       ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │       ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                       ├ [11]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:70d545a4ec5799f7208499ae3792311f7435cbc9b782e6fc9bda
│                       │       │                   2c8d1e4de1ed 
│                       │       ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted
│                       │       │                   DNS server response 
│                       │       ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │       │                   nsswitch.conf that specifies the library's DNS backend in
│                       │       │                   the GNU C Library version 2.34 to version 2.43 could, with
│                       │       │                   a crafted response from the configured DNS server, result
│                       │       │                   in a violation of the DNS specification that causes the
│                       │       │                   application to treat a non-answer section of the DNS
│                       │       │                   response as a valid answer. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ├ rocky : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │       │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │       │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │       ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                       ├ [12]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e155204212e5c48fb430f36954d61e171defb324d314bee9cef4
│                       │       │                   32ab5afd0969 
│                       │       ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                       │       │                   gethostbyaddr functions 
│                       │       ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │       │                   nsswitch.conf that specifies the library's DNS backend in
│                       │       │                   the GNU C library version 2.34 to version 2.43 could result
│                       │       │                    in an invalid DNS hostname being returned to the caller in
│                       │       │                    violation of the DNS specification. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-20 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma  : 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ├ rocky : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │       │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │       │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │       ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                       ├ [13]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:00685ca9c01526e46598cabaf96244652dd8b9edf43c9e50e025
│                       │       │                   9e9da3f9022c 
│                       │       ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                       │       │                   to enforce the caller-supplied buffer length, and can
│                       │       │                   result in an out-of-bounds write when printing TSIG
│                       │       │                   records. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-5435 
│                       │       │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │       │                  │      194.git.fweimer@redhat.com/ 
│                       │       │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │       │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                       │       │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                       │       │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │       │                  │      f=advisories/GLIBC-SA-2026-0011 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                       │       ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                       │       ╰ LastModifiedDate: 2026-05-05T17:38:37.03Z 
│                       ├ [14]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dd571f42b59c439e5d3816676184d5528fa4d7c0bf564cfc19b9
│                       │       │                   cf6faaf2082a 
│                       │       ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                       │       │                   read via crafted DNS response 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                       │       │                   to validate the RDATA content against the RDATA length in a
│                       │       │                    DNS response when processing LOC, CERT, TKEY or TSIG
│                       │       │                   records, which may allow an attacker to craft a DNS
│                       │       │                   response, causing a target application to crash or read
│                       │       │                   uninitialized memory.
│                       │       │                   
│                       │       │                   These functions are for application debugging only and
│                       │       │                   hence not in the path of code executed by the DNS resolver.
│                       │       │                     Further, they have been deprecated since version 2.34 and
│                       │       │                    should not be used by any new applications.  Applications
│                       │       │                   should consider porting away from these interfaces since
│                       │       │                   they may be removed in future versions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-126 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-6238 
│                       │       │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │       │                  │      194.git.fweimer@redhat.com/ 
│                       │       │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │       │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                       │       │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                       │       │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │       │                  │      f=advisories/GLIBC-SA-2026-0012 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                       │       ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T17:57:24.007Z 
│                       ├ [15]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ba09e09522928db0d752d284b50f8ff9a743f7fbf8f7de31a9c1
│                       │       │                   8fd6e36d6e5a 
│                       │       ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                       │       │                   specific character sets 
│                       │       ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                       │       │                    earlier may crash due to an assertion failure when
│                       │       │                   converting inputs from the IBM1390 or IBM1399 character
│                       │       │                   sets, which may be used to remotely crash an application.
│                       │       │                   
│                       │       │                   This vulnerability can be trivially mitigated by removing
│                       │       │                   the IBM1390 and IBM1399 character sets from systems that do
│                       │       │                    not need them. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-617 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20587 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [11]: https://inbox.sourceware.org/libc-announce/76814edf-
│                       │       │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │       │                  ├ [15]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                       │       │                  │       gconv-extra/ 
│                       │       │                  ├ [16]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │       │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                       │       │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                       │       │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                       │       │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │       │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │       ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │       ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                       ├ [16]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c0664a3bee13c1a7e45d5ca5ce4b57843514c61ee6c74d13bd70
│                       │       │                   d15f04c3c0fb 
│                       │       ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted
│                       │       │                   DNS server response 
│                       │       ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │       │                   nsswitch.conf that specifies the library's DNS backend in
│                       │       │                   the GNU C Library version 2.34 to version 2.43 could, with
│                       │       │                   a crafted response from the configured DNS server, result
│                       │       │                   in a violation of the DNS specification that causes the
│                       │       │                   application to treat a non-answer section of the DNS
│                       │       │                   response as a valid answer. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ├ rocky : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │       │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │       │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │       ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                       ├ [17]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8f3e0255a5a48ce2596b3550d191484d4e6b42af54a8c88c496e
│                       │       │                   8f46daafeaba 
│                       │       ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                       │       │                   gethostbyaddr functions 
│                       │       ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │       │                   nsswitch.conf that specifies the library's DNS backend in
│                       │       │                   the GNU C library version 2.34 to version 2.43 could result
│                       │       │                    in an invalid DNS hostname being returned to the caller in
│                       │       │                    violation of the DNS specification. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-20 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma  : 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ├ rocky : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4046 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4437 
│                       │       │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4438 
│                       │       │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │       │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │       │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │       ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                       ├ [18]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0536c6fc1e955d7d9f27401d22f2f1ebb69f0cf0ce2d131ed739
│                       │       │                   8649c2dfff7b 
│                       │       ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                       │       │                   to enforce the caller-supplied buffer length, and can
│                       │       │                   result in an out-of-bounds write when printing TSIG
│                       │       │                   records. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-5435 
│                       │       │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │       │                  │      194.git.fweimer@redhat.com/ 
│                       │       │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │       │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                       │       │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                       │       │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │       │                  │      f=advisories/GLIBC-SA-2026-0011 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                       │       ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                       │       ╰ LastModifiedDate: 2026-05-05T17:38:37.03Z 
│                       ├ [19]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ad0c784d2020a190db0633f56fe29db738e6e83a03a047466c4a
│                       │       │                   540a4562fe9b 
│                       │       ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                       │       │                   read via crafted DNS response 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                       │       │                   to validate the RDATA content against the RDATA length in a
│                       │       │                    DNS response when processing LOC, CERT, TKEY or TSIG
│                       │       │                   records, which may allow an attacker to craft a DNS
│                       │       │                   response, causing a target application to crash or read
│                       │       │                   uninitialized memory.
│                       │       │                   
│                       │       │                   These functions are for application debugging only and
│                       │       │                   hence not in the path of code executed by the DNS resolver.
│                       │       │                     Further, they have been deprecated since version 2.34 and
│                       │       │                    should not be used by any new applications.  Applications
│                       │       │                   should consider porting away from these interfaces since
│                       │       │                   they may be removed in future versions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-126 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-6238 
│                       │       │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                       │       │                  │      194.git.fweimer@redhat.com/ 
│                       │       │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                       │       │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                       │       │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                       │       │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                       │       │                  │      f=advisories/GLIBC-SA-2026-0012 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                       │       ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T17:57:24.007Z 
│                       ├ [20]  ╭ VulnerabilityID : CVE-2025-66382 
│                       │       ├ PkgID           : libexpat1@2.7.4-1 
│                       │       ├ PkgName         : libexpat1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : c17b9d4b5a8b1286 
│                       │       ├ InstalledVersion: 2.7.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:85a8affded140b676157369af315d09601391df5b0af0eb99f5b
│                       │       │                   6dc40ea6dab9 
│                       │       ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                       │       │                   processing 
│                       │       ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                       │       │                   approximate size of 2 MiB can lead to dozens of seconds of
│                       │       │                   processing time. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-407 
│                       │       ├ VendorSeverity   ╭ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 2.9 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/12/02/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-66382 
│                       │       │                  ├ [2]: https://cert-portal.siemens.com/productcert/html/ssa-
│                       │       │                  │      082556.html 
│                       │       │                  ├ [3]: https://cert-portal.siemens.com/productcert/html/ssa-
│                       │       │                  │      253495.html 
│                       │       │                  ├ [4]: https://github.com/libexpat/libexpat/issues/1076 
│                       │       │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-66382 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                       │       ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T14:16:37.12Z 
│                       ├ [21]  ╭ VulnerabilityID : CVE-2026-41989 
│                       │       ├ PkgID           : libgcrypt20@1.12.0-2 
│                       │       ├ PkgName         : libgcrypt20 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distr
│                       │       │                  │       o=ubuntu-26.04 
│                       │       │                  ╰ UID : bb41032cd077800a 
│                       │       ├ InstalledVersion: 1.12.0-2 
│                       │       ├ FixedVersion    : 1.12.0-2ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41989 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a147fa6864a60c704e3f20b623721355337fbde163d549bd1a37
│                       │       │                   e43029a0bba5 
│                       │       ├ Title           : Libgcrypt: Libgcrypt: Denial of Service and buffer overflow
│                       │       │                    via crafted ECDH ciphertext 
│                       │       ├ Description     : Libgcrypt before 1.12.2 sometimes allows a heap-based
│                       │       │                   buffer overflow and denial of service via crafted ECDH
│                       │       │                   ciphertext to gcry_pk_decrypt. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ azure : 1 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           H/A:H 
│                       │       │                  │        ╰ V3Score : 6.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41989 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T8211 
│                       │       │                  ├ [2]: https://github.com/advisories/GHSA-wrv8-79m2-qg24 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2026
│                       │       │                  │      q2/000503.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-41989 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8319-1 
│                       │       │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-41989 
│                       │       │                  ╰ [7]: https://www.openwall.com/lists/oss-security/2026/04/2
│                       │       │                         1/1 
│                       │       ├ PublishedDate   : 2026-04-23T05:16:05.75Z 
│                       │       ╰ LastModifiedDate: 2026-04-27T18:33:18.157Z 
│                       ├ [22]  ╭ VulnerabilityID : CVE-2026-41990 
│                       │       ├ PkgID           : libgcrypt20@1.12.0-2 
│                       │       ├ PkgName         : libgcrypt20 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distr
│                       │       │                  │       o=ubuntu-26.04 
│                       │       │                  ╰ UID : bb41032cd077800a 
│                       │       ├ InstalledVersion: 1.12.0-2 
│                       │       ├ FixedVersion    : 1.12.0-2ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41990 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:939bd386cb3afce7355d52ce307237ef6153d4d1dfa8b6b84e77
│                       │       │                   76a9231a43eb 
│                       │       ├ Title           : Libgcrypt: Libgcrypt: Denial of Service or data integrity
│                       │       │                   issues from missing bounds check during Dilithium
│                       │       │                   signing. 
│                       │       ├ Description     : Libgcrypt before 1.12.2 mishandles Dilithium signing.
│                       │       │                   Writes to a static array lack a bounds check but do not use
│                       │       │                    attacker-controlled data. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ julia : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:L 
│                       │       │                  │        ╰ V3Score : 4 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41990 
│                       │       │                  ├ [1]: https://dev.gnupg.org/T8208 
│                       │       │                  ├ [2]: https://github.com/advisories/GHSA-78pv-qq8x-94px 
│                       │       │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2026
│                       │       │                  │      q2/000503.html 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-41990 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8319-1 
│                       │       │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-41990 
│                       │       │                  ╰ [7]: https://www.openwall.com/lists/oss-security/2026/04/2
│                       │       │                         1/1 
│                       │       ├ PublishedDate   : 2026-04-23T05:16:05.897Z 
│                       │       ╰ LastModifiedDate: 2026-04-27T18:33:27.05Z 
│                       ├ [23]  ╭ VulnerabilityID : CVE-2024-2236 
│                       │       ├ PkgID           : libgcrypt20@1.12.0-2 
│                       │       ├ PkgName         : libgcrypt20 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distr
│                       │       │                  │       o=ubuntu-26.04 
│                       │       │                  ╰ UID : bb41032cd077800a 
│                       │       ├ InstalledVersion: 1.12.0-2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:fe1f9d4456e53d5e3d86032b993a9437a0777b3fb3caea2dd235
│                       │       │                   7cf1b8551335 
│                       │       ├ Title           : libgcrypt: vulnerable to Marvin Attack 
│                       │       ├ Description     : A timing-based side-channel flaw was found in libgcrypt's
│                       │       │                   RSA implementation. This issue may allow a remote attacker
│                       │       │                   to initiate a Bleichenbacher-style attack, which can lead
│                       │       │                   to the decryption of RSA ciphertexts. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-385 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9404 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3530 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3534 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-2236 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2245218 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2245218 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2268268 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-2236 
│                       │       │                  ├ [8] : https://dev.gnupg.org/T7136 
│                       │       │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                       │       │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:9404 
│                       │       │                  ├ [11]: https://github.com/tomato42/marvin-toolkit/tree/mast
│                       │       │                  │       er/example/libgcrypt 
│                       │       │                  ├ [12]: https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt
│                       │       │                  │       -mirror/-/merge_requests/17 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2024-2236.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                       │       │                  ├ [15]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024-
│                       │       │                  │       March/005607.html 
│                       │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                       │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                       │       ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                       │       ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                       ├ [24]  ╭ VulnerabilityID : CVE-2026-33845 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33845 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7218f7417eab103eaf9caae242bd6e2741b179198b0c7dbf1cfc
│                       │       │                   5d93ce378c82 
│                       │       ├ Title           : gnutls: GnuTLS: Denial of Service via DTLS zero-length
│                       │       │                   fragment 
│                       │       ├ Description     : A flaw in GnuTLS DTLS handshake parsing allows malformed
│                       │       │                   fragments with zero length and non-zero offset, leading to
│                       │       │                   an integer underflow during reassembly and resulting in an
│                       │       │                   out-of-bounds read. This issue is remotely exploitable and
│                       │       │                   may cause information disclosure or denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-191 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ nvd        : 4 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 9.1 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-33845 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [37]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [39]: https://linux.oracle.com/cve/CVE-2026-33845.html 
│                       │       │                  ├ [40]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [41]: https://nvd.nist.gov/vuln/detail/CVE-2026-33845 
│                       │       │                  ├ [42]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [43]: https://www.cve.org/CVERecord?id=CVE-2026-33845 
│                       │       │                  ╰ [44]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-3 
│                       │       ├ PublishedDate   : 2026-04-30T18:16:28.003Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:36.627Z 
│                       ├ [25]  ╭ VulnerabilityID : CVE-2026-33846 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33846 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9b83ae0839fd88955e240c81ba58fdac7dc4e96eda263ed18772
│                       │       │                   538301e009ee 
│                       │       ├ Title           : gnutls: GnuTLS: Denial of Service via heap buffer overflow
│                       │       │                   in DTLS handshake fragment reassembly 
│                       │       ├ Description     : A heap buffer overflow vulnerability exists in the DTLS
│                       │       │                   handshake fragment reassembly logic of GnuTLS. The issue
│                       │       │                   arises in merge_handshake_packet() where incoming handshake
│                       │       │                    fragments are matched and merged based solely on handshake
│                       │       │                    type, without validating that the message_length field
│                       │       │                   remains consistent across all fragments of the same logical
│                       │       │                    message. An attacker can exploit this by sending crafted
│                       │       │                   DTLS fragments with conflicting message_length values,
│                       │       │                   causing the implementation to allocate a buffer based on a
│                       │       │                   smaller initial fragment and subsequently write beyond its
│                       │       │                   bounds using larger, inconsistent fragments. Because the
│                       │       │                   merge operation does not enforce proper bounds checking
│                       │       │                   against the allocated buffer size, this results in an
│                       │       │                   out-of-bounds write on the heap. The vulnerability is
│                       │       │                   remotely exploitable without authentication via the DTLS
│                       │       │                   handshake path and can lead to application crashes or
│                       │       │                   potential memory corruption. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-130 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-33846 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [37]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [39]: https://linux.oracle.com/cve/CVE-2026-33846.html 
│                       │       │                  ├ [40]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [41]: https://nvd.nist.gov/vuln/detail/CVE-2026-33846 
│                       │       │                  ├ [42]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [43]: https://www.cve.org/CVERecord?id=CVE-2026-33846 
│                       │       │                  ╰ [44]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-1 
│                       │       ├ PublishedDate   : 2026-05-04T10:15:59.69Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:36.783Z 
│                       ├ [26]  ╭ VulnerabilityID : CVE-2026-3832 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3832 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:86d461b1da54bd76e7c8f51f048a0d07d1d7347e546046933c31
│                       │       │                   a61bc82e6520 
│                       │       ├ Title           : gnutls: gnutls: Security bypass allows acceptance of
│                       │       │                   revoked server certificates via crafted OCSP response 
│                       │       ├ Description     : A flaw was found in gnutls. A remote attacker could exploit
│                       │       │                    this vulnerability by presenting a specially crafted
│                       │       │                   Online Certificate Status Protocol (OCSP) response during a
│                       │       │                    TLS handshake. Due to a logic error in how gnutls
│                       │       │                   processes multi-record OCSP responses, a client with OCSP
│                       │       │                   verification enabled may incorrectly accept a revoked
│                       │       │                   server certificate, potentially leading to a compromise of
│                       │       │                   trust. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-179 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ├ rocky : 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-3832 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [30]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [31]: https://gitlab.com/gnutls/gnutls/-/issues/1801 
│                       │       │                  ├ [32]: https://nvd.nist.gov/vuln/detail/CVE-2026-3832 
│                       │       │                  ├ [33]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [34]: https://www.cve.org/CVERecord?id=CVE-2026-3832 
│                       │       │                  ╰ [35]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-12 
│                       │       ├ PublishedDate   : 2026-04-30T18:16:30.433Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T17:16:28.717Z 
│                       ├ [27]  ╭ VulnerabilityID : CVE-2026-3833 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3833 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:270cab3a773c597bd99f851ed7857bc54fcbee8015bad2f3ff26
│                       │       │                   2506720a3656 
│                       │       ├ Title           : gnutls: GnuTLS: Policy bypass due to case-sensitive
│                       │       │                   nameConstraints comparison 
│                       │       ├ Description     : A flaw was found in gnutls. This vulnerability occurs
│                       │       │                   because gnutls performs case-sensitive comparisons of
│                       │       │                   `nameConstraints` labels, specifically for `dNSName` (DNS)
│                       │       │                   or `rfc822Name` (email) constraints within
│                       │       │                   `excludedSubtrees` or `permittedSubtrees`. A remote
│                       │       │                   attacker can exploit this by crafting a leaf certificate
│                       │       │                   with casing differences in the Subject Alternative Name
│                       │       │                   (SAN), leading to a policy bypass where a certificate that
│                       │       │                   should be rejected is instead accepted. This could result
│                       │       │                   in unauthorized access or information disclosure. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-178 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ nvd        : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                  │        │           H/A:N 
│                       │       │                  │        ╰ V3Score : 7.4 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-3833 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [37]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [39]: https://gitlab.com/gnutls/gnutls/-/issues/1803 
│                       │       │                  ├ [40]: https://linux.oracle.com/cve/CVE-2026-3833.html 
│                       │       │                  ├ [41]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [42]: https://nvd.nist.gov/vuln/detail/CVE-2026-3833 
│                       │       │                  ├ [43]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [44]: https://www.cve.org/CVERecord?id=CVE-2026-3833 
│                       │       │                  ╰ [45]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-5 
│                       │       ├ PublishedDate   : 2026-04-30T18:16:30.577Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:38.723Z 
│                       ├ [28]  ╭ VulnerabilityID : CVE-2026-42009 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42009 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:178b7579ff25c19e3ea350d7610da4a7b4c41f397a599beb7115
│                       │       │                   eb99b39f6e5b 
│                       │       ├ Title           : gnutls: gnutls: Denial of Service via DTLS packet
│                       │       │                   reordering vulnerability 
│                       │       ├ Description     : A flaw was found in gnutls. A remote attacker could exploit
│                       │       │                    an issue in the Datagram Transport Layer Security (DTLS)
│                       │       │                   packet reordering logic. The comparator function,
│                       │       │                   responsible for ordering DTLS packets by sequence numbers,
│                       │       │                   did not correctly handle packets with duplicate sequence
│                       │       │                   numbers. This could lead to unstable packet ordering or
│                       │       │                   undefined behavior, resulting in a denial of service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-475 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-42009 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [37]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [39]: https://linux.oracle.com/cve/CVE-2026-42009.html 
│                       │       │                  ├ [40]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [41]: https://nvd.nist.gov/vuln/detail/CVE-2026-42009 
│                       │       │                  ├ [42]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [43]: https://www.cve.org/CVERecord?id=CVE-2026-42009 
│                       │       │                  ╰ [44]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-2 
│                       │       ├ PublishedDate   : 2026-05-18T13:16:32.707Z 
│                       │       ╰ LastModifiedDate: 2026-06-08T17:16:36.727Z 
│                       ├ [29]  ╭ VulnerabilityID : CVE-2026-42010 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42010 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6a60ed8c5eb04b91482bae3f6fed0ed00e8c2e4a874e78607361
│                       │       │                   f6c54f268056 
│                       │       ├ Title           : gnutls: gnutls: Authentication Bypass via NUL Character in
│                       │       │                   Username 
│                       │       ├ Description     : A flaw was found in gnutls. Servers configured with RSA-PSK
│                       │       │                    (Rivest–Shamir–Adleman – Pre-Shared Key) wrongfully
│                       │       │                   matched usernames containing a NUL character with truncated
│                       │       │                    usernames. A remote attacker could exploit this by sending
│                       │       │                    a specially crafted username, leading to an authentication
│                       │       │                    bypass. This vulnerability allows an attacker to gain
│                       │       │                   unauthorized access by circumventing the authentication
│                       │       │                   process. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-170 
│                       │       │                  ╰ [1]: CWE-626 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ nvd        : 4 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 4 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │       │                  │        │           H/A:H 
│                       │       │                  │        ╰ V3Score : 9.8 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-42010 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [37]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [39]: https://linux.oracle.com/cve/CVE-2026-42010.html 
│                       │       │                  ├ [40]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [41]: https://nvd.nist.gov/vuln/detail/CVE-2026-42010 
│                       │       │                  ├ [42]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [43]: https://www.cve.org/CVERecord?id=CVE-2026-42010 
│                       │       │                  ╰ [44]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-4 
│                       │       ├ PublishedDate   : 2026-05-07T12:16:17.977Z 
│                       │       ╰ LastModifiedDate: 2026-06-10T16:17:03.613Z 
│                       ├ [30]  ╭ VulnerabilityID : CVE-2026-42011 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42011 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7b727893fea9f0fc45c5ef075115cb1b5278d8f5bfdeef967e04
│                       │       │                   6f631f1691e7 
│                       │       ├ Title           : gnutls: gnutls: Security bypass due to incorrect name
│                       │       │                   constraint handling 
│                       │       ├ Description     : A flaw was found in gnutls. This vulnerability occurs
│                       │       │                   because permitted name constraints were incorrectly ignored
│                       │       │                    when previous Certificate Authorities (CAs) only had
│                       │       │                   excluded name constraints. A remote attacker could exploit
│                       │       │                   this to bypass critical name constraint checks during
│                       │       │                   certificate validation. This bypass could lead to the
│                       │       │                   acceptance of invalid certificates, potentially enabling
│                       │       │                   spoofing or man-in-the-middle attacks against affected
│                       │       │                   systems. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-295 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 7.4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:13274 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-42011 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [37]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [39]: https://linux.oracle.com/cve/CVE-2026-42011.html 
│                       │       │                  ├ [40]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [41]: https://nvd.nist.gov/vuln/detail/CVE-2026-42011 
│                       │       │                  ├ [42]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [43]: https://www.cve.org/CVERecord?id=CVE-2026-42011 
│                       │       │                  ╰ [44]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-6 
│                       │       ├ PublishedDate   : 2026-05-07T15:16:09.76Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:39.853Z 
│                       ├ [31]  ╭ VulnerabilityID : CVE-2026-42012 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42012 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:305b94b3a60730ace014f5b6c2adec8f765cf99df96a1be20ba4
│                       │       │                   9eae86184e8e 
│                       │       ├ Title           : gnutls: gnutls: Certificate validation bypass due to
│                       │       │                   improper handling of URI and SRV SANs 
│                       │       ├ Description     : A flaw was found in gnutls. A remote attacker could exploit
│                       │       │                    this vulnerability by presenting a specially crafted
│                       │       │                   certificate that contains Uniform Resource Identifier (URI)
│                       │       │                    or Service (SRV) Subject Alternative Names (SANs). This
│                       │       │                   could cause the certificate validation process to
│                       │       │                   incorrectly fall back to checking DNS hostnames against the
│                       │       │                    Common Name (CN), potentially allowing the attacker to
│                       │       │                   spoof legitimate services or intercept sensitive
│                       │       │                   information. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-295 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-42012 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-42012.html 
│                       │       │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-42012 
│                       │       │                  ├ [41]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [42]: https://www.cve.org/CVERecord?id=CVE-2026-42012 
│                       │       │                  ╰ [43]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-7 
│                       │       ├ PublishedDate   : 2026-05-26T22:16:41.913Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:39.98Z 
│                       ├ [32]  ╭ VulnerabilityID : CVE-2026-42013 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42013 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1c693f5b8e6cf0dc83335d34fef9326953156793c05485493c03
│                       │       │                   3cbd7faa48df 
│                       │       ├ Title           : gnutls: gnutls: Certificate validation bypass due to
│                       │       │                   oversized Subject Alternative Name 
│                       │       ├ Description     : A flaw was found in gnutls. When validating certificates,
│                       │       │                   an oversized Subject Alternative Name (SAN) could cause the
│                       │       │                    validation process to incorrectly fall back to checking
│                       │       │                   the Common Name (CN) field. This could allow a remote
│                       │       │                   attacker to bypass proper certificate validation,
│                       │       │                   potentially leading to spoofing or man-in-the-middle
│                       │       │                   attacks. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-1284 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 8.2 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-42013 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-42013.html 
│                       │       │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-42013 
│                       │       │                  ├ [41]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [42]: https://www.cve.org/CVERecord?id=CVE-2026-42013 
│                       │       │                  ╰ [43]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-8 
│                       │       ├ PublishedDate   : 2026-05-26T22:16:42.05Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:40.12Z 
│                       ├ [33]  ╭ VulnerabilityID : CVE-2026-42014 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42014 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e04b81979f669534bdbe982445318ea3c4f59c0c9995d7a96991
│                       │       │                   8f0431b6f542 
│                       │       ├ Title           : gnutls: Fix use-after-free in gnutls_pkcs11_token_set_pin 
│                       │       ├ Description     : A flaw was found in GnuTLS. The
│                       │       │                   `gnutls_pkcs11_token_set_pin` function, used for changing
│                       │       │                   the Security Officer PIN, can lead to a use-after-free
│                       │       │                   vulnerability. This occurs when an attacker attempts to
│                       │       │                   change the PIN with a NULL old PIN for a token that lacks a
│                       │       │                    protected authentication path. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-825 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-42014 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [38]: https://gitlab.com/gnutls/gnutls/-/issues/1766 
│                       │       │                  ├ [39]: https://linux.oracle.com/cve/CVE-2026-42014.html 
│                       │       │                  ├ [40]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [41]: https://nvd.nist.gov/vuln/detail/CVE-2026-42014 
│                       │       │                  ├ [42]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [43]: https://www.cve.org/CVERecord?id=CVE-2026-42014 
│                       │       │                  ╰ [44]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-9 
│                       │       ├ PublishedDate   : 2026-06-16T02:16:19.14Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:16:19.14Z 
│                       ├ [34]  ╭ VulnerabilityID : CVE-2026-42015 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42015 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9a7611e42935a2a91baab86f5607c2256afafea0bc8528f8cea0
│                       │       │                   c139494b7be3 
│                       │       ├ Title           : gnutls: gnutls: Memory corruption due to off-by-one error
│                       │       │                   in PKCS#12 bag handling 
│                       │       ├ Description     : A flaw was found in gnutls. An off-by-one error exists in
│                       │       │                   the PKCS#12 bag element bounds check. This vulnerability
│                       │       │                   allows an remote attacker to write past the internal array
│                       │       │                   of a PKCS#12 bag when appending to a bag that already
│                       │       │                   contains 32 elements. This memory corruption could lead to
│                       │       │                   a denial of service (DoS) or potentially other unspecified
│                       │       │                   impacts. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-193 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-42015 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-42015.html 
│                       │       │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-42015 
│                       │       │                  ├ [41]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [42]: https://www.cve.org/CVERecord?id=CVE-2026-42015 
│                       │       │                  ╰ [43]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-11 
│                       │       ├ PublishedDate   : 2026-05-26T22:16:42.18Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:40.25Z 
│                       ├ [35]  ╭ VulnerabilityID : CVE-2026-5260 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5260 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:eb2ece8800c9844bfa4c0f99b2a456a1d9677fcd5d9c438e0a52
│                       │       │                   3674c689d204 
│                       │       ├ Title           : gnutls: gnutls: Information disclosure via heap overread in
│                       │       │                    RSA key exchange 
│                       │       ├ Description     : A flaw was found in libgnutls. A remote attacker, by
│                       │       │                   sending an extremely short premaster secret during an RSA
│                       │       │                   key exchange to a server using an RSA key backed by a
│                       │       │                   PKCS#11 token, could trigger a short heap overread. This
│                       │       │                   memory corruption vulnerability could lead to information
│                       │       │                   disclosure. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-1284 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ azure      : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 8.2 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20611 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-5260 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2445763 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2450624 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2450625 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2467279 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2467289 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2467437 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-20611.html 
│                       │       │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-5260.html 
│                       │       │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-20611.html 
│                       │       │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-5260 
│                       │       │                  ├ [41]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [42]: https://www.cve.org/CVERecord?id=CVE-2026-5260 
│                       │       │                  ╰ [43]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-10 
│                       │       ├ PublishedDate   : 2026-05-26T22:16:44.17Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T16:16:45.3Z 
│                       ├ [36]  ╭ VulnerabilityID : CVE-2026-5419 
│                       │       ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │       ├ PkgName         : libgnutls30t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : e6a00d2b37fe01b4 
│                       │       ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │       ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5419 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4237af073af6c6bcc30cd28e86f79c393c09a74f7a7fe8a69282
│                       │       │                   f73849b39300 
│                       │       ├ Title           : guntls: gnutls: Information disclosure via timing
│                       │       │                   side-channel in PKCS#7 padding removal 
│                       │       ├ Description     : A flaw was found in gnutls. The PKCS#7 padding check,
│                       │       │                   performed during decryption, was not constant-time. This
│                       │       │                   timing side-channel could allow a remote attacker to
│                       │       │                   potentially leak sensitive information about the padding
│                       │       │                   bytes through observable timing differences. This
│                       │       │                   vulnerability is a form of information disclosure. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-208 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ azure : 1 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ├ rocky : 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20612 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:20613 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-5419 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2467441 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2467448 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2467450 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2467451 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2467678 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467686 
│                       │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33845 
│                       │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-33846 
│                       │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3832 
│                       │       │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3833 
│                       │       │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42009 
│                       │       │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42010 
│                       │       │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42011 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42012 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42013 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42014 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-42015 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5260 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5419 
│                       │       │                  ├ [29]: https://errata.rockylinux.org/RLSA-2026:20612 
│                       │       │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-5419 
│                       │       │                  ├ [31]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │       │                  ├ [32]: https://www.cve.org/CVERecord?id=CVE-2026-5419 
│                       │       │                  ╰ [33]: https://www.gnutls.org/security-new.html#GNUTLS-SA-2
│                       │       │                          026-04-29-13 
│                       │       ├ PublishedDate   : 2026-06-01T21:16:47.48Z 
│                       │       ╰ LastModifiedDate: 2026-06-02T17:16:37.793Z 
│                       ├ [37]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ee0638a59a092c7e 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b8b8761bf18fd955dd5cbd0ddd965de5398b5f1a78f09f5d5df0
│                       │       │                   82d8ee899677 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [38]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ee0638a59a092c7e 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:51fc590a6964ed44e980d269fdefcd18a9ea2bbf417926f05fc4
│                       │       │                   93c5bf73b490 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [39]  ╭ VulnerabilityID : CVE-2026-2297 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : edd92b8f9e06659 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:08963f5975040cba6634be45baabf0266018995951de72ee22e1
│                       │       │                   5fca5d35a31b 
│                       │       ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │       ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │       │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │       │                    (a base class) and so does not use io.open_code() to read
│                       │       │                   the .pyc files. sys.audit handlers for this audit event
│                       │       │                   therefore do not fire. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-668 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [38]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │       │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [40]: https://github.com/python/cpython/commit/482d6f8bdba
│                       │       │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                       │       │                  │       4bd69b1565647c18659c6a789ccd9 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/876858c9f65
│                       │       │                  │       d9ab656c7fa639f268ce7856d89dd 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/a51b1b512de
│                       │       │                  │       1d56b3714b65628a2eae2b07e535e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/e58e9802b9b
│                       │       │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                       │       │                  ├ [45]: https://github.com/python/cpython/issues/145506 
│                       │       │                  ├ [46]: https://github.com/python/cpython/pull/145507 
│                       │       │                  ├ [47]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │       │                  ├ [48]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │       │                  ├ [49]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │       │                  ╰ [50]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │       ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [40]  ╭ VulnerabilityID : CVE-2026-2297 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : d9cfb9637e1a0676 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4c59b5f473cd0964700f1868ce4be11b4e734ee1c43402874e43
│                       │       │                   5caa9d53132b 
│                       │       ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │       ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │       │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │       │                    (a base class) and so does not use io.open_code() to read
│                       │       │                   the .pyc files. sys.audit handlers for this audit event
│                       │       │                   therefore do not fire. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-668 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [38]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │       │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [40]: https://github.com/python/cpython/commit/482d6f8bdba
│                       │       │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                       │       │                  │       4bd69b1565647c18659c6a789ccd9 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/876858c9f65
│                       │       │                  │       d9ab656c7fa639f268ce7856d89dd 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/a51b1b512de
│                       │       │                  │       1d56b3714b65628a2eae2b07e535e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/e58e9802b9b
│                       │       │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                       │       │                  ├ [45]: https://github.com/python/cpython/issues/145506 
│                       │       │                  ├ [46]: https://github.com/python/cpython/pull/145507 
│                       │       │                  ├ [47]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │       │                  ├ [48]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │       │                  ├ [49]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │       │                  ╰ [50]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │       ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [41]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ff5e7b67d2385233 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8534a441bec299b7094fc49fbd3fa2e72b466b0e304b27d72123
│                       │       │                   7eaaee4002f1 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [42]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ff5e7b67d2385233 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d9d30eeac880d4ea306cb95b61e06aa56d83c0fb9f842382d067
│                       │       │                   0e39d87534fe 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [43]  ╭ VulnerabilityID : CVE-2026-7598 
│                       │       ├ PkgID           : libssh2-1t64@1.11.1-1build2 
│                       │       ├ PkgName         : libssh2-1t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssh2-1t64@1.11.1-1build2?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 9320c5eba6f5025e 
│                       │       ├ InstalledVersion: 1.11.1-1build2 
│                       │       ├ FixedVersion    : 1.11.1-1ubuntu0.26.04.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7598 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:10eaef675bdf13d067ad6f0a5a8d7a5ec45216ebfae6f027faef
│                       │       │                   7ae5146f3902 
│                       │       ├ Title           : libssh2: integer overflow via large username or password
│                       │       │                   arguments 
│                       │       ├ Description     : A security vulnerability has been detected in libssh2 up to
│                       │       │                    1.11.1. The impacted element is the function
│                       │       │                   userauth_password of the file src/userauth.c. Such
│                       │       │                   manipulation of the argument username_len/password_len
│                       │       │                   leads to integer overflow. The attack may be launched
│                       │       │                   remotely. The name of the patch is
│                       │       │                   256d04b60d80bf1190e96b0ad1e91b2174d744b1. A patch should be
│                       │       │                    applied to remediate this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-189 
│                       │       │                  ╰ [1]: CWE-190 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ azure : 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 9.1 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-7598 
│                       │       │                  ├ [1]: https://github.com/libssh2/libssh2/ 
│                       │       │                  ├ [2]: https://github.com/libssh2/libssh2/commit/256d04b60d8
│                       │       │                  │      0bf1190e96b0ad1e91b2174d744b1 
│                       │       │                  ├ [3]: https://github.com/libssh2/libssh2/pull/1858 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-7598 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8309-1 
│                       │       │                  ├ [6]: https://vuldb.com/submit/805564 
│                       │       │                  ├ [7]: https://vuldb.com/vuln/360555 
│                       │       │                  ├ [8]: https://vuldb.com/vuln/360555/cti 
│                       │       │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-7598 
│                       │       ├ PublishedDate   : 2026-05-01T22:16:16.947Z 
│                       │       ╰ LastModifiedDate: 2026-05-07T01:47:08.857Z 
│                       ├ [44]  ╭ VulnerabilityID : CVE-2026-45447 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45447 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:49649e924a62d35f76c8efd06d0644bf88b2278f4f260a9291ba
│                       │       │                   276e70b4859c 
│                       │       ├ Title           : openssl: Heap Use-After-Free in OpenSSL PKCS7_verify() 
│                       │       ├ Description     : Issue summary: A specially crafted PKCS#7 or S/MIME signed
│                       │       │                   message could
│                       │       │                   trigger a use-after-free during PKCS#7 signature
│                       │       │                   verification.
│                       │       │                   
│                       │       │                   Impact summary: A use-after-free may result in process
│                       │       │                   crashes, heap
│                       │       │                   corruption, or potentially remote code execution.
│                       │       │                   When processing a PKCS#7 or S/MIME signed message, if the
│                       │       │                   SignedData
│                       │       │                   digestAlgorithms field is present as an empty ASN.1 SET,
│                       │       │                   OpenSSL may
│                       │       │                   incorrectly free a caller-owned BIO during PKCS7_verify().
│                       │       │                   A subsequent
│                       │       │                   use of the BIO by the calling application results in a
│                       │       │                   use-after-free
│                       │       │                   condition.
│                       │       │                   In the common case this occurs when the application later
│                       │       │                   calls
│                       │       │                   BIO_free() on the BIO originally passed to PKCS7_verify().
│                       │       │                   Depending
│                       │       │                   on allocator behavior and application-specific BIO usage
│                       │       │                   patterns, this
│                       │       │                   may result in a crash or other memory corruption. In some
│                       │       │                   application
│                       │       │                   contexts this may potentially be exploitable for remote
│                       │       │                   code execution.
│                       │       │                   Applications that process PKCS#7 or S/MIME signed messages
│                       │       │                   using OpenSSL
│                       │       │                   PKCS#7 APIs may be affected. Applications using the CMS
│                       │       │                   APIs for this
│                       │       │                   processing are not affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : HIGH 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 3 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45447 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/3aad5eb7af
│                       │       │                  │       4de4ee0633c30a8541a54d9bbde63c 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/7d4a980c62
│                       │       │                  │       258c5910cc883936e0c8dbab4d75a8 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/9dfd688ad2
│                       │       │                  │       290fc5075cacbc9bf0c9a93eefed54 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/a541ae8bfe
│                       │       │                  │       849a30cc885e8780715c0f488e496c 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/c505d7559d
│                       │       │                  │       a5d5f9f2c3913c6883a5562ce7273e 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45447 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-45447 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:19.277Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:56:50.707Z 
│                       ├ [45]  ╭ VulnerabilityID : CVE-2026-34182 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34182 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:933c71f5aca16a45d0f447654b37fd89284f2c41931cd9cb7b6a
│                       │       │                   bccb7db37412 
│                       │       ├ Title           : openssl: CMS AuthEnvelopedData Processing May Accept Forged
│                       │       │                    Messages 
│                       │       ├ Description     : Issue Summary: Cryptographic Message Services (CMS)
│                       │       │                   processing fails to perform
│                       │       │                   sufficient input validation on the cipher and tag length
│                       │       │                   fields of
│                       │       │                   AuthEnvelopedData containers, leading to various potential
│                       │       │                   compromises.
│                       │       │                   
│                       │       │                   Impact Summary: Attackers making use of these
│                       │       │                   vulnerabilities may achieve
│                       │       │                   key-equivalent functionality for a given CMS recipient
│                       │       │                   and/or bypass integrity
│                       │       │                   validation for a given message.
│                       │       │                   In one use case, an attacker may send a CMS message
│                       │       │                   containing
│                       │       │                   AuthEnvelopedData with the cipher specified as a non-AEAD
│                       │       │                   cipher.  OpenSSL
│                       │       │                   erroneously allows this selection, and attempts to decrypt
│                       │       │                   and validate the
│                       │       │                   message.
│                       │       │                   An on-path attacker who captures one legitimate AES-GCM
│                       │       │                   AuthEnvelopedData
│                       │       │                   addressed to the victim can re-emit it with the
│                       │       │                   recipientInfos set left
│                       │       │                   byte-for-byte intact, so the victim's private key still
│                       │       │                   unwraps the genuine CEK
│                       │       │                   (the content-encryption key), but with the inner OID
│                       │       │                   rewritten to AES-256-OFB
│                       │       │                   (Output Feedback Mode, an unauthenticated keystream mode)
│                       │       │                   and with an
│                       │       │                   attacker-chosen IV and ciphertext. The victim initializes
│                       │       │                   AES-256-OFB under the
│                       │       │                   real CEK, never consults the MAC field, and CMS_decrypt()
│                       │       │                   returns success.
│                       │       │                   If the application under attack responds to the attacker
│                       │       │                   with any indicator
│                       │       │                   showing success or failure of the decryption effort, it is
│                       │       │                   possible for the
│                       │       │                   attacker to use this as an oracle to obtain key equivalent
│                       │       │                   functionality for the
│                       │       │                   CEK used for the chosen recipient of the message.
│                       │       │                   In another use case, an attacker can reduce the tag length
│                       │       │                   of the chosen AEAD
│                       │       │                   cipher for a given AuthEnvelopedData container to be a
│                       │       │                   single byte long,
│                       │       │                   allowing an attacker to brute force CMS decryption,
│                       │       │                   producing an integrity
│                       │       │                   bypass for applications that trust CMS_decrypt() to reject
│                       │       │                   modified content.
│                       │       │                   The FIPS modules are not affected by this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 7.4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34182 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/03c1f4d45f
│                       │       │                  │       b963aee7d5833390c507cd290182bc 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/439ed7d2c0
│                       │       │                  │       962ce964482727264668bf277c333f 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7947e6a81e
│                       │       │                  │       b8776802f159fb6762cb7fcf7e34c7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/9fd97f8cfd
│                       │       │                  │       c2c0be214998de3b2b55c8edf6c7ac 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/d2ca86bcd4
│                       │       │                  │       3e4f17d899f347101766b6107676e0 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-34182 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-34182 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.857Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:05.717Z 
│                       ├ [46]  ╭ VulnerabilityID : CVE-2026-34183 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34183 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ad8e800cd4ce5db8f0fe358f69c5cea0510d91fcbbf6b2a65155
│                       │       │                   9f13a75f4a68 
│                       │       ├ Title           : openssl: Unbounded Memory Growth in the QUIC PATH_CHALLENGE
│                       │       │                    Handler 
│                       │       ├ Description     : Issue summary: Remote peer may exhaust heap memory of the
│                       │       │                   QUIC
│                       │       │                   server or client by flooding it with packets containing
│                       │       │                   PATH_CHALLENGE
│                       │       │                   frames.
│                       │       │                   
│                       │       │                   Impact summary: A malicious remote peer can cause an
│                       │       │                   unbounded
│                       │       │                   memory allocation which can lead to an abnormal termination
│                       │       │                    of the
│                       │       │                   application acting as a QUIC client or server and a Denial
│                       │       │                   of Service.
│                       │       │                   A remote peer may exhaust heap memory by flooding the
│                       │       │                   local
│                       │       │                   QUIC stack with PATH_CHALLENGE frames. The local QUIC
│                       │       │                   stack
│                       │       │                   allocates a PATH_RESPONSE frame for every PATH_CHALLENGE it
│                       │       │                    receives.
│                       │       │                   The allocated PATH_RESPONSE frame gets freed only when the
│                       │       │                   remote
│                       │       │                   peer acknowledges reception of the PATH_RESPONSE frame
│                       │       │                   which will
│                       │       │                   not be done by a malicious peer.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue. The QUIC stack is outside of OpenSSL FIPS
│                       │       │                   module
│                       │       │                   boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-1325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34183 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/5b306efb0b
│                       │       │                  │       3779dfdd0803b4afc9d08c91f11517 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/7d06955ebe
│                       │       │                  │       0ecf8adfd4c1e92018586da47ef9ac 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d2e9efbe49
│                       │       │                  │       00a373227deb136e8665401404ffac 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/fbaa83859c
│                       │       │                  │       01ad64f497b757aaf51be7d05ed9eb 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-34183 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-34183 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:05Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:12:39.05Z 
│                       ├ [47]  ╭ VulnerabilityID : CVE-2026-42764 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42764 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d9b8a6605469603cd1756d86a1b74b5d28c44f2bae88dbb21275
│                       │       │                   e4b3b7279042 
│                       │       ├ Title           : openssl: NULL pointer dereference in QUIC server initial
│                       │       │                   packet handling 
│                       │       ├ Description     : Issue summary: Receiving a QUIC initial packet with an
│                       │       │                   invalid token may
│                       │       │                   trigger a NULL pointer dereference in the OpenSSL QUIC
│                       │       │                   server with
│                       │       │                   address validation disabled.
│                       │       │                   
│                       │       │                   Impact summary: NULL pointer dereference typically causes
│                       │       │                   abnormal termination
│                       │       │                   of the affected QUIC server process and a Denial of
│                       │       │                   Service.
│                       │       │                   If the address validation is disabled in the OpenSSL QUIC
│                       │       │                   server
│                       │       │                   implementation, an attacker can crash the server by sending
│                       │       │                    an initial
│                       │       │                   packet with an invalid or expired token.
│                       │       │                   By default, the client address validation is enabled in the
│                       │       │                    OpenSSL QUIC server
│                       │       │                   implementation, which makes the default configuration not
│                       │       │                   vulnerable
│                       │       │                   to this issue. However if the SSL_LISTENER_FLAG_NO_VALIDATE
│                       │       │                    is used with
│                       │       │                   the SSL_new_listener() call, the address validation is
│                       │       │                   disabled making the
│                       │       │                   vulnerable code reachable.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42764 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/5e3ed291b8
│                       │       │                  │       af0b03d5d3b9e56a1da69a187e9729 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/a45a0aba80
│                       │       │                  │       95682c88ff4fc4a784892b8c6f0677 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/bf29a458c1
│                       │       │                  │       a231eca87e384c62b9c2553fa57a91 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-42764 
│                       │       │                  ├ [22]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-42764 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:07.693Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:25:25.99Z 
│                       ├ [48]  ╭ VulnerabilityID : CVE-2026-45445 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45445 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7d36f5eda145d5a55e370e47c889e413976766ba71e5d1d45389
│                       │       │                   448dd8399822 
│                       │       ├ Title           : openssl: AES-OCB IV Ignored on EVP_Cipher() Path 
│                       │       ├ Description     : Issue summary: When an application drives an AES-OCB
│                       │       │                   context through the
│                       │       │                   public EVP_Cipher() one-shot interface, the
│                       │       │                   application-supplied
│                       │       │                   initialisation vector (IV) is silently discarded.
│                       │       │                   
│                       │       │                   Impact summary: Every message encrypted under the same key
│                       │       │                   uses the
│                       │       │                   same effective nonce regardless of the IV supplied by the
│                       │       │                   caller,
│                       │       │                   resulting in (key, nonce) reuse and loss of
│                       │       │                   confidentiality.  If the
│                       │       │                   same code path is used to compute the authentication tag,
│                       │       │                   the tag
│                       │       │                   depends only on the (key, IV) pair and not on the plaintext
│                       │       │                    or
│                       │       │                   ciphertext, allowing universal forgery of arbitrary
│                       │       │                   ciphertext from a
│                       │       │                   single captured message.
│                       │       │                   OpenSSL provides two ways to drive a cipher: the documented
│                       │       │                    streaming
│                       │       │                   interface (EVP_CipherUpdate / EVP_CipherFinal_ex) and a
│                       │       │                   lower-level
│                       │       │                   one-shot, EVP_Cipher(), whose documentation explicitly
│                       │       │                   recommends
│                       │       │                   against use by applications in favour of EVP_CipherUpdate()
│                       │       │                    and
│                       │       │                   EVP_CipherFinal_ex().  The OCB provider's streaming handler
│                       │       │                    flushes
│                       │       │                   the application-supplied IV into the OCB context before
│                       │       │                   processing
│                       │       │                   data; the one-shot handler did not.  Every call to
│                       │       │                   EVP_Cipher() on an
│                       │       │                   AES-OCB context therefore ran with the all-zero key-derived
│                       │       │                    offset
│                       │       │                   state left by cipher initialisation, regardless of the
│                       │       │                   caller's IV.
│                       │       │                   If EVP_EncryptFinal_ex() is subsequently used to obtain
│                       │       │                   the
│                       │       │                   authentication tag, the deferred IV setup runs at that
│                       │       │                   point and
│                       │       │                   clears the running checksum that should have been
│                       │       │                   accumulated over the
│                       │       │                   plaintext.  The resulting tag is a function of (key, IV)
│                       │       │                   only and
│                       │       │                   verifies against any ciphertext produced under the same
│                       │       │                   (key, IV)
│                       │       │                   pair.
│                       │       │                   The OpenSSL SSL/TLS implementation is not affected: AES-OCB
│                       │       │                    is not a
│                       │       │                   TLS cipher suite, and libssl does not call EVP_Cipher() in
│                       │       │                   any case.
│                       │       │                   Applications that drive AES-OCB through the documented
│                       │       │                   streaming AEAD
│                       │       │                   API (EVP_CipherUpdate / EVP_CipherFinal_ex) are not
│                       │       │                   affected.  Only
│                       │       │                   applications that combine the AES-OCB cipher with the
│                       │       │                   EVP_Cipher()
│                       │       │                   one-shot API are vulnerable.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue, as AES-OCB is outside the OpenSSL FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 9.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45445 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/323f0b6e7d
│                       │       │                  │       530a4cb4336d50c88cb70f3ac2a451 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/787a6dfba8
│                       │       │                  │       1b7b09c1e05ab31396c0cd7c36b3f7 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7ac4715234
│                       │       │                  │       ee72d9f3c93426a2c08554b5b771af 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/843c9b94ca
│                       │       │                  │       9c2ed248bb30127bb4f3d7af0d607c 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/983d54b5cc
│                       │       │                  │       e8d16147548ed1a37892d1720bbab6 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45445 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-45445 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:18.993Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:57:17.483Z 
│                       ├ [49]  ╭ VulnerabilityID : CVE-2026-34180 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34180 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:152fdf3f9dd5363b08d236dbce0b574ad89a3b564e1182769481
│                       │       │                   93b596385f73 
│                       │       ├ Title           : openssl: OpenSSL: Heap buffer over-read in ASN.1 decoding
│                       │       │                   can lead to denial of service or information disclosure. 
│                       │       ├ Description     : Issue summary: Parsing a crafted DER-encoded ASN.1
│                       │       │                   structure with a primitive
│                       │       │                   element whose content exceeds 2 gigabytes in length may
│                       │       │                   cause a heap buffer
│                       │       │                   over-read on 64-bit Unix and Unix-like platforms.
│                       │       │                   
│                       │       │                   Impact summary: The heap buffer over-read may crash the
│                       │       │                   application (Denial of
│                       │       │                   Service) or to load into the decoded ASN.1 object contents
│                       │       │                   of memory beyond the
│                       │       │                   end of the input buffer.  More typically such ASN.1
│                       │       │                   elements would instead be
│                       │       │                   truncated.
│                       │       │                   An integer truncation in OpenSSL's ASN.1 decoder causes the
│                       │       │                    content length of
│                       │       │                   an ASN.1 primitive element to be mishandled when it exceeds
│                       │       │                    2 gigabytes. In the
│                       │       │                   worst case the truncated length is treated as a request to
│                       │       │                   scan the binary
│                       │       │                   content for a terminating zero byte, possibly causing
│                       │       │                   OpenSSL to read either
│                       │       │                   less than or beyond the end of the allocated buffer.
│                       │       │                   Applications that pass attacker-supplied data to
│                       │       │                   d2i_X509(), d2i_PKCS7(), or
│                       │       │                   any other d2i_* decoding function are affected. OpenSSL's
│                       │       │                   own command-line
│                       │       │                   tools are not vulnerable, as data read through the BIO
│                       │       │                   layer is checked before
│                       │       │                   it reaches the affected code. The issue only affects 64-bit
│                       │       │                    Unix and Unix-like
│                       │       │                   platforms; 32-bit platforms and 64-bit Windows are not
│                       │       │                   affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by this issue,
│                       │       │                   as the affected code is outside the OpenSSL FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34180 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/1c6908e4fa
│                       │       │                  │       5fa568752221d8eaf561a809751e5d 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/cbe418ae97
│                       │       │                  │       8539cf14a398a207dba834c0e93e83 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d93853c421
│                       │       │                  │       10d6319e3df07842b488cb9f7ac5ff 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/da5d62af75
│                       │       │                  │       f69d6fbf7803743d7c56ac75461e43 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/f696c73c3e
│                       │       │                  │       61b8c502d040af62e690c060908a16 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-34180 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-34180 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.6Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:21.753Z 
│                       ├ [50]  ╭ VulnerabilityID : CVE-2026-34181 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34181 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:949cdcd1fc077cb282d0f63ccaa8491c8a20b6731becd16f477d
│                       │       │                   1152bc455569 
│                       │       ├ Title           : openssl: PKCS#12 Files with PBMAC1 Are Accepted with Short
│                       │       │                   HMAC Keys 
│                       │       ├ Description     : Issue Summary: The PKCS#12 file processing fails to perform
│                       │       │                    sufficient input
│                       │       │                   validation for files that use Password-Based Message
│                       │       │                   Authentication Code 1
│                       │       │                   (PBMAC1) integrity mechanism allowing a certificate and
│                       │       │                   private key forgery.
│                       │       │                   
│                       │       │                   Impact Summary: An attacker impersonating a user can cause
│                       │       │                   a service reading
│                       │       │                   PKCS#12 files to accept forged certificates and private
│                       │       │                   keys with a 1 in 256
│                       │       │                   probability.
│                       │       │                   If a service accepting PKCS#12 files is using passwords for
│                       │       │                    authenticating
│                       │       │                   the received files, the attacker can create unencrypted
│                       │       │                   PKCS#12 files that
│                       │       │                   use PBMAC1 authentication that specifies an HMAC key of
│                       │       │                   only one byte, allowing
│                       │       │                   them to craft a file that will be accepted with a 1 in 256
│                       │       │                   That would then cause the service to accept a certificate
│                       │       │                   and private key
│                       │       │                   controlled by the attacker.
│                       │       │                   The FIPS modules are not affected by this issue, as the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34181 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/0300eb9ddc
│                       │       │                  │       e7a0895bf301a4b0c03a9da2313a0f 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/79eb76a937
│                       │       │                  │       e474bb7610a0a3dc57131dc8dc6610 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/85dcbb3aba
│                       │       │                  │       a4878af5c8fbbe11bce708fcf984a7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/ec36f2417c
│                       │       │                  │       4ddd8cabce4b4a60a3d7a7365f2d81 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-34181 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-34181 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.74Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:13.673Z 
│                       ├ [51]  ╭ VulnerabilityID : CVE-2026-42766 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42766 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:09088481d5b3cd7bd33fadc6adc264f9c54eeed5ba05da1eed91
│                       │       │                   a897fee11ce9 
│                       │       ├ Title           : openssl: Possible NULL Dereference in Password-Based CMS
│                       │       │                   Decryption 
│                       │       ├ Description     : Issue summary: A specially crafted password-encrypted CMS
│                       │       │                   message
│                       │       │                   can trigger a NULL pointer dereference during CMS
│                       │       │                   decryption.
│                       │       │                   
│                       │       │                   Impact summary: This NULL pointer dereference leads to an
│                       │       │                   application crash
│                       │       │                   and a Denial of Service.
│                       │       │                   The CMS PasswordRecipientInfo.keyDerivationAlgorithm field
│                       │       │                   is defined as
│                       │       │                   OPTIONAL in the ASN.1 specification and may therefore be
│                       │       │                   absent in specially
│                       │       │                   crafted inputs. During the password-based CMS decryption
│                       │       │                   the OpenSSL
│                       │       │                   CMS implementation dereferences this field without first
│                       │       │                   checking whether it
│                       │       │                   was present.
│                       │       │                   An attacker who supplies such a CMS message to an
│                       │       │                   application performing
│                       │       │                   password-based CMS decryption can trigger an application
│                       │       │                   crash, leading to
│                       │       │                   a Denial of Service.
│                       │       │                   Applications that process password-encrypted CMS messages
│                       │       │                   may be affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42766 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/056d06c191
│                       │       │                  │       8fafbb98c1c85a02e4c47cc4e199ce 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/12bc26ffb3
│                       │       │                  │       a2be728c9b86e1cae277de5b33dfa4 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/3ff6491361
│                       │       │                  │       5d648cfbb6a6f1cf5529ae7ea829d7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/ab52d88cb5
│                       │       │                  │       374876d59aee3c91f9e4ccce2b7ce4 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/da26f36873
│                       │       │                  │       2b83e40e9d356fe61c3d3aaab6d2e8 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42766 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-42766 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:07.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:25:08.923Z 
│                       ├ [52]  ╭ VulnerabilityID : CVE-2026-42767 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42767 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ef5a014ff0e0496bd41233cfa2674bd07088d37a8dc982c01aee
│                       │       │                   5752e44db4de 
│                       │       ├ Title           : openssl: NULL Pointer Dereference in CRMF EncryptedValue
│                       │       │                   Decryption 
│                       │       ├ Description     : Issue summary: An attacker-controlled CMP (Certificate
│                       │       │                   Management Protocol)
│                       │       │                   server could trigger a NULL pointer dereference in a CMP
│                       │       │                   client application.
│                       │       │                   
│                       │       │                   Impact summary: A NULL pointer dereference causes a crash
│                       │       │                   of the
│                       │       │                   application and a Denial of Service.
│                       │       │                   An attacker controlling a CMP server (or acting as a
│                       │       │                   man-in-the-middle) could
│                       │       │                   craft a CMP response containing a CRMF (Certificate Request
│                       │       │                    Message Format)
│                       │       │                   CertRepMessage with an EncryptedValue structure where the
│                       │       │                   symmAlg field
│                       │       │                   has an algorithm OID but no parameters field. When the
│                       │       │                   OpenSSL CMP client
│                       │       │                   processes this response, the NULL dereference occurs,
│                       │       │                   causing a crash of
│                       │       │                   the CMP client.
│                       │       │                   Applications that process untrusted CMP/CRMF messages may
│                       │       │                   be affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42767 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/61a86a8cd7
│                       │       │                  │       3546c9fea916f3d304c1293e05c046 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/665d525408
│                       │       │                  │       3affde9982efca7c41dd01cacc8774 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/810b722f77
│                       │       │                  │       2652ad48042bcc7ab07e3414b11d0f 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/b90ff3b1bd
│                       │       │                  │       33b1c18e6a09936d097c2eddef8873 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/e6f912907f
│                       │       │                  │       c2ec82a0fd07aae55172c5e5e3d90d 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42767 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-42767 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.093Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:39.02Z 
│                       ├ [53]  ╭ VulnerabilityID : CVE-2026-42768 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42768 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ef7f36bd37a3a2b55603362f60e19c8cd126548280e99191010a
│                       │       │                   2e76c3822502 
│                       │       ├ Title           : openssl: Multi-RecipientInfo Bleichenbacher Oracle in
│                       │       │                   CMS_decrypt() and PKCS7_decrypt() 
│                       │       ├ Description     : Issue summary: The CMS_decrypt and PKCS7_decrypt functions
│                       │       │                   are vulnerable to
│                       │       │                   Bleichenbacher-style attack when an attacker is able to
│                       │       │                   provide the CMS or
│                       │       │                   S/MIME messages and observe the error code and/or
│                       │       │                   decryption output.
│                       │       │                   
│                       │       │                   Impact summary: The Bleichenbacher-style attack allows an
│                       │       │                   attacker to use the
│                       │       │                   victim's vulnerable application as a way to decrypt or sign
│                       │       │                    messages with the
│                       │       │                   victim's private RSA key.
│                       │       │                   The attack is possible in 2 variants.
│                       │       │                   1. The decryption API (CMS_decrypt(), PKCS7_decrypt()) is
│                       │       │                   used without
│                       │       │                   providing the recipient certificate. In this case OpenSSL
│                       │       │                   iterates over every
│                       │       │                   KeyTransRecipientInfo (KTRI) without stopping at the first
│                       │       │                   success.
│                       │       │                   An attacker who authors a message with two KTRI entries —
│                       │       │                   the first one
│                       │       │                   wrapping a real CEK under the victim's public key, the
│                       │       │                   second with an
│                       │       │                   arbitrary probe ciphertext — obtains opportunity to iterate
│                       │       │                    the 2nd KTRI to
│                       │       │                   get a valid PKCS#1 v1.5 padding if the error code of the
│                       │       │                   application is
│                       │       │                   available.
│                       │       │                   That is a Bleichenbacher oracle (Bleichenbacher, CRYPTO
│                       │       │                   '98): an
│                       │       │                   adaptive-chosen-ciphertext side channel from which the
│                       │       │                   attacker decrypts any
│                       │       │                   RSA ciphertext to the victim's key or forges any PKCS#1
│                       │       │                   v1.5 signature under
│                       │       │                   it.
│                       │       │                   2. When the decryption API (CMS_decrypt(), PKCS7_decrypt())
│                       │       │                    is provided with
│                       │       │                   the recipient certificate, and the recipient is not found,
│                       │       │                   a random
│                       │       │                   key is substituted.
│                       │       │                   An attacker who authors a message and is able to compare
│                       │       │                   both error code and
│                       │       │                   the result of the decryption, can mount a Bleichenbacher
│                       │       │                   oracle.
│                       │       │                   We are not aware of any applications that provide a remote
│                       │       │                   attacker
│                       │       │                   an opportunity to mount an attack described in these
│                       │       │                   scenarios. We consider
│                       │       │                   the existence of such application very unlikely, and for
│                       │       │                   this reason this
│                       │       │                   CVE has been evaluated as Low severity.
│                       │       │                   To avoid these attacks, when RSA PKCS#1 v1.5 Key Transport
│                       │       │                   is in use, the
│                       │       │                   invoked EVP_PKEY_decrypt() will use the implicit rejection
│                       │       │                   mechanism described
│                       │       │                   in draft-irtf-cfrg-rsa-guidance. In previous OpenSSL
│                       │       │                   releases the implicit
│                       │       │                   rejection was explicitly disabled.
│                       │       │                   The implicit rejection mechanism always returns a plaintext
│                       │       │                    value,
│                       │       │                   the symmetric key. This result is deterministic for the
│                       │       │                   ciphertext and the
│                       │       │                   private key.  The length of the decryption result can
│                       │       │                   happen to match the
│                       │       │                   length of the key of the symmetric cipher that was used for
│                       │       │                    the content
│                       │       │                   encryption. When a certificate is not provided, the last
│                       │       │                   RecipientInfo
│                       │       │                   producing a key that looks valid will be used. It may cause
│                       │       │                    getting garbage
│                       │       │                   content on decryption. As a proper way to deal with this a
│                       │       │                   recipient
│                       │       │                   certificate has to be provided to identify the particular
│                       │       │                   RecipientInfo for
│                       │       │                   decryption.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, and 3.4 are not affected
│                       │       │                    by this issue, as
│                       │       │                   CMS and S/MIME processing happens outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-514 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42768 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/a2ca7b2d73
│                       │       │                  │       e0ffc1eae183fe6e1741dac767cb4f 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/bbb151a830
│                       │       │                  │       41705d9d001ed2f9c12f5523e1b54d 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/dd68364107
│                       │       │                  │       a58841c0a2546812518b65d3a23abd 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/f04b377be3
│                       │       │                  │       d821741c86d1f4bf84dee09f3d5c3e 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-42768 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-42768 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.223Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:12.833Z 
│                       ├ [54]  ╭ VulnerabilityID : CVE-2026-42769 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42769 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:963338695fe754bed411ecc8c7ea5a024e0e4d5c52a78f16209a
│                       │       │                   7d0692fe7adc 
│                       │       ├ Title           : openssl: Trust-Anchor Substitution via cert/issuer Typo in
│                       │       │                   CMP rootCaKeyUpdate 
│                       │       ├ Description     : Issue Summary: An error in the callback used to verify the
│                       │       │                   certificate
│                       │       │                   provided in a Root CA key update Certificate Management
│                       │       │                   Protocol (CMP)
│                       │       │                   message response rendered the certificate validation
│                       │       │                   ineffectual, which
│                       │       │                   could lead to escalation of credentials from the
│                       │       │                   Registration Authority (RA)
│                       │       │                   level to the root Certification Authority (root CA) level.
│                       │       │                   
│                       │       │                   Impact Summary: The Registration Autority could replace the
│                       │       │                    root CA
│                       │       │                   certificate for the CMP clients with an arbitrary root CA
│                       │       │                   certificate.
│                       │       │                   One of the parts of the Certificate Management Protocol
│                       │       │                   (CMP), specified in
│                       │       │                   RFC 9810, is Root Certification Authority (root CA) key
│                       │       │                   Rollover,
│                       │       │                   which is sent by the server in a message with type
│                       │       │                   'id-it-rootCaKeyUpdate'.
│                       │       │                   As part of these messages, 'newWithOld' certificate, the
│                       │       │                   new root CA
│                       │       │                   certificate signed with the old root CA key, is provided,
│                       │       │                   and verifying its
│                       │       │                   signature is crucial for transferring the trust from the
│                       │       │                   old CA key to the
│                       │       │                   new one.
│                       │       │                   The 'id-it-rootCaKeyUpdate' messages are expected to be
│                       │       │                   processed with
│                       │       │                   OSSL_CMP_get1_rootCaKeyUpdate(), that is expected to verify
│                       │       │                    the 'newWithOld'
│                       │       │                   certificate.  A typo in the certificate chain building code
│                       │       │                    led to adding
│                       │       │                   an incorrect certificate ('newWithOld' instead of
│                       │       │                   'oldRoot') to the
│                       │       │                   certificate chain, rendering the certificate verification
│                       │       │                   process ineffectual
│                       │       │                   (only the issuer name and the algorithm OIDs were verified
│                       │       │                   by other parts
│                       │       │                   of the verification code).
│                       │       │                   An attacker who already has credentials that satisfy the
│                       │       │                   CMP message
│                       │       │                   protection checks can generate a new key pair and use a
│                       │       │                   crafted self-signed
│                       │       │                   certificate in its 'id-it-rootCaKeyUpdate' CMP messages
│                       │       │                   which affected CMP
│                       │       │                   clients would accept as a new trust anchor.
│                       │       │                   Significant preconditions for the attack (having valid
│                       │       │                   RA-level credentials)
│                       │       │                   are the reason the issue was assigned Low severity.
│                       │       │                   The FIPS modules are not affected by this issue, as the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-295 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42769 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/54d0989997
│                       │       │                  │       e5fc26057009a9782c3441ce3842fb 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/777b363b16
│                       │       │                  │       fcf2153bb3ded39dc3838713667c44 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d35cd473a2
│                       │       │                  │       71bf3ce7bf3d32af53217fb83ae92c 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/d531f21c0f
│                       │       │                  │       e99067a66fc0ff1161ef127f9cd70b 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-42769 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-42769 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:26:34.447Z 
│                       ├ [55]  ╭ VulnerabilityID : CVE-2026-42770 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42770 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:adbac667db8151d92fd8b184fcfe0ebef61ff2e8e52e9ca6c79d
│                       │       │                   223b77ca75d5 
│                       │       ├ Title           : openssl: FFC-DH Peer Validation Uses Attacker-Supplied q 
│                       │       ├ Description     : Issue summary: When EVP_PKEY_derive_set_peer() is called
│                       │       │                   with a DHX (X9.42)
│                       │       │                   peer key, the peer key is not properly checked for the
│                       │       │                   subgroup membership.
│                       │       │                   
│                       │       │                   Impact summary: A malicious peer which presents an X9.42
│                       │       │                   key carrying the
│                       │       │                   victim's p and g parameters, a forged q = r (a small prime
│                       │       │                   factor of the
│                       │       │                   cofactor (p−1)/q_local), and a public value Y of order r
│                       │       │                   can recover the
│                       │       │                   victim's private key after a small number of key exchange
│                       │       │                   attempts.
│                       │       │                   When EVP_PKEY_derive_set_peer() is called with a DHX
│                       │       │                   (X9.42) peer key, the
│                       │       │                   subgroup membership check Y^q ≡ 1 (mod p) is performed
│                       │       │                   using the peer's
│                       │       │                   own q parameter, not the local key's q. The peer's domain
│                       │       │                   parameters are
│                       │       │                   then matched against the domain parameters of the private
│                       │       │                   key, but the value
│                       │       │                   of q is not compared.
│                       │       │                   A malicious peer who presents an X9.42 key carrying the
│                       │       │                   victim's p, g,
│                       │       │                   a forged q = r (a small prime factor of the cofactor), and
│                       │       │                   a public
│                       │       │                   value Y of order r passes all checks. The shared secret
│                       │       │                   then takes only
│                       │       │                   r distinct values, leaking priv mod r. Repeating for each
│                       │       │                   small-prime
│                       │       │                   factor of the cofactor and combining via CRT recovers the
│                       │       │                   full private
│                       │       │                   key (Lim–Lee / small-subgroup-confinement attack).
│                       │       │                   The realistic attack surface is narrow: principally CMP
│                       │       │                   deployments with
│                       │       │                   long-lived RA/CA DHX keys and bespoke enterprise or
│                       │       │                   government applications
│                       │       │                   using X9.42 DHX static keys with interactive protocols and
│                       │       │                   therefore this
│                       │       │                   issue was assigned Low severity.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are
│                       │       │                   affected by this
│                       │       │                   issue. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42770 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/3da5a516cd
│                       │       │                  │       2635a320ff748503db2cef7c4b0f02 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/3ddbb7ab50
│                       │       │                  │       bd93dfc59cbe08e269a67605aeebdb 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/5f452bba2c
│                       │       │                  │       681423d8fcffd120a19b757ee42e3c 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/7fbfde7677
│                       │       │                  │       ed8808828bf00ff01c937ca04bdda2 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/ca2237ab56
│                       │       │                  │       15641b662183b077f62c08d75e8070 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42770 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-42770 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.523Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:00.133Z 
│                       ├ [56]  ╭ VulnerabilityID : CVE-2026-45446 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45446 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:35f0c80c116237f141042da03362ae1e0b946343a3d47f7b712d
│                       │       │                   3fd8d514a2b4 
│                       │       ├ Title           : openssl: Incorrect Tag Processing for Empty Messages in
│                       │       │                   AES-GCM-SIV and AES-SIV modes 
│                       │       ├ Description     : Issue summary: The implementations of AES-SIV (RFC 5297)
│                       │       │                   and AES-GCM-SIV
│                       │       │                   (RFC 8452) mishandle the authentication of AAD (Additional
│                       │       │                   Authenticated
│                       │       │                   Data) with an empty ciphertext allowing a forgery of such
│                       │       │                   messages.
│                       │       │                   
│                       │       │                   Impact summary: An attacker can forge empty messages with
│                       │       │                   arbitrary AAD
│                       │       │                   to the victim's application using these ciphers.
│                       │       │                   AES-SIV (RFC 5297) and AES-GCM-SIV (RFC 8452) are
│                       │       │                   nonce-misuse-resistant AEAD
│                       │       │                   modes: they accept a key, nonce, optional AAD (bytes that
│                       │       │                   are authenticated
│                       │       │                   but not encrypted), and plaintext, and produces ciphertext
│                       │       │                   plus a 16-byte
│                       │       │                   tag. On decrypt, `EVP_DecryptFinal_ex()` is documented to
│                       │       │                   return success only
│                       │       │                   if the tag is verified succesfully.
│                       │       │                   In OpenSSL's provider implementation of these ciphers, the
│                       │       │                   expected tag is
│                       │       │                   computed only when decryption function is invoked with
│                       │       │                   non-empty data.
│                       │       │                   If the caller supplies AAD and then calls
│                       │       │                   `EVP_DecryptFinal_ex()` without
│                       │       │                   invocation of the ciphertext update, which can happen when
│                       │       │                   the received
│                       │       │                   ciphertext length is zero, the tag is never recalculated
│                       │       │                   and still holds its
│                       │       │                   all-zeros value.
│                       │       │                   When AES-GCM-SIV is used, an attacker who sends arbitrary
│                       │       │                   AAD, empty
│                       │       │                   ciphertext, and all-zeros tag passes authentication under
│                       │       │                   any key they do not
│                       │       │                   know, single-shot. When AES-SIV is used, for mounting the
│                       │       │                   attack it's
│                       │       │                   necessary for the application to reuse the decryption
│                       │       │                   context without
│                       │       │                   resetting the key.
│                       │       │                   AES-SIV is implemented since OpenSSL 3.0. AES-GCM-SIV is
│                       │       │                   implemented since
│                       │       │                   OpenSSL 3.2.
│                       │       │                   No protocols implemented in OpenSSL itself
│                       │       │                   (TLS/CMS/PKCS7/HPKE/QUIC) support
│                       │       │                   either AES-GCM-SIV or AES-SIV. To mount an attack, the
│                       │       │                   applications must
│                       │       │                   implement their own protocol and use the EVP interface.
│                       │       │                   Also they must skip the
│                       │       │                   ciphertext update when a message with an empty ciphertext
│                       │       │                   arrives.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as these algorithms are not FIPS approved and the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45446 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/25b32cd9d4
│                       │       │                  │       1d2bc01b6abc425bb4baf2c2236fdc 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/71e2a5d263
│                       │       │                  │       518cf5866043bd60ee4994d59e53a3 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7fe3f33a3b
│                       │       │                  │       3a4c487aa4dcdbc87057f66ffd2b85 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/daca0f48e4
│                       │       │                  │       a69a2892a62262bad59e62a8a76598 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/eec5e9bf0d
│                       │       │                  │       867333b8495e456f5235d225798a68 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45446 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-45446 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:19.137Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:57:01.743Z 
│                       ├ [57]  ╭ VulnerabilityID : CVE-2026-7383 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7383 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f17fe39f0dc6c038a59e5dd224c110749cf97ea6094fa45740bf
│                       │       │                   023fc66bcc1c 
│                       │       ├ Title           : openssl: OpenSSL: Heap buffer overflow due to signed
│                       │       │                   integer overflow in Unicode output sizing 
│                       │       ├ Description     : Issue summary: A signed integer overflow when sizing the
│                       │       │                   destination
│                       │       │                   buffer for Unicode output in ASN1_mbstring_ncopy() can lead
│                       │       │                    to a heap
│                       │       │                   buffer overflow.
│                       │       │                   
│                       │       │                   Impact summary: A heap buffer overflow may lead to a crash
│                       │       │                   or possibly
│                       │       │                   attacker controlled code execution or other undefined
│                       │       │                   behaviour.
│                       │       │                   In ASN1_mbstring_copy() and ASN1_mbstring_ncopy() the
│                       │       │                   size for Unicode output is computed in a signed int: by
│                       │       │                   left shift
│                       │       │                   of the input character count for BMPSTRING (UTF-16) and
│                       │       │                   UNIVERSALSTRING (UTF-32), and by summing per-character byte
│                       │       │                    counts
│                       │       │                   for UTF8STRING. The calculation overflows when the input
│                       │       │                   reaches
│                       │       │                   around 2^30 characters. In the worst case (UNIVERSALSTRING
│                       │       │                   at 2^30
│                       │       │                   characters) the size wraps to zero, OPENSSL_malloc(1) is
│                       │       │                   called, and
│                       │       │                   the subsequent character copy writes several gigabytes past
│                       │       │                    the
│                       │       │                   one-byte allocation.
│                       │       │                   X.509 certificate processing routes through
│                       │       │                   ASN1_STRING_set_by_NID(),
│                       │       │                   whose DIRSTRING_TYPE mask excludes UNIVERSALSTRING and
│                       │       │                   whose per-NID
│                       │       │                   size limits cap the input length; no network protocol or
│                       │       │                   certificate-handling path in OpenSSL exercises the
│                       │       │                   overflow.
│                       │       │                   Triggering the bug requires an application that calls
│                       │       │                   ASN1_mbstring_copy() or ASN1_mbstring_ncopy() directly, or
│                       │       │                   registers
│                       │       │                   a custom string type via ASN1_STRING_TABLE_add(), with
│                       │       │                   attacker-controlled input on the order of half a gigabyte
│                       │       │                   or more.
│                       │       │                   For these reasons this issue was assigned Low severity.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue, as the affected code is outside the OpenSSL
│                       │       │                   FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7383 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/4f8d2bddaa
│                       │       │                  │       2c8e06f9c33390ee1717059a6e4be6 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/80c15faaf7
│                       │       │                  │       8042bbb8654a0e234c50c381732f74 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/bd17511070
│                       │       │                  │       fb39a67bfa19682affb765e706a974 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/c332adaced
│                       │       │                  │       43bcbb85f97410597e951c11ec3083 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/d32350ae8e
│                       │       │                  │       f7426718f5aa9e383d4b51398ee255 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-7383 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-7383 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:50.337Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:46:08.173Z 
│                       ├ [58]  ╭ VulnerabilityID : CVE-2026-9076 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ca51e62bfbdd19a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9076 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1550b0d7f59c2948161f9a44ca57e8a79f613e7e32ba20c21b2b
│                       │       │                   dca9d9abcf73 
│                       │       ├ Title           : openssl: OpenSSL: Denial of Service due to heap
│                       │       │                   out-of-bounds read in CMS password-based decryption 
│                       │       ├ Description     : Issue summary: When CMS password-based decryption (RFC 3211
│                       │       │                    / PWRI key unwrap)
│                       │       │                   processes attacker-supplied CMS data, an attacker-chosen
│                       │       │                   stream-mode KEK
│                       │       │                   cipher can trigger a heap out-of-bounds read in
│                       │       │                   kek_unwrap_key().
│                       │       │                   
│                       │       │                   Impact summary: A heap buffer over-read may trigger a crash
│                       │       │                    which leads to
│                       │       │                   Denial of Service for an application if the input buffer
│                       │       │                   ends at a memory
│                       │       │                   page boundary and the following page is unmapped. There is
│                       │       │                   no information
│                       │       │                   disclosure as the over-read bytes are not revealed to the
│                       │       │                   attacker.
│                       │       │                   The key unwrapping function performs a check-byte test as
│                       │       │                   specified in the
│                       │       │                   RFC that reads 7 bytes from a heap allocation that is based
│                       │       │                    on the wrapped
│                       │       │                   key length from the message. There is a minimum length
│                       │       │                   check based on the
│                       │       │                   block length of the wrapping cipher. However the cipher is
│                       │       │                   selected from
│                       │       │                   an OID carried in the attacker's PWRI
│                       │       │                   keyEncryptionAlgorithm with no
│                       │       │                   requirement that the cipher be a block cipher. When an
│                       │       │                   attacker selects
│                       │       │                   a stream-mode cipher the guard will be ineffective and the
│                       │       │                   allocated buffer
│                       │       │                   containing the unwrapped key can be too small to fit the
│                       │       │                   check-bytes
│                       │       │                   specified in the RFC and a buffer over-read can happen.
│                       │       │                   Applications calling CMS_decrypt() or
│                       │       │                   CMS_decrypt_set1_password()
│                       │       │                   (equivalently openssl cms -decrypt -pwri_password ...) on
│                       │       │                   untrusted CMS
│                       │       │                   data are vulnerable to this issue. No password knowledge is
│                       │       │                    required: the
│                       │       │                   over-read happens during the unwrap attempt before any
│                       │       │                   authentication
│                       │       │                   succeeds.
│                       │       │                   The over-read is limited to a few bytes and is not written
│                       │       │                   to output, so
│                       │       │                   there is no information disclosure. Triggering a crash
│                       │       │                   requires the
│                       │       │                   allocation to border unmapped memory, which is unlikely
│                       │       │                   with the normal
│                       │       │                   allocator.
│                       │       │                   The FIPS modules are not affected by this issue. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9076 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/05b0663668
│                       │       │                  │       42f930fadd9a6e94df98030af431bb 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/3d8d5bc105
│                       │       │                  │       6b2f62da9fede23fedbf47e85187b0 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/715349a1d7
│                       │       │                  │       c6db970e6815dafb90915f07307f98 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/77bf00ab13
│                       │       │                  │       f6ff5e516535432f0328ed70ec0c26 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/eecbe33097
│                       │       │                  │       7e8d023aae1ca2d9bdbe983ef3fdc6 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-9076 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-9076 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:50.997Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:45:58.157Z 
│                       ├ [59]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                       │       ├ PkgName         : libsystemd0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 68ed9dc5cf416dae 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5d145e9df29a8f6543f84e7bef545b34fde5a36eb36e2ac3b26f
│                       │       │                   020bea130f7b 
│                       │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                       │       │                   terminals via logger command 
│                       │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                       │       │                   sequences to the terminals of arbitrary users when a
│                       │       │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                       │       │                    is set. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-669 
│                       │       ├ VendorSeverity   ╭ nvd   : 1 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 3.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 2.9 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                       │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                       │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                       │       │                         8/1 
│                       │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                       │       ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                       ├ [60]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libudev1@259.5-0ubuntu3 
│                       │       ├ PkgName         : libudev1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                       │       │                  │       stro=ubuntu-26.04 
│                       │       │                  ╰ UID : 419f3d2219f938db 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dd718a7bcb6e9c06ed291100a512d002565dd8091f3763b915a2
│                       │       │                   1817a4e27cdd 
│                       │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                       │       │                   terminals via logger command 
│                       │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                       │       │                   sequences to the terminals of arbitrary users when a
│                       │       │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                       │       │                    is set. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-669 
│                       │       ├ VendorSeverity   ╭ nvd   : 1 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 3.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 2.9 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                       │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                       │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                       │       │                         8/1 
│                       │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                       │       ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                       ├ [61]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 41d4afb2fde363cf 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:45b8aef37bb5706f655a98743c8ed5e5e1628f70608deaf493f2
│                       │       │                   a0a44eee832d 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [62]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 41d4afb2fde363cf 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:631e7e35e7fa6fee84df71b1177b7eb65b8dc97263a7512c1f22
│                       │       │                   e57730175ede 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [63]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e1bfbadc9113c00a 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f22afe571b8cae3cc33307056ff454b4c5e6af78296c6d6998fc
│                       │       │                   23c2990c9037 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [64]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e1bfbadc9113c00a 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:69f4a164ae80fe251ac162692e93b67522c1e5b15d1bdbdc34e3
│                       │       │                   43e7ec7f5935 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [65]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : login.defs 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : eaf648d5e4e975f7 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:75577360c3d7686cdf1c11f53c4fa660a12663294238325c9290
│                       │       │                   0716b8178d55 
│                       │       ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │       │                   /etc/login.defs could lead to compromise 
│                       │       ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │       │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │       │                   165535 for the first user account) that can realistically
│                       │       │                   conflict with the uids of users defined on locally
│                       │       │                   administered networks, potentially leading to account
│                       │       │                   takeover, e.g., by leveraging newuidmap for access to an
│                       │       │                   NFS home directory (or same-host resources in the case of
│                       │       │                   remote logins by these local network users). NOTE: it may
│                       │       │                   also be argued that system administrators should not have
│                       │       │                   assigned uids, within local networks, that are within the
│                       │       │                   range that can occur in /etc/subuid. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-1188 
│                       │       ├ VendorSeverity   ╭ alma       : 1 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ oracle-oval: 1 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                       │       │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-56433 
│                       │       │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │       │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
│                       │       │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                       │       │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                       │       │                  │       -L241 
│                       │       │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                       │       │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/
│                       │       │                  │       4.4 
│                       │       │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │       │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │       │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │       ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                       ├ [66]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8ee2f7cab69bfa6c19d04b6c69141d9bdb8604fc3371951e7485
│                       │       │                   1ec126804176 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [67]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:74cc28ad88819e8ac44e03303b74a5d80d7600d147fe8d63680f
│                       │       │                   ace9f067bd0f 
│                       │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                       │       │                   improper hostname canonicalization 
│                       │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                       │       │                   canonicalization in the `login(1)` utility, when invoked
│                       │       │                   with the `-h` option, can modify the supplied remote
│                       │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                       │       │                   could exploit this by providing a specially crafted
│                       │       │                   hostname, potentially bypassing host-based Pluggable
│                       │       │                   Authentication Modules (PAM) access control rules that rely
│                       │       │                    on fully qualified domain names. This could lead to
│                       │       │                   unauthorized access. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-289 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                  │        │           L/A:N 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [68]  ╭ VulnerabilityID : CVE-2026-45447 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45447 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8a77d64765fc1eb2621135c38284a10d6d3e3c70e4e052f28344
│                       │       │                   e66f1a54e942 
│                       │       ├ Title           : openssl: Heap Use-After-Free in OpenSSL PKCS7_verify() 
│                       │       ├ Description     : Issue summary: A specially crafted PKCS#7 or S/MIME signed
│                       │       │                   message could
│                       │       │                   trigger a use-after-free during PKCS#7 signature
│                       │       │                   verification.
│                       │       │                   
│                       │       │                   Impact summary: A use-after-free may result in process
│                       │       │                   crashes, heap
│                       │       │                   corruption, or potentially remote code execution.
│                       │       │                   When processing a PKCS#7 or S/MIME signed message, if the
│                       │       │                   SignedData
│                       │       │                   digestAlgorithms field is present as an empty ASN.1 SET,
│                       │       │                   OpenSSL may
│                       │       │                   incorrectly free a caller-owned BIO during PKCS7_verify().
│                       │       │                   A subsequent
│                       │       │                   use of the BIO by the calling application results in a
│                       │       │                   use-after-free
│                       │       │                   condition.
│                       │       │                   In the common case this occurs when the application later
│                       │       │                   calls
│                       │       │                   BIO_free() on the BIO originally passed to PKCS7_verify().
│                       │       │                   Depending
│                       │       │                   on allocator behavior and application-specific BIO usage
│                       │       │                   patterns, this
│                       │       │                   may result in a crash or other memory corruption. In some
│                       │       │                   application
│                       │       │                   contexts this may potentially be exploitable for remote
│                       │       │                   code execution.
│                       │       │                   Applications that process PKCS#7 or S/MIME signed messages
│                       │       │                   using OpenSSL
│                       │       │                   PKCS#7 APIs may be affected. Applications using the CMS
│                       │       │                   APIs for this
│                       │       │                   processing are not affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : HIGH 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 3 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45447 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/3aad5eb7af
│                       │       │                  │       4de4ee0633c30a8541a54d9bbde63c 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/7d4a980c62
│                       │       │                  │       258c5910cc883936e0c8dbab4d75a8 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/9dfd688ad2
│                       │       │                  │       290fc5075cacbc9bf0c9a93eefed54 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/a541ae8bfe
│                       │       │                  │       849a30cc885e8780715c0f488e496c 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/c505d7559d
│                       │       │                  │       a5d5f9f2c3913c6883a5562ce7273e 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45447 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-45447 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:19.277Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:56:50.707Z 
│                       ├ [69]  ╭ VulnerabilityID : CVE-2026-34182 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34182 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2ed735ca755a9ca7a929d2bb6c68da6479c3f300cd0aeaa7ef94
│                       │       │                   c9c01b67f0b3 
│                       │       ├ Title           : openssl: CMS AuthEnvelopedData Processing May Accept Forged
│                       │       │                    Messages 
│                       │       ├ Description     : Issue Summary: Cryptographic Message Services (CMS)
│                       │       │                   processing fails to perform
│                       │       │                   sufficient input validation on the cipher and tag length
│                       │       │                   fields of
│                       │       │                   AuthEnvelopedData containers, leading to various potential
│                       │       │                   compromises.
│                       │       │                   
│                       │       │                   Impact Summary: Attackers making use of these
│                       │       │                   vulnerabilities may achieve
│                       │       │                   key-equivalent functionality for a given CMS recipient
│                       │       │                   and/or bypass integrity
│                       │       │                   validation for a given message.
│                       │       │                   In one use case, an attacker may send a CMS message
│                       │       │                   containing
│                       │       │                   AuthEnvelopedData with the cipher specified as a non-AEAD
│                       │       │                   cipher.  OpenSSL
│                       │       │                   erroneously allows this selection, and attempts to decrypt
│                       │       │                   and validate the
│                       │       │                   message.
│                       │       │                   An on-path attacker who captures one legitimate AES-GCM
│                       │       │                   AuthEnvelopedData
│                       │       │                   addressed to the victim can re-emit it with the
│                       │       │                   recipientInfos set left
│                       │       │                   byte-for-byte intact, so the victim's private key still
│                       │       │                   unwraps the genuine CEK
│                       │       │                   (the content-encryption key), but with the inner OID
│                       │       │                   rewritten to AES-256-OFB
│                       │       │                   (Output Feedback Mode, an unauthenticated keystream mode)
│                       │       │                   and with an
│                       │       │                   attacker-chosen IV and ciphertext. The victim initializes
│                       │       │                   AES-256-OFB under the
│                       │       │                   real CEK, never consults the MAC field, and CMS_decrypt()
│                       │       │                   returns success.
│                       │       │                   If the application under attack responds to the attacker
│                       │       │                   with any indicator
│                       │       │                   showing success or failure of the decryption effort, it is
│                       │       │                   possible for the
│                       │       │                   attacker to use this as an oracle to obtain key equivalent
│                       │       │                   functionality for the
│                       │       │                   CEK used for the chosen recipient of the message.
│                       │       │                   In another use case, an attacker can reduce the tag length
│                       │       │                   of the chosen AEAD
│                       │       │                   cipher for a given AuthEnvelopedData container to be a
│                       │       │                   single byte long,
│                       │       │                   allowing an attacker to brute force CMS decryption,
│                       │       │                   producing an integrity
│                       │       │                   bypass for applications that trust CMS_decrypt() to reject
│                       │       │                   modified content.
│                       │       │                   The FIPS modules are not affected by this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 7.4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34182 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/03c1f4d45f
│                       │       │                  │       b963aee7d5833390c507cd290182bc 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/439ed7d2c0
│                       │       │                  │       962ce964482727264668bf277c333f 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7947e6a81e
│                       │       │                  │       b8776802f159fb6762cb7fcf7e34c7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/9fd97f8cfd
│                       │       │                  │       c2c0be214998de3b2b55c8edf6c7ac 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/d2ca86bcd4
│                       │       │                  │       3e4f17d899f347101766b6107676e0 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-34182 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-34182 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.857Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:05.717Z 
│                       ├ [70]  ╭ VulnerabilityID : CVE-2026-34183 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34183 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f93472ef4d5fd09328fa34933f8cbeef653a0809349c5dd102bc
│                       │       │                   aa3fb9118059 
│                       │       ├ Title           : openssl: Unbounded Memory Growth in the QUIC PATH_CHALLENGE
│                       │       │                    Handler 
│                       │       ├ Description     : Issue summary: Remote peer may exhaust heap memory of the
│                       │       │                   QUIC
│                       │       │                   server or client by flooding it with packets containing
│                       │       │                   PATH_CHALLENGE
│                       │       │                   frames.
│                       │       │                   
│                       │       │                   Impact summary: A malicious remote peer can cause an
│                       │       │                   unbounded
│                       │       │                   memory allocation which can lead to an abnormal termination
│                       │       │                    of the
│                       │       │                   application acting as a QUIC client or server and a Denial
│                       │       │                   of Service.
│                       │       │                   A remote peer may exhaust heap memory by flooding the
│                       │       │                   local
│                       │       │                   QUIC stack with PATH_CHALLENGE frames. The local QUIC
│                       │       │                   stack
│                       │       │                   allocates a PATH_RESPONSE frame for every PATH_CHALLENGE it
│                       │       │                    receives.
│                       │       │                   The allocated PATH_RESPONSE frame gets freed only when the
│                       │       │                   remote
│                       │       │                   peer acknowledges reception of the PATH_RESPONSE frame
│                       │       │                   which will
│                       │       │                   not be done by a malicious peer.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue. The QUIC stack is outside of OpenSSL FIPS
│                       │       │                   module
│                       │       │                   boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-1325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34183 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/5b306efb0b
│                       │       │                  │       3779dfdd0803b4afc9d08c91f11517 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/7d06955ebe
│                       │       │                  │       0ecf8adfd4c1e92018586da47ef9ac 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d2e9efbe49
│                       │       │                  │       00a373227deb136e8665401404ffac 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/fbaa83859c
│                       │       │                  │       01ad64f497b757aaf51be7d05ed9eb 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-34183 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-34183 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:05Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:12:39.05Z 
│                       ├ [71]  ╭ VulnerabilityID : CVE-2026-42764 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42764 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c240e400cf780b90426aeda6cee311abe4e09f4392789348095c
│                       │       │                   0a51ad494c7c 
│                       │       ├ Title           : openssl: NULL pointer dereference in QUIC server initial
│                       │       │                   packet handling 
│                       │       ├ Description     : Issue summary: Receiving a QUIC initial packet with an
│                       │       │                   invalid token may
│                       │       │                   trigger a NULL pointer dereference in the OpenSSL QUIC
│                       │       │                   server with
│                       │       │                   address validation disabled.
│                       │       │                   
│                       │       │                   Impact summary: NULL pointer dereference typically causes
│                       │       │                   abnormal termination
│                       │       │                   of the affected QUIC server process and a Denial of
│                       │       │                   Service.
│                       │       │                   If the address validation is disabled in the OpenSSL QUIC
│                       │       │                   server
│                       │       │                   implementation, an attacker can crash the server by sending
│                       │       │                    an initial
│                       │       │                   packet with an invalid or expired token.
│                       │       │                   By default, the client address validation is enabled in the
│                       │       │                    OpenSSL QUIC server
│                       │       │                   implementation, which makes the default configuration not
│                       │       │                   vulnerable
│                       │       │                   to this issue. However if the SSL_LISTENER_FLAG_NO_VALIDATE
│                       │       │                    is used with
│                       │       │                   the SSL_new_listener() call, the address validation is
│                       │       │                   disabled making the
│                       │       │                   vulnerable code reachable.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42764 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/5e3ed291b8
│                       │       │                  │       af0b03d5d3b9e56a1da69a187e9729 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/a45a0aba80
│                       │       │                  │       95682c88ff4fc4a784892b8c6f0677 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/bf29a458c1
│                       │       │                  │       a231eca87e384c62b9c2553fa57a91 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-42764 
│                       │       │                  ├ [22]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-42764 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:07.693Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:25:25.99Z 
│                       ├ [72]  ╭ VulnerabilityID : CVE-2026-45445 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45445 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6bbc998e4c877bf4c88704bbcf97e2e41bb5bb84edc96244e230
│                       │       │                   6d9d6bafa926 
│                       │       ├ Title           : openssl: AES-OCB IV Ignored on EVP_Cipher() Path 
│                       │       ├ Description     : Issue summary: When an application drives an AES-OCB
│                       │       │                   context through the
│                       │       │                   public EVP_Cipher() one-shot interface, the
│                       │       │                   application-supplied
│                       │       │                   initialisation vector (IV) is silently discarded.
│                       │       │                   
│                       │       │                   Impact summary: Every message encrypted under the same key
│                       │       │                   uses the
│                       │       │                   same effective nonce regardless of the IV supplied by the
│                       │       │                   caller,
│                       │       │                   resulting in (key, nonce) reuse and loss of
│                       │       │                   confidentiality.  If the
│                       │       │                   same code path is used to compute the authentication tag,
│                       │       │                   the tag
│                       │       │                   depends only on the (key, IV) pair and not on the plaintext
│                       │       │                    or
│                       │       │                   ciphertext, allowing universal forgery of arbitrary
│                       │       │                   ciphertext from a
│                       │       │                   single captured message.
│                       │       │                   OpenSSL provides two ways to drive a cipher: the documented
│                       │       │                    streaming
│                       │       │                   interface (EVP_CipherUpdate / EVP_CipherFinal_ex) and a
│                       │       │                   lower-level
│                       │       │                   one-shot, EVP_Cipher(), whose documentation explicitly
│                       │       │                   recommends
│                       │       │                   against use by applications in favour of EVP_CipherUpdate()
│                       │       │                    and
│                       │       │                   EVP_CipherFinal_ex().  The OCB provider's streaming handler
│                       │       │                    flushes
│                       │       │                   the application-supplied IV into the OCB context before
│                       │       │                   processing
│                       │       │                   data; the one-shot handler did not.  Every call to
│                       │       │                   EVP_Cipher() on an
│                       │       │                   AES-OCB context therefore ran with the all-zero key-derived
│                       │       │                    offset
│                       │       │                   state left by cipher initialisation, regardless of the
│                       │       │                   caller's IV.
│                       │       │                   If EVP_EncryptFinal_ex() is subsequently used to obtain
│                       │       │                   the
│                       │       │                   authentication tag, the deferred IV setup runs at that
│                       │       │                   point and
│                       │       │                   clears the running checksum that should have been
│                       │       │                   accumulated over the
│                       │       │                   plaintext.  The resulting tag is a function of (key, IV)
│                       │       │                   only and
│                       │       │                   verifies against any ciphertext produced under the same
│                       │       │                   (key, IV)
│                       │       │                   pair.
│                       │       │                   The OpenSSL SSL/TLS implementation is not affected: AES-OCB
│                       │       │                    is not a
│                       │       │                   TLS cipher suite, and libssl does not call EVP_Cipher() in
│                       │       │                   any case.
│                       │       │                   Applications that drive AES-OCB through the documented
│                       │       │                   streaming AEAD
│                       │       │                   API (EVP_CipherUpdate / EVP_CipherFinal_ex) are not
│                       │       │                   affected.  Only
│                       │       │                   applications that combine the AES-OCB cipher with the
│                       │       │                   EVP_Cipher()
│                       │       │                   one-shot API are vulnerable.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue, as AES-OCB is outside the OpenSSL FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 9.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45445 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/323f0b6e7d
│                       │       │                  │       530a4cb4336d50c88cb70f3ac2a451 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/787a6dfba8
│                       │       │                  │       1b7b09c1e05ab31396c0cd7c36b3f7 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7ac4715234
│                       │       │                  │       ee72d9f3c93426a2c08554b5b771af 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/843c9b94ca
│                       │       │                  │       9c2ed248bb30127bb4f3d7af0d607c 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/983d54b5cc
│                       │       │                  │       e8d16147548ed1a37892d1720bbab6 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45445 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-45445 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:18.993Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:57:17.483Z 
│                       ├ [73]  ╭ VulnerabilityID : CVE-2026-34180 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34180 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:14c78d87575ae528e0b168ba18d74a74821f4630953a7bdffce0
│                       │       │                   d287e440ed98 
│                       │       ├ Title           : openssl: OpenSSL: Heap buffer over-read in ASN.1 decoding
│                       │       │                   can lead to denial of service or information disclosure. 
│                       │       ├ Description     : Issue summary: Parsing a crafted DER-encoded ASN.1
│                       │       │                   structure with a primitive
│                       │       │                   element whose content exceeds 2 gigabytes in length may
│                       │       │                   cause a heap buffer
│                       │       │                   over-read on 64-bit Unix and Unix-like platforms.
│                       │       │                   
│                       │       │                   Impact summary: The heap buffer over-read may crash the
│                       │       │                   application (Denial of
│                       │       │                   Service) or to load into the decoded ASN.1 object contents
│                       │       │                   of memory beyond the
│                       │       │                   end of the input buffer.  More typically such ASN.1
│                       │       │                   elements would instead be
│                       │       │                   truncated.
│                       │       │                   An integer truncation in OpenSSL's ASN.1 decoder causes the
│                       │       │                    content length of
│                       │       │                   an ASN.1 primitive element to be mishandled when it exceeds
│                       │       │                    2 gigabytes. In the
│                       │       │                   worst case the truncated length is treated as a request to
│                       │       │                   scan the binary
│                       │       │                   content for a terminating zero byte, possibly causing
│                       │       │                   OpenSSL to read either
│                       │       │                   less than or beyond the end of the allocated buffer.
│                       │       │                   Applications that pass attacker-supplied data to
│                       │       │                   d2i_X509(), d2i_PKCS7(), or
│                       │       │                   any other d2i_* decoding function are affected. OpenSSL's
│                       │       │                   own command-line
│                       │       │                   tools are not vulnerable, as data read through the BIO
│                       │       │                   layer is checked before
│                       │       │                   it reaches the affected code. The issue only affects 64-bit
│                       │       │                    Unix and Unix-like
│                       │       │                   platforms; 32-bit platforms and 64-bit Windows are not
│                       │       │                   affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by this issue,
│                       │       │                   as the affected code is outside the OpenSSL FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34180 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/1c6908e4fa
│                       │       │                  │       5fa568752221d8eaf561a809751e5d 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/cbe418ae97
│                       │       │                  │       8539cf14a398a207dba834c0e93e83 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d93853c421
│                       │       │                  │       10d6319e3df07842b488cb9f7ac5ff 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/da5d62af75
│                       │       │                  │       f69d6fbf7803743d7c56ac75461e43 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/f696c73c3e
│                       │       │                  │       61b8c502d040af62e690c060908a16 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-34180 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-34180 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.6Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:21.753Z 
│                       ├ [74]  ╭ VulnerabilityID : CVE-2026-34181 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34181 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:06a0c27ba789039b0b5ddc5a56de0a6226f4ba0a433ed106b0cb
│                       │       │                   0a5e0948477c 
│                       │       ├ Title           : openssl: PKCS#12 Files with PBMAC1 Are Accepted with Short
│                       │       │                   HMAC Keys 
│                       │       ├ Description     : Issue Summary: The PKCS#12 file processing fails to perform
│                       │       │                    sufficient input
│                       │       │                   validation for files that use Password-Based Message
│                       │       │                   Authentication Code 1
│                       │       │                   (PBMAC1) integrity mechanism allowing a certificate and
│                       │       │                   private key forgery.
│                       │       │                   
│                       │       │                   Impact Summary: An attacker impersonating a user can cause
│                       │       │                   a service reading
│                       │       │                   PKCS#12 files to accept forged certificates and private
│                       │       │                   keys with a 1 in 256
│                       │       │                   probability.
│                       │       │                   If a service accepting PKCS#12 files is using passwords for
│                       │       │                    authenticating
│                       │       │                   the received files, the attacker can create unencrypted
│                       │       │                   PKCS#12 files that
│                       │       │                   use PBMAC1 authentication that specifies an HMAC key of
│                       │       │                   only one byte, allowing
│                       │       │                   them to craft a file that will be accepted with a 1 in 256
│                       │       │                   That would then cause the service to accept a certificate
│                       │       │                   and private key
│                       │       │                   controlled by the attacker.
│                       │       │                   The FIPS modules are not affected by this issue, as the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34181 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/0300eb9ddc
│                       │       │                  │       e7a0895bf301a4b0c03a9da2313a0f 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/79eb76a937
│                       │       │                  │       e474bb7610a0a3dc57131dc8dc6610 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/85dcbb3aba
│                       │       │                  │       a4878af5c8fbbe11bce708fcf984a7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/ec36f2417c
│                       │       │                  │       4ddd8cabce4b4a60a3d7a7365f2d81 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-34181 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-34181 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.74Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:13.673Z 
│                       ├ [75]  ╭ VulnerabilityID : CVE-2026-42766 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42766 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a476d3367bc6c38c89797535ecff730bb12a758b35bd97fa4590
│                       │       │                   9279e5264094 
│                       │       ├ Title           : openssl: Possible NULL Dereference in Password-Based CMS
│                       │       │                   Decryption 
│                       │       ├ Description     : Issue summary: A specially crafted password-encrypted CMS
│                       │       │                   message
│                       │       │                   can trigger a NULL pointer dereference during CMS
│                       │       │                   decryption.
│                       │       │                   
│                       │       │                   Impact summary: This NULL pointer dereference leads to an
│                       │       │                   application crash
│                       │       │                   and a Denial of Service.
│                       │       │                   The CMS PasswordRecipientInfo.keyDerivationAlgorithm field
│                       │       │                   is defined as
│                       │       │                   OPTIONAL in the ASN.1 specification and may therefore be
│                       │       │                   absent in specially
│                       │       │                   crafted inputs. During the password-based CMS decryption
│                       │       │                   the OpenSSL
│                       │       │                   CMS implementation dereferences this field without first
│                       │       │                   checking whether it
│                       │       │                   was present.
│                       │       │                   An attacker who supplies such a CMS message to an
│                       │       │                   application performing
│                       │       │                   password-based CMS decryption can trigger an application
│                       │       │                   crash, leading to
│                       │       │                   a Denial of Service.
│                       │       │                   Applications that process password-encrypted CMS messages
│                       │       │                   may be affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42766 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/056d06c191
│                       │       │                  │       8fafbb98c1c85a02e4c47cc4e199ce 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/12bc26ffb3
│                       │       │                  │       a2be728c9b86e1cae277de5b33dfa4 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/3ff6491361
│                       │       │                  │       5d648cfbb6a6f1cf5529ae7ea829d7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/ab52d88cb5
│                       │       │                  │       374876d59aee3c91f9e4ccce2b7ce4 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/da26f36873
│                       │       │                  │       2b83e40e9d356fe61c3d3aaab6d2e8 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42766 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-42766 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:07.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:25:08.923Z 
│                       ├ [76]  ╭ VulnerabilityID : CVE-2026-42767 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42767 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c452c3b54e1de3da5a5dcad02bc70961d99b8b4b127e9fe67a40
│                       │       │                   3d1bde4efa12 
│                       │       ├ Title           : openssl: NULL Pointer Dereference in CRMF EncryptedValue
│                       │       │                   Decryption 
│                       │       ├ Description     : Issue summary: An attacker-controlled CMP (Certificate
│                       │       │                   Management Protocol)
│                       │       │                   server could trigger a NULL pointer dereference in a CMP
│                       │       │                   client application.
│                       │       │                   
│                       │       │                   Impact summary: A NULL pointer dereference causes a crash
│                       │       │                   of the
│                       │       │                   application and a Denial of Service.
│                       │       │                   An attacker controlling a CMP server (or acting as a
│                       │       │                   man-in-the-middle) could
│                       │       │                   craft a CMP response containing a CRMF (Certificate Request
│                       │       │                    Message Format)
│                       │       │                   CertRepMessage with an EncryptedValue structure where the
│                       │       │                   symmAlg field
│                       │       │                   has an algorithm OID but no parameters field. When the
│                       │       │                   OpenSSL CMP client
│                       │       │                   processes this response, the NULL dereference occurs,
│                       │       │                   causing a crash of
│                       │       │                   the CMP client.
│                       │       │                   Applications that process untrusted CMP/CRMF messages may
│                       │       │                   be affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42767 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/61a86a8cd7
│                       │       │                  │       3546c9fea916f3d304c1293e05c046 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/665d525408
│                       │       │                  │       3affde9982efca7c41dd01cacc8774 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/810b722f77
│                       │       │                  │       2652ad48042bcc7ab07e3414b11d0f 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/b90ff3b1bd
│                       │       │                  │       33b1c18e6a09936d097c2eddef8873 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/e6f912907f
│                       │       │                  │       c2ec82a0fd07aae55172c5e5e3d90d 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42767 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-42767 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.093Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:39.02Z 
│                       ├ [77]  ╭ VulnerabilityID : CVE-2026-42768 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42768 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3bdb7fddde232800b7a5447f5070790714418adc139b69cbc560
│                       │       │                   5589781a268b 
│                       │       ├ Title           : openssl: Multi-RecipientInfo Bleichenbacher Oracle in
│                       │       │                   CMS_decrypt() and PKCS7_decrypt() 
│                       │       ├ Description     : Issue summary: The CMS_decrypt and PKCS7_decrypt functions
│                       │       │                   are vulnerable to
│                       │       │                   Bleichenbacher-style attack when an attacker is able to
│                       │       │                   provide the CMS or
│                       │       │                   S/MIME messages and observe the error code and/or
│                       │       │                   decryption output.
│                       │       │                   
│                       │       │                   Impact summary: The Bleichenbacher-style attack allows an
│                       │       │                   attacker to use the
│                       │       │                   victim's vulnerable application as a way to decrypt or sign
│                       │       │                    messages with the
│                       │       │                   victim's private RSA key.
│                       │       │                   The attack is possible in 2 variants.
│                       │       │                   1. The decryption API (CMS_decrypt(), PKCS7_decrypt()) is
│                       │       │                   used without
│                       │       │                   providing the recipient certificate. In this case OpenSSL
│                       │       │                   iterates over every
│                       │       │                   KeyTransRecipientInfo (KTRI) without stopping at the first
│                       │       │                   success.
│                       │       │                   An attacker who authors a message with two KTRI entries —
│                       │       │                   the first one
│                       │       │                   wrapping a real CEK under the victim's public key, the
│                       │       │                   second with an
│                       │       │                   arbitrary probe ciphertext — obtains opportunity to iterate
│                       │       │                    the 2nd KTRI to
│                       │       │                   get a valid PKCS#1 v1.5 padding if the error code of the
│                       │       │                   application is
│                       │       │                   available.
│                       │       │                   That is a Bleichenbacher oracle (Bleichenbacher, CRYPTO
│                       │       │                   '98): an
│                       │       │                   adaptive-chosen-ciphertext side channel from which the
│                       │       │                   attacker decrypts any
│                       │       │                   RSA ciphertext to the victim's key or forges any PKCS#1
│                       │       │                   v1.5 signature under
│                       │       │                   it.
│                       │       │                   2. When the decryption API (CMS_decrypt(), PKCS7_decrypt())
│                       │       │                    is provided with
│                       │       │                   the recipient certificate, and the recipient is not found,
│                       │       │                   a random
│                       │       │                   key is substituted.
│                       │       │                   An attacker who authors a message and is able to compare
│                       │       │                   both error code and
│                       │       │                   the result of the decryption, can mount a Bleichenbacher
│                       │       │                   oracle.
│                       │       │                   We are not aware of any applications that provide a remote
│                       │       │                   attacker
│                       │       │                   an opportunity to mount an attack described in these
│                       │       │                   scenarios. We consider
│                       │       │                   the existence of such application very unlikely, and for
│                       │       │                   this reason this
│                       │       │                   CVE has been evaluated as Low severity.
│                       │       │                   To avoid these attacks, when RSA PKCS#1 v1.5 Key Transport
│                       │       │                   is in use, the
│                       │       │                   invoked EVP_PKEY_decrypt() will use the implicit rejection
│                       │       │                   mechanism described
│                       │       │                   in draft-irtf-cfrg-rsa-guidance. In previous OpenSSL
│                       │       │                   releases the implicit
│                       │       │                   rejection was explicitly disabled.
│                       │       │                   The implicit rejection mechanism always returns a plaintext
│                       │       │                    value,
│                       │       │                   the symmetric key. This result is deterministic for the
│                       │       │                   ciphertext and the
│                       │       │                   private key.  The length of the decryption result can
│                       │       │                   happen to match the
│                       │       │                   length of the key of the symmetric cipher that was used for
│                       │       │                    the content
│                       │       │                   encryption. When a certificate is not provided, the last
│                       │       │                   RecipientInfo
│                       │       │                   producing a key that looks valid will be used. It may cause
│                       │       │                    getting garbage
│                       │       │                   content on decryption. As a proper way to deal with this a
│                       │       │                   recipient
│                       │       │                   certificate has to be provided to identify the particular
│                       │       │                   RecipientInfo for
│                       │       │                   decryption.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, and 3.4 are not affected
│                       │       │                    by this issue, as
│                       │       │                   CMS and S/MIME processing happens outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-514 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42768 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/a2ca7b2d73
│                       │       │                  │       e0ffc1eae183fe6e1741dac767cb4f 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/bbb151a830
│                       │       │                  │       41705d9d001ed2f9c12f5523e1b54d 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/dd68364107
│                       │       │                  │       a58841c0a2546812518b65d3a23abd 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/f04b377be3
│                       │       │                  │       d821741c86d1f4bf84dee09f3d5c3e 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-42768 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-42768 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.223Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:12.833Z 
│                       ├ [78]  ╭ VulnerabilityID : CVE-2026-42769 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42769 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3aa1926128f6f390b800626b4f37465b7a7d7fc4b94844367521
│                       │       │                   9c4eb1a134b9 
│                       │       ├ Title           : openssl: Trust-Anchor Substitution via cert/issuer Typo in
│                       │       │                   CMP rootCaKeyUpdate 
│                       │       ├ Description     : Issue Summary: An error in the callback used to verify the
│                       │       │                   certificate
│                       │       │                   provided in a Root CA key update Certificate Management
│                       │       │                   Protocol (CMP)
│                       │       │                   message response rendered the certificate validation
│                       │       │                   ineffectual, which
│                       │       │                   could lead to escalation of credentials from the
│                       │       │                   Registration Authority (RA)
│                       │       │                   level to the root Certification Authority (root CA) level.
│                       │       │                   
│                       │       │                   Impact Summary: The Registration Autority could replace the
│                       │       │                    root CA
│                       │       │                   certificate for the CMP clients with an arbitrary root CA
│                       │       │                   certificate.
│                       │       │                   One of the parts of the Certificate Management Protocol
│                       │       │                   (CMP), specified in
│                       │       │                   RFC 9810, is Root Certification Authority (root CA) key
│                       │       │                   Rollover,
│                       │       │                   which is sent by the server in a message with type
│                       │       │                   'id-it-rootCaKeyUpdate'.
│                       │       │                   As part of these messages, 'newWithOld' certificate, the
│                       │       │                   new root CA
│                       │       │                   certificate signed with the old root CA key, is provided,
│                       │       │                   and verifying its
│                       │       │                   signature is crucial for transferring the trust from the
│                       │       │                   old CA key to the
│                       │       │                   new one.
│                       │       │                   The 'id-it-rootCaKeyUpdate' messages are expected to be
│                       │       │                   processed with
│                       │       │                   OSSL_CMP_get1_rootCaKeyUpdate(), that is expected to verify
│                       │       │                    the 'newWithOld'
│                       │       │                   certificate.  A typo in the certificate chain building code
│                       │       │                    led to adding
│                       │       │                   an incorrect certificate ('newWithOld' instead of
│                       │       │                   'oldRoot') to the
│                       │       │                   certificate chain, rendering the certificate verification
│                       │       │                   process ineffectual
│                       │       │                   (only the issuer name and the algorithm OIDs were verified
│                       │       │                   by other parts
│                       │       │                   of the verification code).
│                       │       │                   An attacker who already has credentials that satisfy the
│                       │       │                   CMP message
│                       │       │                   protection checks can generate a new key pair and use a
│                       │       │                   crafted self-signed
│                       │       │                   certificate in its 'id-it-rootCaKeyUpdate' CMP messages
│                       │       │                   which affected CMP
│                       │       │                   clients would accept as a new trust anchor.
│                       │       │                   Significant preconditions for the attack (having valid
│                       │       │                   RA-level credentials)
│                       │       │                   are the reason the issue was assigned Low severity.
│                       │       │                   The FIPS modules are not affected by this issue, as the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-295 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42769 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/54d0989997
│                       │       │                  │       e5fc26057009a9782c3441ce3842fb 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/777b363b16
│                       │       │                  │       fcf2153bb3ded39dc3838713667c44 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d35cd473a2
│                       │       │                  │       71bf3ce7bf3d32af53217fb83ae92c 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/d531f21c0f
│                       │       │                  │       e99067a66fc0ff1161ef127f9cd70b 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-42769 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-42769 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:26:34.447Z 
│                       ├ [79]  ╭ VulnerabilityID : CVE-2026-42770 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42770 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:692de869251d7619ecb43e46d95ed31bda8ac24135dd7c798221
│                       │       │                   f7433c259d79 
│                       │       ├ Title           : openssl: FFC-DH Peer Validation Uses Attacker-Supplied q 
│                       │       ├ Description     : Issue summary: When EVP_PKEY_derive_set_peer() is called
│                       │       │                   with a DHX (X9.42)
│                       │       │                   peer key, the peer key is not properly checked for the
│                       │       │                   subgroup membership.
│                       │       │                   
│                       │       │                   Impact summary: A malicious peer which presents an X9.42
│                       │       │                   key carrying the
│                       │       │                   victim's p and g parameters, a forged q = r (a small prime
│                       │       │                   factor of the
│                       │       │                   cofactor (p−1)/q_local), and a public value Y of order r
│                       │       │                   can recover the
│                       │       │                   victim's private key after a small number of key exchange
│                       │       │                   attempts.
│                       │       │                   When EVP_PKEY_derive_set_peer() is called with a DHX
│                       │       │                   (X9.42) peer key, the
│                       │       │                   subgroup membership check Y^q ≡ 1 (mod p) is performed
│                       │       │                   using the peer's
│                       │       │                   own q parameter, not the local key's q. The peer's domain
│                       │       │                   parameters are
│                       │       │                   then matched against the domain parameters of the private
│                       │       │                   key, but the value
│                       │       │                   of q is not compared.
│                       │       │                   A malicious peer who presents an X9.42 key carrying the
│                       │       │                   victim's p, g,
│                       │       │                   a forged q = r (a small prime factor of the cofactor), and
│                       │       │                   a public
│                       │       │                   value Y of order r passes all checks. The shared secret
│                       │       │                   then takes only
│                       │       │                   r distinct values, leaking priv mod r. Repeating for each
│                       │       │                   small-prime
│                       │       │                   factor of the cofactor and combining via CRT recovers the
│                       │       │                   full private
│                       │       │                   key (Lim–Lee / small-subgroup-confinement attack).
│                       │       │                   The realistic attack surface is narrow: principally CMP
│                       │       │                   deployments with
│                       │       │                   long-lived RA/CA DHX keys and bespoke enterprise or
│                       │       │                   government applications
│                       │       │                   using X9.42 DHX static keys with interactive protocols and
│                       │       │                   therefore this
│                       │       │                   issue was assigned Low severity.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are
│                       │       │                   affected by this
│                       │       │                   issue. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42770 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/3da5a516cd
│                       │       │                  │       2635a320ff748503db2cef7c4b0f02 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/3ddbb7ab50
│                       │       │                  │       bd93dfc59cbe08e269a67605aeebdb 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/5f452bba2c
│                       │       │                  │       681423d8fcffd120a19b757ee42e3c 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/7fbfde7677
│                       │       │                  │       ed8808828bf00ff01c937ca04bdda2 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/ca2237ab56
│                       │       │                  │       15641b662183b077f62c08d75e8070 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42770 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-42770 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.523Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:00.133Z 
│                       ├ [80]  ╭ VulnerabilityID : CVE-2026-45446 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45446 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e2617fc169c1eaecb283cea0e99f3d2a2bf25a2bb4a4626d435e
│                       │       │                   34caf47cfe70 
│                       │       ├ Title           : openssl: Incorrect Tag Processing for Empty Messages in
│                       │       │                   AES-GCM-SIV and AES-SIV modes 
│                       │       ├ Description     : Issue summary: The implementations of AES-SIV (RFC 5297)
│                       │       │                   and AES-GCM-SIV
│                       │       │                   (RFC 8452) mishandle the authentication of AAD (Additional
│                       │       │                   Authenticated
│                       │       │                   Data) with an empty ciphertext allowing a forgery of such
│                       │       │                   messages.
│                       │       │                   
│                       │       │                   Impact summary: An attacker can forge empty messages with
│                       │       │                   arbitrary AAD
│                       │       │                   to the victim's application using these ciphers.
│                       │       │                   AES-SIV (RFC 5297) and AES-GCM-SIV (RFC 8452) are
│                       │       │                   nonce-misuse-resistant AEAD
│                       │       │                   modes: they accept a key, nonce, optional AAD (bytes that
│                       │       │                   are authenticated
│                       │       │                   but not encrypted), and plaintext, and produces ciphertext
│                       │       │                   plus a 16-byte
│                       │       │                   tag. On decrypt, `EVP_DecryptFinal_ex()` is documented to
│                       │       │                   return success only
│                       │       │                   if the tag is verified succesfully.
│                       │       │                   In OpenSSL's provider implementation of these ciphers, the
│                       │       │                   expected tag is
│                       │       │                   computed only when decryption function is invoked with
│                       │       │                   non-empty data.
│                       │       │                   If the caller supplies AAD and then calls
│                       │       │                   `EVP_DecryptFinal_ex()` without
│                       │       │                   invocation of the ciphertext update, which can happen when
│                       │       │                   the received
│                       │       │                   ciphertext length is zero, the tag is never recalculated
│                       │       │                   and still holds its
│                       │       │                   all-zeros value.
│                       │       │                   When AES-GCM-SIV is used, an attacker who sends arbitrary
│                       │       │                   AAD, empty
│                       │       │                   ciphertext, and all-zeros tag passes authentication under
│                       │       │                   any key they do not
│                       │       │                   know, single-shot. When AES-SIV is used, for mounting the
│                       │       │                   attack it's
│                       │       │                   necessary for the application to reuse the decryption
│                       │       │                   context without
│                       │       │                   resetting the key.
│                       │       │                   AES-SIV is implemented since OpenSSL 3.0. AES-GCM-SIV is
│                       │       │                   implemented since
│                       │       │                   OpenSSL 3.2.
│                       │       │                   No protocols implemented in OpenSSL itself
│                       │       │                   (TLS/CMS/PKCS7/HPKE/QUIC) support
│                       │       │                   either AES-GCM-SIV or AES-SIV. To mount an attack, the
│                       │       │                   applications must
│                       │       │                   implement their own protocol and use the EVP interface.
│                       │       │                   Also they must skip the
│                       │       │                   ciphertext update when a message with an empty ciphertext
│                       │       │                   arrives.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as these algorithms are not FIPS approved and the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45446 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/25b32cd9d4
│                       │       │                  │       1d2bc01b6abc425bb4baf2c2236fdc 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/71e2a5d263
│                       │       │                  │       518cf5866043bd60ee4994d59e53a3 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7fe3f33a3b
│                       │       │                  │       3a4c487aa4dcdbc87057f66ffd2b85 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/daca0f48e4
│                       │       │                  │       a69a2892a62262bad59e62a8a76598 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/eec5e9bf0d
│                       │       │                  │       867333b8495e456f5235d225798a68 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45446 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-45446 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:19.137Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:57:01.743Z 
│                       ├ [81]  ╭ VulnerabilityID : CVE-2026-7383 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7383 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e865377b1c25fd1f9b61353d4f466cd158f52e4fb74ae7298930
│                       │       │                   e1a5c0e34f55 
│                       │       ├ Title           : openssl: OpenSSL: Heap buffer overflow due to signed
│                       │       │                   integer overflow in Unicode output sizing 
│                       │       ├ Description     : Issue summary: A signed integer overflow when sizing the
│                       │       │                   destination
│                       │       │                   buffer for Unicode output in ASN1_mbstring_ncopy() can lead
│                       │       │                    to a heap
│                       │       │                   buffer overflow.
│                       │       │                   
│                       │       │                   Impact summary: A heap buffer overflow may lead to a crash
│                       │       │                   or possibly
│                       │       │                   attacker controlled code execution or other undefined
│                       │       │                   behaviour.
│                       │       │                   In ASN1_mbstring_copy() and ASN1_mbstring_ncopy() the
│                       │       │                   size for Unicode output is computed in a signed int: by
│                       │       │                   left shift
│                       │       │                   of the input character count for BMPSTRING (UTF-16) and
│                       │       │                   UNIVERSALSTRING (UTF-32), and by summing per-character byte
│                       │       │                    counts
│                       │       │                   for UTF8STRING. The calculation overflows when the input
│                       │       │                   reaches
│                       │       │                   around 2^30 characters. In the worst case (UNIVERSALSTRING
│                       │       │                   at 2^30
│                       │       │                   characters) the size wraps to zero, OPENSSL_malloc(1) is
│                       │       │                   called, and
│                       │       │                   the subsequent character copy writes several gigabytes past
│                       │       │                    the
│                       │       │                   one-byte allocation.
│                       │       │                   X.509 certificate processing routes through
│                       │       │                   ASN1_STRING_set_by_NID(),
│                       │       │                   whose DIRSTRING_TYPE mask excludes UNIVERSALSTRING and
│                       │       │                   whose per-NID
│                       │       │                   size limits cap the input length; no network protocol or
│                       │       │                   certificate-handling path in OpenSSL exercises the
│                       │       │                   overflow.
│                       │       │                   Triggering the bug requires an application that calls
│                       │       │                   ASN1_mbstring_copy() or ASN1_mbstring_ncopy() directly, or
│                       │       │                   registers
│                       │       │                   a custom string type via ASN1_STRING_TABLE_add(), with
│                       │       │                   attacker-controlled input on the order of half a gigabyte
│                       │       │                   or more.
│                       │       │                   For these reasons this issue was assigned Low severity.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue, as the affected code is outside the OpenSSL
│                       │       │                   FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7383 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/4f8d2bddaa
│                       │       │                  │       2c8e06f9c33390ee1717059a6e4be6 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/80c15faaf7
│                       │       │                  │       8042bbb8654a0e234c50c381732f74 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/bd17511070
│                       │       │                  │       fb39a67bfa19682affb765e706a974 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/c332adaced
│                       │       │                  │       43bcbb85f97410597e951c11ec3083 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/d32350ae8e
│                       │       │                  │       f7426718f5aa9e383d4b51398ee255 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-7383 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-7383 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:50.337Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:46:08.173Z 
│                       ├ [82]  ╭ VulnerabilityID : CVE-2026-9076 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 7c8292ae9797a5d7 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9076 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:57e6bcaa45fa5e227437202f31acf1e8c92fd815a00878b75b64
│                       │       │                   1f103b59af1e 
│                       │       ├ Title           : openssl: OpenSSL: Denial of Service due to heap
│                       │       │                   out-of-bounds read in CMS password-based decryption 
│                       │       ├ Description     : Issue summary: When CMS password-based decryption (RFC 3211
│                       │       │                    / PWRI key unwrap)
│                       │       │                   processes attacker-supplied CMS data, an attacker-chosen
│                       │       │                   stream-mode KEK
│                       │       │                   cipher can trigger a heap out-of-bounds read in
│                       │       │                   kek_unwrap_key().
│                       │       │                   
│                       │       │                   Impact summary: A heap buffer over-read may trigger a crash
│                       │       │                    which leads to
│                       │       │                   Denial of Service for an application if the input buffer
│                       │       │                   ends at a memory
│                       │       │                   page boundary and the following page is unmapped. There is
│                       │       │                   no information
│                       │       │                   disclosure as the over-read bytes are not revealed to the
│                       │       │                   attacker.
│                       │       │                   The key unwrapping function performs a check-byte test as
│                       │       │                   specified in the
│                       │       │                   RFC that reads 7 bytes from a heap allocation that is based
│                       │       │                    on the wrapped
│                       │       │                   key length from the message. There is a minimum length
│                       │       │                   check based on the
│                       │       │                   block length of the wrapping cipher. However the cipher is
│                       │       │                   selected from
│                       │       │                   an OID carried in the attacker's PWRI
│                       │       │                   keyEncryptionAlgorithm with no
│                       │       │                   requirement that the cipher be a block cipher. When an
│                       │       │                   attacker selects
│                       │       │                   a stream-mode cipher the guard will be ineffective and the
│                       │       │                   allocated buffer
│                       │       │                   containing the unwrapped key can be too small to fit the
│                       │       │                   check-bytes
│                       │       │                   specified in the RFC and a buffer over-read can happen.
│                       │       │                   Applications calling CMS_decrypt() or
│                       │       │                   CMS_decrypt_set1_password()
│                       │       │                   (equivalently openssl cms -decrypt -pwri_password ...) on
│                       │       │                   untrusted CMS
│                       │       │                   data are vulnerable to this issue. No password knowledge is
│                       │       │                    required: the
│                       │       │                   over-read happens during the unwrap attempt before any
│                       │       │                   authentication
│                       │       │                   succeeds.
│                       │       │                   The over-read is limited to a few bytes and is not written
│                       │       │                   to output, so
│                       │       │                   there is no information disclosure. Triggering a crash
│                       │       │                   requires the
│                       │       │                   allocation to border unmapped memory, which is unlikely
│                       │       │                   with the normal
│                       │       │                   allocator.
│                       │       │                   The FIPS modules are not affected by this issue. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9076 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/05b0663668
│                       │       │                  │       42f930fadd9a6e94df98030af431bb 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/3d8d5bc105
│                       │       │                  │       6b2f62da9fede23fedbf47e85187b0 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/715349a1d7
│                       │       │                  │       c6db970e6815dafb90915f07307f98 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/77bf00ab13
│                       │       │                  │       f6ff5e516535432f0328ed70ec0c26 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/eecbe33097
│                       │       │                  │       7e8d023aae1ca2d9bdbe983ef3fdc6 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-9076 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-9076 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:50.997Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:45:58.157Z 
│                       ├ [83]  ╭ VulnerabilityID : CVE-2026-45447 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45447 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3b4102c0932aa45a4f1bc69db1e1e51ec5bff40149d4d044d348
│                       │       │                   f3bb155ad9e0 
│                       │       ├ Title           : openssl: Heap Use-After-Free in OpenSSL PKCS7_verify() 
│                       │       ├ Description     : Issue summary: A specially crafted PKCS#7 or S/MIME signed
│                       │       │                   message could
│                       │       │                   trigger a use-after-free during PKCS#7 signature
│                       │       │                   verification.
│                       │       │                   
│                       │       │                   Impact summary: A use-after-free may result in process
│                       │       │                   crashes, heap
│                       │       │                   corruption, or potentially remote code execution.
│                       │       │                   When processing a PKCS#7 or S/MIME signed message, if the
│                       │       │                   SignedData
│                       │       │                   digestAlgorithms field is present as an empty ASN.1 SET,
│                       │       │                   OpenSSL may
│                       │       │                   incorrectly free a caller-owned BIO during PKCS7_verify().
│                       │       │                   A subsequent
│                       │       │                   use of the BIO by the calling application results in a
│                       │       │                   use-after-free
│                       │       │                   condition.
│                       │       │                   In the common case this occurs when the application later
│                       │       │                   calls
│                       │       │                   BIO_free() on the BIO originally passed to PKCS7_verify().
│                       │       │                   Depending
│                       │       │                   on allocator behavior and application-specific BIO usage
│                       │       │                   patterns, this
│                       │       │                   may result in a crash or other memory corruption. In some
│                       │       │                   application
│                       │       │                   contexts this may potentially be exploitable for remote
│                       │       │                   code execution.
│                       │       │                   Applications that process PKCS#7 or S/MIME signed messages
│                       │       │                   using OpenSSL
│                       │       │                   PKCS#7 APIs may be affected. Applications using the CMS
│                       │       │                   APIs for this
│                       │       │                   processing are not affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : HIGH 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 3 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45447 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/3aad5eb7af
│                       │       │                  │       4de4ee0633c30a8541a54d9bbde63c 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/7d4a980c62
│                       │       │                  │       258c5910cc883936e0c8dbab4d75a8 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/9dfd688ad2
│                       │       │                  │       290fc5075cacbc9bf0c9a93eefed54 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/a541ae8bfe
│                       │       │                  │       849a30cc885e8780715c0f488e496c 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/c505d7559d
│                       │       │                  │       a5d5f9f2c3913c6883a5562ce7273e 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45447 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-45447 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:19.277Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:56:50.707Z 
│                       ├ [84]  ╭ VulnerabilityID : CVE-2026-34182 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34182 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b0279df4ddcf2dad490e6736b21f129e1c437adab27632cf9f81
│                       │       │                   5cd93d6895f7 
│                       │       ├ Title           : openssl: CMS AuthEnvelopedData Processing May Accept Forged
│                       │       │                    Messages 
│                       │       ├ Description     : Issue Summary: Cryptographic Message Services (CMS)
│                       │       │                   processing fails to perform
│                       │       │                   sufficient input validation on the cipher and tag length
│                       │       │                   fields of
│                       │       │                   AuthEnvelopedData containers, leading to various potential
│                       │       │                   compromises.
│                       │       │                   
│                       │       │                   Impact Summary: Attackers making use of these
│                       │       │                   vulnerabilities may achieve
│                       │       │                   key-equivalent functionality for a given CMS recipient
│                       │       │                   and/or bypass integrity
│                       │       │                   validation for a given message.
│                       │       │                   In one use case, an attacker may send a CMS message
│                       │       │                   containing
│                       │       │                   AuthEnvelopedData with the cipher specified as a non-AEAD
│                       │       │                   cipher.  OpenSSL
│                       │       │                   erroneously allows this selection, and attempts to decrypt
│                       │       │                   and validate the
│                       │       │                   message.
│                       │       │                   An on-path attacker who captures one legitimate AES-GCM
│                       │       │                   AuthEnvelopedData
│                       │       │                   addressed to the victim can re-emit it with the
│                       │       │                   recipientInfos set left
│                       │       │                   byte-for-byte intact, so the victim's private key still
│                       │       │                   unwraps the genuine CEK
│                       │       │                   (the content-encryption key), but with the inner OID
│                       │       │                   rewritten to AES-256-OFB
│                       │       │                   (Output Feedback Mode, an unauthenticated keystream mode)
│                       │       │                   and with an
│                       │       │                   attacker-chosen IV and ciphertext. The victim initializes
│                       │       │                   AES-256-OFB under the
│                       │       │                   real CEK, never consults the MAC field, and CMS_decrypt()
│                       │       │                   returns success.
│                       │       │                   If the application under attack responds to the attacker
│                       │       │                   with any indicator
│                       │       │                   showing success or failure of the decryption effort, it is
│                       │       │                   possible for the
│                       │       │                   attacker to use this as an oracle to obtain key equivalent
│                       │       │                   functionality for the
│                       │       │                   CEK used for the chosen recipient of the message.
│                       │       │                   In another use case, an attacker can reduce the tag length
│                       │       │                   of the chosen AEAD
│                       │       │                   cipher for a given AuthEnvelopedData container to be a
│                       │       │                   single byte long,
│                       │       │                   allowing an attacker to brute force CMS decryption,
│                       │       │                   producing an integrity
│                       │       │                   bypass for applications that trust CMS_decrypt() to reject
│                       │       │                   modified content.
│                       │       │                   The FIPS modules are not affected by this issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 7.4 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34182 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/03c1f4d45f
│                       │       │                  │       b963aee7d5833390c507cd290182bc 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/439ed7d2c0
│                       │       │                  │       962ce964482727264668bf277c333f 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7947e6a81e
│                       │       │                  │       b8776802f159fb6762cb7fcf7e34c7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/9fd97f8cfd
│                       │       │                  │       c2c0be214998de3b2b55c8edf6c7ac 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/d2ca86bcd4
│                       │       │                  │       3e4f17d899f347101766b6107676e0 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-34182 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-34182 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.857Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:05.717Z 
│                       ├ [85]  ╭ VulnerabilityID : CVE-2026-34183 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34183 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:84e22a717f66ac26fd4bcb87b898a63097dc68087200ddf3ecc1
│                       │       │                   defba58ffa76 
│                       │       ├ Title           : openssl: Unbounded Memory Growth in the QUIC PATH_CHALLENGE
│                       │       │                    Handler 
│                       │       ├ Description     : Issue summary: Remote peer may exhaust heap memory of the
│                       │       │                   QUIC
│                       │       │                   server or client by flooding it with packets containing
│                       │       │                   PATH_CHALLENGE
│                       │       │                   frames.
│                       │       │                   
│                       │       │                   Impact summary: A malicious remote peer can cause an
│                       │       │                   unbounded
│                       │       │                   memory allocation which can lead to an abnormal termination
│                       │       │                    of the
│                       │       │                   application acting as a QUIC client or server and a Denial
│                       │       │                   of Service.
│                       │       │                   A remote peer may exhaust heap memory by flooding the
│                       │       │                   local
│                       │       │                   QUIC stack with PATH_CHALLENGE frames. The local QUIC
│                       │       │                   stack
│                       │       │                   allocates a PATH_RESPONSE frame for every PATH_CHALLENGE it
│                       │       │                    receives.
│                       │       │                   The allocated PATH_RESPONSE frame gets freed only when the
│                       │       │                   remote
│                       │       │                   peer acknowledges reception of the PATH_RESPONSE frame
│                       │       │                   which will
│                       │       │                   not be done by a malicious peer.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue. The QUIC stack is outside of OpenSSL FIPS
│                       │       │                   module
│                       │       │                   boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-1325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34183 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/5b306efb0b
│                       │       │                  │       3779dfdd0803b4afc9d08c91f11517 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/7d06955ebe
│                       │       │                  │       0ecf8adfd4c1e92018586da47ef9ac 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d2e9efbe49
│                       │       │                  │       00a373227deb136e8665401404ffac 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/fbaa83859c
│                       │       │                  │       01ad64f497b757aaf51be7d05ed9eb 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-34183 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-34183 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:05Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:12:39.05Z 
│                       ├ [86]  ╭ VulnerabilityID : CVE-2026-42764 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42764 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:44dfac2e132751a3f11a750de65700b2e69d2c069a98ebaa1e60
│                       │       │                   be22947d78a5 
│                       │       ├ Title           : openssl: NULL pointer dereference in QUIC server initial
│                       │       │                   packet handling 
│                       │       ├ Description     : Issue summary: Receiving a QUIC initial packet with an
│                       │       │                   invalid token may
│                       │       │                   trigger a NULL pointer dereference in the OpenSSL QUIC
│                       │       │                   server with
│                       │       │                   address validation disabled.
│                       │       │                   
│                       │       │                   Impact summary: NULL pointer dereference typically causes
│                       │       │                   abnormal termination
│                       │       │                   of the affected QUIC server process and a Denial of
│                       │       │                   Service.
│                       │       │                   If the address validation is disabled in the OpenSSL QUIC
│                       │       │                   server
│                       │       │                   implementation, an attacker can crash the server by sending
│                       │       │                    an initial
│                       │       │                   packet with an invalid or expired token.
│                       │       │                   By default, the client address validation is enabled in the
│                       │       │                    OpenSSL QUIC server
│                       │       │                   implementation, which makes the default configuration not
│                       │       │                   vulnerable
│                       │       │                   to this issue. However if the SSL_LISTENER_FLAG_NO_VALIDATE
│                       │       │                    is used with
│                       │       │                   the SSL_new_listener() call, the address validation is
│                       │       │                   disabled making the
│                       │       │                   vulnerable code reachable.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42764 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/5e3ed291b8
│                       │       │                  │       af0b03d5d3b9e56a1da69a187e9729 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/a45a0aba80
│                       │       │                  │       95682c88ff4fc4a784892b8c6f0677 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/bf29a458c1
│                       │       │                  │       a231eca87e384c62b9c2553fa57a91 
│                       │       │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-42764 
│                       │       │                  ├ [22]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [23]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-42764 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:07.693Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:25:25.99Z 
│                       ├ [87]  ╭ VulnerabilityID : CVE-2026-45445 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45445 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9ba71a7e12f02508835b3159aa4d8d0868afdf7505222cf84409
│                       │       │                   c053d08c0f21 
│                       │       ├ Title           : openssl: AES-OCB IV Ignored on EVP_Cipher() Path 
│                       │       ├ Description     : Issue summary: When an application drives an AES-OCB
│                       │       │                   context through the
│                       │       │                   public EVP_Cipher() one-shot interface, the
│                       │       │                   application-supplied
│                       │       │                   initialisation vector (IV) is silently discarded.
│                       │       │                   
│                       │       │                   Impact summary: Every message encrypted under the same key
│                       │       │                   uses the
│                       │       │                   same effective nonce regardless of the IV supplied by the
│                       │       │                   caller,
│                       │       │                   resulting in (key, nonce) reuse and loss of
│                       │       │                   confidentiality.  If the
│                       │       │                   same code path is used to compute the authentication tag,
│                       │       │                   the tag
│                       │       │                   depends only on the (key, IV) pair and not on the plaintext
│                       │       │                    or
│                       │       │                   ciphertext, allowing universal forgery of arbitrary
│                       │       │                   ciphertext from a
│                       │       │                   single captured message.
│                       │       │                   OpenSSL provides two ways to drive a cipher: the documented
│                       │       │                    streaming
│                       │       │                   interface (EVP_CipherUpdate / EVP_CipherFinal_ex) and a
│                       │       │                   lower-level
│                       │       │                   one-shot, EVP_Cipher(), whose documentation explicitly
│                       │       │                   recommends
│                       │       │                   against use by applications in favour of EVP_CipherUpdate()
│                       │       │                    and
│                       │       │                   EVP_CipherFinal_ex().  The OCB provider's streaming handler
│                       │       │                    flushes
│                       │       │                   the application-supplied IV into the OCB context before
│                       │       │                   processing
│                       │       │                   data; the one-shot handler did not.  Every call to
│                       │       │                   EVP_Cipher() on an
│                       │       │                   AES-OCB context therefore ran with the all-zero key-derived
│                       │       │                    offset
│                       │       │                   state left by cipher initialisation, regardless of the
│                       │       │                   caller's IV.
│                       │       │                   If EVP_EncryptFinal_ex() is subsequently used to obtain
│                       │       │                   the
│                       │       │                   authentication tag, the deferred IV setup runs at that
│                       │       │                   point and
│                       │       │                   clears the running checksum that should have been
│                       │       │                   accumulated over the
│                       │       │                   plaintext.  The resulting tag is a function of (key, IV)
│                       │       │                   only and
│                       │       │                   verifies against any ciphertext produced under the same
│                       │       │                   (key, IV)
│                       │       │                   pair.
│                       │       │                   The OpenSSL SSL/TLS implementation is not affected: AES-OCB
│                       │       │                    is not a
│                       │       │                   TLS cipher suite, and libssl does not call EVP_Cipher() in
│                       │       │                   any case.
│                       │       │                   Applications that drive AES-OCB through the documented
│                       │       │                   streaming AEAD
│                       │       │                   API (EVP_CipherUpdate / EVP_CipherFinal_ex) are not
│                       │       │                   affected.  Only
│                       │       │                   applications that combine the AES-OCB cipher with the
│                       │       │                   EVP_Cipher()
│                       │       │                   one-shot API are vulnerable.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue, as AES-OCB is outside the OpenSSL FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 9.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45445 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/323f0b6e7d
│                       │       │                  │       530a4cb4336d50c88cb70f3ac2a451 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/787a6dfba8
│                       │       │                  │       1b7b09c1e05ab31396c0cd7c36b3f7 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7ac4715234
│                       │       │                  │       ee72d9f3c93426a2c08554b5b771af 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/843c9b94ca
│                       │       │                  │       9c2ed248bb30127bb4f3d7af0d607c 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/983d54b5cc
│                       │       │                  │       e8d16147548ed1a37892d1720bbab6 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45445 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-45445 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:18.993Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:57:17.483Z 
│                       ├ [88]  ╭ VulnerabilityID : CVE-2026-34180 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34180 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bb5d29f70301902204b3dd494c40ec5d85bc6ab4f57bf0e7b0ca
│                       │       │                   fdf95090d289 
│                       │       ├ Title           : openssl: OpenSSL: Heap buffer over-read in ASN.1 decoding
│                       │       │                   can lead to denial of service or information disclosure. 
│                       │       ├ Description     : Issue summary: Parsing a crafted DER-encoded ASN.1
│                       │       │                   structure with a primitive
│                       │       │                   element whose content exceeds 2 gigabytes in length may
│                       │       │                   cause a heap buffer
│                       │       │                   over-read on 64-bit Unix and Unix-like platforms.
│                       │       │                   
│                       │       │                   Impact summary: The heap buffer over-read may crash the
│                       │       │                   application (Denial of
│                       │       │                   Service) or to load into the decoded ASN.1 object contents
│                       │       │                   of memory beyond the
│                       │       │                   end of the input buffer.  More typically such ASN.1
│                       │       │                   elements would instead be
│                       │       │                   truncated.
│                       │       │                   An integer truncation in OpenSSL's ASN.1 decoder causes the
│                       │       │                    content length of
│                       │       │                   an ASN.1 primitive element to be mishandled when it exceeds
│                       │       │                    2 gigabytes. In the
│                       │       │                   worst case the truncated length is treated as a request to
│                       │       │                   scan the binary
│                       │       │                   content for a terminating zero byte, possibly causing
│                       │       │                   OpenSSL to read either
│                       │       │                   less than or beyond the end of the allocated buffer.
│                       │       │                   Applications that pass attacker-supplied data to
│                       │       │                   d2i_X509(), d2i_PKCS7(), or
│                       │       │                   any other d2i_* decoding function are affected. OpenSSL's
│                       │       │                   own command-line
│                       │       │                   tools are not vulnerable, as data read through the BIO
│                       │       │                   layer is checked before
│                       │       │                   it reaches the affected code. The issue only affects 64-bit
│                       │       │                    Unix and Unix-like
│                       │       │                   platforms; 32-bit platforms and 64-bit Windows are not
│                       │       │                   affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by this issue,
│                       │       │                   as the affected code is outside the OpenSSL FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34180 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/1c6908e4fa
│                       │       │                  │       5fa568752221d8eaf561a809751e5d 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/cbe418ae97
│                       │       │                  │       8539cf14a398a207dba834c0e93e83 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d93853c421
│                       │       │                  │       10d6319e3df07842b488cb9f7ac5ff 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/da5d62af75
│                       │       │                  │       f69d6fbf7803743d7c56ac75461e43 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/f696c73c3e
│                       │       │                  │       61b8c502d040af62e690c060908a16 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-34180 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-34180 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.6Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:21.753Z 
│                       ├ [89]  ╭ VulnerabilityID : CVE-2026-34181 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34181 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b2abb8a4096e1d8850eaa3994678c13e789b9157b49a74a07a29
│                       │       │                   8321652bc963 
│                       │       ├ Title           : openssl: PKCS#12 Files with PBMAC1 Are Accepted with Short
│                       │       │                   HMAC Keys 
│                       │       ├ Description     : Issue Summary: The PKCS#12 file processing fails to perform
│                       │       │                    sufficient input
│                       │       │                   validation for files that use Password-Based Message
│                       │       │                   Authentication Code 1
│                       │       │                   (PBMAC1) integrity mechanism allowing a certificate and
│                       │       │                   private key forgery.
│                       │       │                   
│                       │       │                   Impact Summary: An attacker impersonating a user can cause
│                       │       │                   a service reading
│                       │       │                   PKCS#12 files to accept forged certificates and private
│                       │       │                   keys with a 1 in 256
│                       │       │                   probability.
│                       │       │                   If a service accepting PKCS#12 files is using passwords for
│                       │       │                    authenticating
│                       │       │                   the received files, the attacker can create unencrypted
│                       │       │                   PKCS#12 files that
│                       │       │                   use PBMAC1 authentication that specifies an HMAC key of
│                       │       │                   only one byte, allowing
│                       │       │                   them to craft a file that will be accepted with a 1 in 256
│                       │       │                   That would then cause the service to accept a certificate
│                       │       │                   and private key
│                       │       │                   controlled by the attacker.
│                       │       │                   The FIPS modules are not affected by this issue, as the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-34181 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/0300eb9ddc
│                       │       │                  │       e7a0895bf301a4b0c03a9da2313a0f 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/79eb76a937
│                       │       │                  │       e474bb7610a0a3dc57131dc8dc6610 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/85dcbb3aba
│                       │       │                  │       a4878af5c8fbbe11bce708fcf984a7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/ec36f2417c
│                       │       │                  │       4ddd8cabce4b4a60a3d7a7365f2d81 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-34181 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-34181 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:04.74Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:13:13.673Z 
│                       ├ [90]  ╭ VulnerabilityID : CVE-2026-42766 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42766 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2ceb41286a15af6f36ad48fa95a4616a73464921265c7e2fbaa6
│                       │       │                   441727b2c97c 
│                       │       ├ Title           : openssl: Possible NULL Dereference in Password-Based CMS
│                       │       │                   Decryption 
│                       │       ├ Description     : Issue summary: A specially crafted password-encrypted CMS
│                       │       │                   message
│                       │       │                   can trigger a NULL pointer dereference during CMS
│                       │       │                   decryption.
│                       │       │                   
│                       │       │                   Impact summary: This NULL pointer dereference leads to an
│                       │       │                   application crash
│                       │       │                   and a Denial of Service.
│                       │       │                   The CMS PasswordRecipientInfo.keyDerivationAlgorithm field
│                       │       │                   is defined as
│                       │       │                   OPTIONAL in the ASN.1 specification and may therefore be
│                       │       │                   absent in specially
│                       │       │                   crafted inputs. During the password-based CMS decryption
│                       │       │                   the OpenSSL
│                       │       │                   CMS implementation dereferences this field without first
│                       │       │                   checking whether it
│                       │       │                   was present.
│                       │       │                   An attacker who supplies such a CMS message to an
│                       │       │                   application performing
│                       │       │                   password-based CMS decryption can trigger an application
│                       │       │                   crash, leading to
│                       │       │                   a Denial of Service.
│                       │       │                   Applications that process password-encrypted CMS messages
│                       │       │                   may be affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42766 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/056d06c191
│                       │       │                  │       8fafbb98c1c85a02e4c47cc4e199ce 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/12bc26ffb3
│                       │       │                  │       a2be728c9b86e1cae277de5b33dfa4 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/3ff6491361
│                       │       │                  │       5d648cfbb6a6f1cf5529ae7ea829d7 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/ab52d88cb5
│                       │       │                  │       374876d59aee3c91f9e4ccce2b7ce4 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/da26f36873
│                       │       │                  │       2b83e40e9d356fe61c3d3aaab6d2e8 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42766 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-42766 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:07.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:25:08.923Z 
│                       ├ [91]  ╭ VulnerabilityID : CVE-2026-42767 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42767 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f5fe6a6a93760189e5a0cbfe58cd7b7f4fdfb91171754e19e3e9
│                       │       │                   b8a19d36fd2a 
│                       │       ├ Title           : openssl: NULL Pointer Dereference in CRMF EncryptedValue
│                       │       │                   Decryption 
│                       │       ├ Description     : Issue summary: An attacker-controlled CMP (Certificate
│                       │       │                   Management Protocol)
│                       │       │                   server could trigger a NULL pointer dereference in a CMP
│                       │       │                   client application.
│                       │       │                   
│                       │       │                   Impact summary: A NULL pointer dereference causes a crash
│                       │       │                   of the
│                       │       │                   application and a Denial of Service.
│                       │       │                   An attacker controlling a CMP server (or acting as a
│                       │       │                   man-in-the-middle) could
│                       │       │                   craft a CMP response containing a CRMF (Certificate Request
│                       │       │                    Message Format)
│                       │       │                   CertRepMessage with an EncryptedValue structure where the
│                       │       │                   symmAlg field
│                       │       │                   has an algorithm OID but no parameters field. When the
│                       │       │                   OpenSSL CMP client
│                       │       │                   processes this response, the NULL dereference occurs,
│                       │       │                   causing a crash of
│                       │       │                   the CMP client.
│                       │       │                   Applications that process untrusted CMP/CRMF messages may
│                       │       │                   be affected.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as the affected code is outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-476 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42767 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/61a86a8cd7
│                       │       │                  │       3546c9fea916f3d304c1293e05c046 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/665d525408
│                       │       │                  │       3affde9982efca7c41dd01cacc8774 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/810b722f77
│                       │       │                  │       2652ad48042bcc7ab07e3414b11d0f 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/b90ff3b1bd
│                       │       │                  │       33b1c18e6a09936d097c2eddef8873 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/e6f912907f
│                       │       │                  │       c2ec82a0fd07aae55172c5e5e3d90d 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42767 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-42767 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.093Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:39.02Z 
│                       ├ [92]  ╭ VulnerabilityID : CVE-2026-42768 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42768 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0b682b7b13a6c9a392dc770d4ff84be9557d6b6a9218bbd23ee7
│                       │       │                   420968014ab3 
│                       │       ├ Title           : openssl: Multi-RecipientInfo Bleichenbacher Oracle in
│                       │       │                   CMS_decrypt() and PKCS7_decrypt() 
│                       │       ├ Description     : Issue summary: The CMS_decrypt and PKCS7_decrypt functions
│                       │       │                   are vulnerable to
│                       │       │                   Bleichenbacher-style attack when an attacker is able to
│                       │       │                   provide the CMS or
│                       │       │                   S/MIME messages and observe the error code and/or
│                       │       │                   decryption output.
│                       │       │                   
│                       │       │                   Impact summary: The Bleichenbacher-style attack allows an
│                       │       │                   attacker to use the
│                       │       │                   victim's vulnerable application as a way to decrypt or sign
│                       │       │                    messages with the
│                       │       │                   victim's private RSA key.
│                       │       │                   The attack is possible in 2 variants.
│                       │       │                   1. The decryption API (CMS_decrypt(), PKCS7_decrypt()) is
│                       │       │                   used without
│                       │       │                   providing the recipient certificate. In this case OpenSSL
│                       │       │                   iterates over every
│                       │       │                   KeyTransRecipientInfo (KTRI) without stopping at the first
│                       │       │                   success.
│                       │       │                   An attacker who authors a message with two KTRI entries —
│                       │       │                   the first one
│                       │       │                   wrapping a real CEK under the victim's public key, the
│                       │       │                   second with an
│                       │       │                   arbitrary probe ciphertext — obtains opportunity to iterate
│                       │       │                    the 2nd KTRI to
│                       │       │                   get a valid PKCS#1 v1.5 padding if the error code of the
│                       │       │                   application is
│                       │       │                   available.
│                       │       │                   That is a Bleichenbacher oracle (Bleichenbacher, CRYPTO
│                       │       │                   '98): an
│                       │       │                   adaptive-chosen-ciphertext side channel from which the
│                       │       │                   attacker decrypts any
│                       │       │                   RSA ciphertext to the victim's key or forges any PKCS#1
│                       │       │                   v1.5 signature under
│                       │       │                   it.
│                       │       │                   2. When the decryption API (CMS_decrypt(), PKCS7_decrypt())
│                       │       │                    is provided with
│                       │       │                   the recipient certificate, and the recipient is not found,
│                       │       │                   a random
│                       │       │                   key is substituted.
│                       │       │                   An attacker who authors a message and is able to compare
│                       │       │                   both error code and
│                       │       │                   the result of the decryption, can mount a Bleichenbacher
│                       │       │                   oracle.
│                       │       │                   We are not aware of any applications that provide a remote
│                       │       │                   attacker
│                       │       │                   an opportunity to mount an attack described in these
│                       │       │                   scenarios. We consider
│                       │       │                   the existence of such application very unlikely, and for
│                       │       │                   this reason this
│                       │       │                   CVE has been evaluated as Low severity.
│                       │       │                   To avoid these attacks, when RSA PKCS#1 v1.5 Key Transport
│                       │       │                   is in use, the
│                       │       │                   invoked EVP_PKEY_decrypt() will use the implicit rejection
│                       │       │                   mechanism described
│                       │       │                   in draft-irtf-cfrg-rsa-guidance. In previous OpenSSL
│                       │       │                   releases the implicit
│                       │       │                   rejection was explicitly disabled.
│                       │       │                   The implicit rejection mechanism always returns a plaintext
│                       │       │                    value,
│                       │       │                   the symmetric key. This result is deterministic for the
│                       │       │                   ciphertext and the
│                       │       │                   private key.  The length of the decryption result can
│                       │       │                   happen to match the
│                       │       │                   length of the key of the symmetric cipher that was used for
│                       │       │                    the content
│                       │       │                   encryption. When a certificate is not provided, the last
│                       │       │                   RecipientInfo
│                       │       │                   producing a key that looks valid will be used. It may cause
│                       │       │                    getting garbage
│                       │       │                   content on decryption. As a proper way to deal with this a
│                       │       │                   recipient
│                       │       │                   certificate has to be provided to identify the particular
│                       │       │                   RecipientInfo for
│                       │       │                   decryption.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, and 3.4 are not affected
│                       │       │                    by this issue, as
│                       │       │                   CMS and S/MIME processing happens outside the OpenSSL FIPS
│                       │       │                   module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-514 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42768 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/a2ca7b2d73
│                       │       │                  │       e0ffc1eae183fe6e1741dac767cb4f 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/bbb151a830
│                       │       │                  │       41705d9d001ed2f9c12f5523e1b54d 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/dd68364107
│                       │       │                  │       a58841c0a2546812518b65d3a23abd 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/f04b377be3
│                       │       │                  │       d821741c86d1f4bf84dee09f3d5c3e 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-42768 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-42768 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.223Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:12.833Z 
│                       ├ [93]  ╭ VulnerabilityID : CVE-2026-42769 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42769 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:462abf0d2fadd48b11f9b43074e22664225b0fa3c3db3f47087f
│                       │       │                   c98eccf7803b 
│                       │       ├ Title           : openssl: Trust-Anchor Substitution via cert/issuer Typo in
│                       │       │                   CMP rootCaKeyUpdate 
│                       │       ├ Description     : Issue Summary: An error in the callback used to verify the
│                       │       │                   certificate
│                       │       │                   provided in a Root CA key update Certificate Management
│                       │       │                   Protocol (CMP)
│                       │       │                   message response rendered the certificate validation
│                       │       │                   ineffectual, which
│                       │       │                   could lead to escalation of credentials from the
│                       │       │                   Registration Authority (RA)
│                       │       │                   level to the root Certification Authority (root CA) level.
│                       │       │                   
│                       │       │                   Impact Summary: The Registration Autority could replace the
│                       │       │                    root CA
│                       │       │                   certificate for the CMP clients with an arbitrary root CA
│                       │       │                   certificate.
│                       │       │                   One of the parts of the Certificate Management Protocol
│                       │       │                   (CMP), specified in
│                       │       │                   RFC 9810, is Root Certification Authority (root CA) key
│                       │       │                   Rollover,
│                       │       │                   which is sent by the server in a message with type
│                       │       │                   'id-it-rootCaKeyUpdate'.
│                       │       │                   As part of these messages, 'newWithOld' certificate, the
│                       │       │                   new root CA
│                       │       │                   certificate signed with the old root CA key, is provided,
│                       │       │                   and verifying its
│                       │       │                   signature is crucial for transferring the trust from the
│                       │       │                   old CA key to the
│                       │       │                   new one.
│                       │       │                   The 'id-it-rootCaKeyUpdate' messages are expected to be
│                       │       │                   processed with
│                       │       │                   OSSL_CMP_get1_rootCaKeyUpdate(), that is expected to verify
│                       │       │                    the 'newWithOld'
│                       │       │                   certificate.  A typo in the certificate chain building code
│                       │       │                    led to adding
│                       │       │                   an incorrect certificate ('newWithOld' instead of
│                       │       │                   'oldRoot') to the
│                       │       │                   certificate chain, rendering the certificate verification
│                       │       │                   process ineffectual
│                       │       │                   (only the issuer name and the algorithm OIDs were verified
│                       │       │                   by other parts
│                       │       │                   of the verification code).
│                       │       │                   An attacker who already has credentials that satisfy the
│                       │       │                   CMP message
│                       │       │                   protection checks can generate a new key pair and use a
│                       │       │                   crafted self-signed
│                       │       │                   certificate in its 'id-it-rootCaKeyUpdate' CMP messages
│                       │       │                   which affected CMP
│                       │       │                   clients would accept as a new trust anchor.
│                       │       │                   Significant preconditions for the attack (having valid
│                       │       │                   RA-level credentials)
│                       │       │                   are the reason the issue was assigned Low severity.
│                       │       │                   The FIPS modules are not affected by this issue, as the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-295 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42769 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/54d0989997
│                       │       │                  │       e5fc26057009a9782c3441ce3842fb 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/777b363b16
│                       │       │                  │       fcf2153bb3ded39dc3838713667c44 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/d35cd473a2
│                       │       │                  │       71bf3ce7bf3d32af53217fb83ae92c 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/d531f21c0f
│                       │       │                  │       e99067a66fc0ff1161ef127f9cd70b 
│                       │       │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-42769 
│                       │       │                  ├ [23]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [24]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-42769 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-15T18:26:34.447Z 
│                       ├ [94]  ╭ VulnerabilityID : CVE-2026-42770 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42770 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6c149dd1afd3bc3ed24ffb91d9762948c4fb44421bf568868fbc
│                       │       │                   c91f12a83e09 
│                       │       ├ Title           : openssl: FFC-DH Peer Validation Uses Attacker-Supplied q 
│                       │       ├ Description     : Issue summary: When EVP_PKEY_derive_set_peer() is called
│                       │       │                   with a DHX (X9.42)
│                       │       │                   peer key, the peer key is not properly checked for the
│                       │       │                   subgroup membership.
│                       │       │                   
│                       │       │                   Impact summary: A malicious peer which presents an X9.42
│                       │       │                   key carrying the
│                       │       │                   victim's p and g parameters, a forged q = r (a small prime
│                       │       │                   factor of the
│                       │       │                   cofactor (p−1)/q_local), and a public value Y of order r
│                       │       │                   can recover the
│                       │       │                   victim's private key after a small number of key exchange
│                       │       │                   attempts.
│                       │       │                   When EVP_PKEY_derive_set_peer() is called with a DHX
│                       │       │                   (X9.42) peer key, the
│                       │       │                   subgroup membership check Y^q ≡ 1 (mod p) is performed
│                       │       │                   using the peer's
│                       │       │                   own q parameter, not the local key's q. The peer's domain
│                       │       │                   parameters are
│                       │       │                   then matched against the domain parameters of the private
│                       │       │                   key, but the value
│                       │       │                   of q is not compared.
│                       │       │                   A malicious peer who presents an X9.42 key carrying the
│                       │       │                   victim's p, g,
│                       │       │                   a forged q = r (a small prime factor of the cofactor), and
│                       │       │                   a public
│                       │       │                   value Y of order r passes all checks. The shared secret
│                       │       │                   then takes only
│                       │       │                   r distinct values, leaking priv mod r. Repeating for each
│                       │       │                   small-prime
│                       │       │                   factor of the cofactor and combining via CRT recovers the
│                       │       │                   full private
│                       │       │                   key (Lim–Lee / small-subgroup-confinement attack).
│                       │       │                   The realistic attack surface is narrow: principally CMP
│                       │       │                   deployments with
│                       │       │                   long-lived RA/CA DHX keys and bespoke enterprise or
│                       │       │                   government applications
│                       │       │                   using X9.42 DHX static keys with interactive protocols and
│                       │       │                   therefore this
│                       │       │                   issue was assigned Low severity.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are
│                       │       │                   affected by this
│                       │       │                   issue. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42770 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/3da5a516cd
│                       │       │                  │       2635a320ff748503db2cef7c4b0f02 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/3ddbb7ab50
│                       │       │                  │       bd93dfc59cbe08e269a67605aeebdb 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/5f452bba2c
│                       │       │                  │       681423d8fcffd120a19b757ee42e3c 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/7fbfde7677
│                       │       │                  │       ed8808828bf00ff01c937ca04bdda2 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/ca2237ab56
│                       │       │                  │       15641b662183b077f62c08d75e8070 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-42770 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-42770 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:08.523Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:58:00.133Z 
│                       ├ [95]  ╭ VulnerabilityID : CVE-2026-45446 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45446 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c3641281ae15056a4f9b6daff9c78edfcab5f71a2a460b68ab27
│                       │       │                   cde5dd8952c5 
│                       │       ├ Title           : openssl: Incorrect Tag Processing for Empty Messages in
│                       │       │                   AES-GCM-SIV and AES-SIV modes 
│                       │       ├ Description     : Issue summary: The implementations of AES-SIV (RFC 5297)
│                       │       │                   and AES-GCM-SIV
│                       │       │                   (RFC 8452) mishandle the authentication of AAD (Additional
│                       │       │                   Authenticated
│                       │       │                   Data) with an empty ciphertext allowing a forgery of such
│                       │       │                   messages.
│                       │       │                   
│                       │       │                   Impact summary: An attacker can forge empty messages with
│                       │       │                   arbitrary AAD
│                       │       │                   to the victim's application using these ciphers.
│                       │       │                   AES-SIV (RFC 5297) and AES-GCM-SIV (RFC 8452) are
│                       │       │                   nonce-misuse-resistant AEAD
│                       │       │                   modes: they accept a key, nonce, optional AAD (bytes that
│                       │       │                   are authenticated
│                       │       │                   but not encrypted), and plaintext, and produces ciphertext
│                       │       │                   plus a 16-byte
│                       │       │                   tag. On decrypt, `EVP_DecryptFinal_ex()` is documented to
│                       │       │                   return success only
│                       │       │                   if the tag is verified succesfully.
│                       │       │                   In OpenSSL's provider implementation of these ciphers, the
│                       │       │                   expected tag is
│                       │       │                   computed only when decryption function is invoked with
│                       │       │                   non-empty data.
│                       │       │                   If the caller supplies AAD and then calls
│                       │       │                   `EVP_DecryptFinal_ex()` without
│                       │       │                   invocation of the ciphertext update, which can happen when
│                       │       │                   the received
│                       │       │                   ciphertext length is zero, the tag is never recalculated
│                       │       │                   and still holds its
│                       │       │                   all-zeros value.
│                       │       │                   When AES-GCM-SIV is used, an attacker who sends arbitrary
│                       │       │                   AAD, empty
│                       │       │                   ciphertext, and all-zeros tag passes authentication under
│                       │       │                   any key they do not
│                       │       │                   know, single-shot. When AES-SIV is used, for mounting the
│                       │       │                   attack it's
│                       │       │                   necessary for the application to reuse the decryption
│                       │       │                   context without
│                       │       │                   resetting the key.
│                       │       │                   AES-SIV is implemented since OpenSSL 3.0. AES-GCM-SIV is
│                       │       │                   implemented since
│                       │       │                   OpenSSL 3.2.
│                       │       │                   No protocols implemented in OpenSSL itself
│                       │       │                   (TLS/CMS/PKCS7/HPKE/QUIC) support
│                       │       │                   either AES-GCM-SIV or AES-SIV. To mount an attack, the
│                       │       │                   applications must
│                       │       │                   implement their own protocol and use the EVP interface.
│                       │       │                   Also they must skip the
│                       │       │                   ciphertext update when a message with an empty ciphertext
│                       │       │                   arrives.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this
│                       │       │                   issue, as these algorithms are not FIPS approved and the
│                       │       │                   affected code is
│                       │       │                   outside the OpenSSL FIPS module boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-325 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.7 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-45446 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/25b32cd9d4
│                       │       │                  │       1d2bc01b6abc425bb4baf2c2236fdc 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/71e2a5d263
│                       │       │                  │       518cf5866043bd60ee4994d59e53a3 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/7fe3f33a3b
│                       │       │                  │       3a4c487aa4dcdbc87057f66ffd2b85 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/daca0f48e4
│                       │       │                  │       a69a2892a62262bad59e62a8a76598 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/eec5e9bf0d
│                       │       │                  │       867333b8495e456f5235d225798a68 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-45446 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-45446 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:19.137Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:57:01.743Z 
│                       ├ [96]  ╭ VulnerabilityID : CVE-2026-7383 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7383 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0febf25bee7334502469c3d63a18e16613f1ed58e729eba6f0c9
│                       │       │                   df7e1a3345a2 
│                       │       ├ Title           : openssl: OpenSSL: Heap buffer overflow due to signed
│                       │       │                   integer overflow in Unicode output sizing 
│                       │       ├ Description     : Issue summary: A signed integer overflow when sizing the
│                       │       │                   destination
│                       │       │                   buffer for Unicode output in ASN1_mbstring_ncopy() can lead
│                       │       │                    to a heap
│                       │       │                   buffer overflow.
│                       │       │                   
│                       │       │                   Impact summary: A heap buffer overflow may lead to a crash
│                       │       │                   or possibly
│                       │       │                   attacker controlled code execution or other undefined
│                       │       │                   behaviour.
│                       │       │                   In ASN1_mbstring_copy() and ASN1_mbstring_ncopy() the
│                       │       │                   size for Unicode output is computed in a signed int: by
│                       │       │                   left shift
│                       │       │                   of the input character count for BMPSTRING (UTF-16) and
│                       │       │                   UNIVERSALSTRING (UTF-32), and by summing per-character byte
│                       │       │                    counts
│                       │       │                   for UTF8STRING. The calculation overflows when the input
│                       │       │                   reaches
│                       │       │                   around 2^30 characters. In the worst case (UNIVERSALSTRING
│                       │       │                   at 2^30
│                       │       │                   characters) the size wraps to zero, OPENSSL_malloc(1) is
│                       │       │                   called, and
│                       │       │                   the subsequent character copy writes several gigabytes past
│                       │       │                    the
│                       │       │                   one-byte allocation.
│                       │       │                   X.509 certificate processing routes through
│                       │       │                   ASN1_STRING_set_by_NID(),
│                       │       │                   whose DIRSTRING_TYPE mask excludes UNIVERSALSTRING and
│                       │       │                   whose per-NID
│                       │       │                   size limits cap the input length; no network protocol or
│                       │       │                   certificate-handling path in OpenSSL exercises the
│                       │       │                   overflow.
│                       │       │                   Triggering the bug requires an application that calls
│                       │       │                   ASN1_mbstring_copy() or ASN1_mbstring_ncopy() directly, or
│                       │       │                   registers
│                       │       │                   a custom string type via ASN1_STRING_TABLE_add(), with
│                       │       │                   attacker-controlled input on the order of half a gigabyte
│                       │       │                   or more.
│                       │       │                   For these reasons this issue was assigned Low severity.
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4 and 3.0 are not
│                       │       │                   affected by
│                       │       │                   this issue, as the affected code is outside the OpenSSL
│                       │       │                   FIPS module
│                       │       │                   boundary. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-787 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7383 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/4f8d2bddaa
│                       │       │                  │       2c8e06f9c33390ee1717059a6e4be6 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/80c15faaf7
│                       │       │                  │       8042bbb8654a0e234c50c381732f74 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/bd17511070
│                       │       │                  │       fb39a67bfa19682affb765e706a974 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/c332adaced
│                       │       │                  │       43bcbb85f97410597e951c11ec3083 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/d32350ae8e
│                       │       │                  │       f7426718f5aa9e383d4b51398ee255 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-7383 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-7383 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:50.337Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:46:08.173Z 
│                       ├ [97]  ╭ VulnerabilityID : CVE-2026-9076 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : b39ecae782ea1350 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9076 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c80d2a35a74d9e65c8de70ed0aca5a68d25d81af0ec463e170f5
│                       │       │                   de5a1ddb7bd6 
│                       │       ├ Title           : openssl: OpenSSL: Denial of Service due to heap
│                       │       │                   out-of-bounds read in CMS password-based decryption 
│                       │       ├ Description     : Issue summary: When CMS password-based decryption (RFC 3211
│                       │       │                    / PWRI key unwrap)
│                       │       │                   processes attacker-supplied CMS data, an attacker-chosen
│                       │       │                   stream-mode KEK
│                       │       │                   cipher can trigger a heap out-of-bounds read in
│                       │       │                   kek_unwrap_key().
│                       │       │                   
│                       │       │                   Impact summary: A heap buffer over-read may trigger a crash
│                       │       │                    which leads to
│                       │       │                   Denial of Service for an application if the input buffer
│                       │       │                   ends at a memory
│                       │       │                   page boundary and the following page is unmapped. There is
│                       │       │                   no information
│                       │       │                   disclosure as the over-read bytes are not revealed to the
│                       │       │                   attacker.
│                       │       │                   The key unwrapping function performs a check-byte test as
│                       │       │                   specified in the
│                       │       │                   RFC that reads 7 bytes from a heap allocation that is based
│                       │       │                    on the wrapped
│                       │       │                   key length from the message. There is a minimum length
│                       │       │                   check based on the
│                       │       │                   block length of the wrapping cipher. However the cipher is
│                       │       │                   selected from
│                       │       │                   an OID carried in the attacker's PWRI
│                       │       │                   keyEncryptionAlgorithm with no
│                       │       │                   requirement that the cipher be a block cipher. When an
│                       │       │                   attacker selects
│                       │       │                   a stream-mode cipher the guard will be ineffective and the
│                       │       │                   allocated buffer
│                       │       │                   containing the unwrapped key can be too small to fit the
│                       │       │                   check-bytes
│                       │       │                   specified in the RFC and a buffer over-read can happen.
│                       │       │                   Applications calling CMS_decrypt() or
│                       │       │                   CMS_decrypt_set1_password()
│                       │       │                   (equivalently openssl cms -decrypt -pwri_password ...) on
│                       │       │                   untrusted CMS
│                       │       │                   data are vulnerable to this issue. No password knowledge is
│                       │       │                    required: the
│                       │       │                   over-read happens during the unwrap attempt before any
│                       │       │                   authentication
│                       │       │                   succeeds.
│                       │       │                   The over-read is limited to a few bytes and is not written
│                       │       │                   to output, so
│                       │       │                   there is no information disclosure. Triggering a crash
│                       │       │                   requires the
│                       │       │                   allocation to border unmapped memory, which is unlikely
│                       │       │                   with the normal
│                       │       │                   allocator.
│                       │       │                   The FIPS modules are not affected by this issue. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma  : 3 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:25237 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9076 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2481879 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2481880 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2481881 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2481882 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2481884 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2481885 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2481887 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2481890 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2481891 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2481892 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2481893 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2481894 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2481896 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/2481897 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/2481898 
│                       │       │                  ├ [17]: https://errata.almalinux.org/10/ALSA-2026-25237.html 
│                       │       │                  ├ [18]: https://github.com/openssl/openssl/commit/05b0663668
│                       │       │                  │       42f930fadd9a6e94df98030af431bb 
│                       │       │                  ├ [19]: https://github.com/openssl/openssl/commit/3d8d5bc105
│                       │       │                  │       6b2f62da9fede23fedbf47e85187b0 
│                       │       │                  ├ [20]: https://github.com/openssl/openssl/commit/715349a1d7
│                       │       │                  │       c6db970e6815dafb90915f07307f98 
│                       │       │                  ├ [21]: https://github.com/openssl/openssl/commit/77bf00ab13
│                       │       │                  │       f6ff5e516535432f0328ed70ec0c26 
│                       │       │                  ├ [22]: https://github.com/openssl/openssl/commit/eecbe33097
│                       │       │                  │       7e8d023aae1ca2d9bdbe983ef3fdc6 
│                       │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-9076 
│                       │       │                  ├ [24]: https://openssl-library.org/news/secadv/20260609.txt 
│                       │       │                  ├ [25]: https://ubuntu.com/security/notices/USN-8414-1 
│                       │       │                  ├ [26]: https://ubuntu.com/security/notices/USN-8414-2 
│                       │       │                  ╰ [27]: https://www.cve.org/CVERecord?id=CVE-2026-9076 
│                       │       ├ PublishedDate   : 2026-06-09T17:17:50.997Z 
│                       │       ╰ LastModifiedDate: 2026-06-16T02:45:58.157Z 
│                       ├ [98]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : passwd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e6ebfac85406f0d5 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b3506eabf8f1fabc849e1868b85511f0ba6800fcae7fbc850ce3
│                       │       │                   6fd55db5d488 
│                       │       ├ Title           : shadow-utils: Default subordinate ID configuration in
│                       │       │                   /etc/login.defs could lead to compromise 
│                       │       ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                       │       │                   default /etc/subuid behavior (e.g., uid 100000 through
│                       │       │                   165535 for the first user account) that can realistically
│                       │       │                   conflict with the uids of users defined on locally
│                       │       │                   administered networks, potentially leading to account
│                       │       │                   takeover, e.g., by leveraging newuidmap for access to an
│                       │       │                   NFS home directory (or same-host resources in the case of
│                       │       │                   remote logins by these local network users). NOTE: it may
│                       │       │                   also be argued that system administrators should not have
│                       │       │                   assigned uids, within local networks, that are within the
│                       │       │                   range that can occur in /etc/subuid. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-1188 
│                       │       ├ VendorSeverity   ╭ alma       : 1 
│                       │       │                  ├ azure      : 1 
│                       │       │                  ├ oracle-oval: 1 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 1 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.6 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                       │       │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-56433 
│                       │       │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │       │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
│                       │       │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                       │       │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                       │       │                  │       -L241 
│                       │       │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                       │       │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/
│                       │       │                  │       4.4 
│                       │       │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │       │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │       │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │       ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                       ├ [99]  ╭ VulnerabilityID : CVE-2026-2297 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c4c877c51883be829263a0481f7995b694247b708d6cd395ddd1
│                       │       │                   2e7e2dcc421c 
│                       │       ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │       ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │       │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │       │                    (a base class) and so does not use io.open_code() to read
│                       │       │                   the .pyc files. sys.audit handlers for this audit event
│                       │       │                   therefore do not fire. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-668 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [38]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │       │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [40]: https://github.com/python/cpython/commit/482d6f8bdba
│                       │       │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                       │       │                  │       4bd69b1565647c18659c6a789ccd9 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/876858c9f65
│                       │       │                  │       d9ab656c7fa639f268ce7856d89dd 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/a51b1b512de
│                       │       │                  │       1d56b3714b65628a2eae2b07e535e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/e58e9802b9b
│                       │       │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                       │       │                  ├ [45]: https://github.com/python/cpython/issues/145506 
│                       │       │                  ├ [46]: https://github.com/python/cpython/pull/145507 
│                       │       │                  ├ [47]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │       │                  ├ [48]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │       │                  ├ [49]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │       │                  ╰ [50]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │       ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [100] ╭ VulnerabilityID : CVE-2026-2297 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c4e4d87e9c8a81c67fa3cf20889f0b05f169e689a1ae316bc60a
│                       │       │                   1a5a28c6615d 
│                       │       ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │       ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │       │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │       │                    (a base class) and so does not use io.open_code() to read
│                       │       │                   the .pyc files. sys.audit handlers for this audit event
│                       │       │                   therefore do not fire. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-668 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [38]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │       │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [40]: https://github.com/python/cpython/commit/482d6f8bdba
│                       │       │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                       │       │                  │       4bd69b1565647c18659c6a789ccd9 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/876858c9f65
│                       │       │                  │       d9ab656c7fa639f268ce7856d89dd 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/a51b1b512de
│                       │       │                  │       1d56b3714b65628a2eae2b07e535e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/e58e9802b9b
│                       │       │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                       │       │                  ├ [45]: https://github.com/python/cpython/issues/145506 
│                       │       │                  ├ [46]: https://github.com/python/cpython/pull/145507 
│                       │       │                  ├ [47]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │       │                  ├ [48]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │       │                  ├ [49]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │       │                  ╰ [50]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │       ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │       ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [101] ╭ VulnerabilityID : CVE-2026-35341 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6a4c712ec9a0e7d6cd0a2ed0090c59471e1b357ae5c00ad6850c
│                       │       │                   db0c02ccd8b4 
│                       │       ├ Title           : A vulnerability in uutils coreutils mkfifo allows for the
│                       │       │                   unauthorized ... 
│                       │       ├ Description     : A vulnerability in uutils coreutils mkfifo allows for the
│                       │       │                   unauthorized modification of permissions on existing files.
│                       │       │                    When mkfifo fails to create a FIFO because a file already
│                       │       │                   exists at the target path, it fails to terminate the
│                       │       │                   operation for that path and continues to execute a
│                       │       │                   follow-up set_permissions call. This results in the
│                       │       │                   existing file's permissions being changed to the default
│                       │       │                   mode (often 644 after umask), potentially exposing
│                       │       │                   sensitive files such as SSH private keys to other users on
│                       │       │                   the system. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-732 
│                       │       ├ VendorSeverity   ╭ ghsa  : 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10020 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:05:55.067Z 
│                       ├ [102] ╭ VulnerabilityID : CVE-2026-35344 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a5c549825c452b8e340513400abcae87cef8d3e932f0909dc70e
│                       │       │                   2b2616e8be9b 
│                       │       ├ Title           : The dd utility in uutils coreutils suppresses errors during
│                       │       │                    file trunc ... 
│                       │       ├ Description     : The dd utility in uutils coreutils suppresses errors during
│                       │       │                    file truncation operations by unconditionally calling
│                       │       │                   Result::ok() on truncation attempts. While intended to
│                       │       │                   mimic GNU behavior for special files like /dev/null, the
│                       │       │                   uutils implementation also hides failures on regular files
│                       │       │                   and directories caused by full disks or read-only file
│                       │       │                   systems. This can lead to silent data corruption in backup
│                       │       │                   or migration scripts, as the utility may report a
│                       │       │                   successful operation even when the destination file
│                       │       │                   contains old or garbage data. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-252 
│                       │       ├ VendorSeverity   ╭ ghsa  : 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9745 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35344 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35344 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:36.49Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T20:09:48.593Z 
│                       ├ [103] ╭ VulnerabilityID : CVE-2026-35345 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:95d1af39461d308d74f7457021a8a8575b10f5305105f0e621ff
│                       │       │                   d08314420c9a 
│                       │       ├ Title           : A vulnerability in the tail utility of uutils coreutils
│                       │       │                   allows for the ... 
│                       │       ├ Description     : A vulnerability in the tail utility of uutils coreutils
│                       │       │                   allows for the exfiltration of sensitive file contents when
│                       │       │                    using the --follow=name option. Unlike GNU tail, the
│                       │       │                   uutils implementation continues to monitor a path after it
│                       │       │                   has been replaced by a symbolic link, subsequently
│                       │       │                   outputting the contents of the link's target. In
│                       │       │                   environments where a privileged user (e.g., root) monitors
│                       │       │                   a log directory, a local attacker with write access to that
│                       │       │                    directory can replace a log file with a symlink to a
│                       │       │                   sensitive system file (such as /etc/shadow), causing tail
│                       │       │                   to disclose the contents of the sensitive file. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ╰ [1]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:L/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10328 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35345 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35345 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:36.627Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T20:04:25.093Z 
│                       ├ [104] ╭ VulnerabilityID : CVE-2026-35348 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:62af1b4d7090a2b65f5689c64de11c8adc6d43d7598de1a33725
│                       │       │                   5989d3d7ff5e 
│                       │       ├ Title           : The sort utility in uutils coreutils is vulnerable to a
│                       │       │                   process panic  ... 
│                       │       ├ Description     : The sort utility in uutils coreutils is vulnerable to a
│                       │       │                   process panic when using the --files0-from option with
│                       │       │                   inputs containing non-UTF-8 filenames. The implementation
│                       │       │                   enforces UTF-8 encoding and utilizes expect(), causing an
│                       │       │                   immediate crash when encountering valid but non-UTF-8
│                       │       │                   paths. This diverges from GNU sort, which treats filenames
│                       │       │                   as raw bytes. A local attacker can exploit this to crash
│                       │       │                   the utility and disrupt automated pipelines. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-248 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9696 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35348 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35348 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:37.04Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T18:57:20.927Z 
│                       ├ [105] ╭ VulnerabilityID : CVE-2026-35350 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e58dd9e52c255e316719c9d4adbf0d3c9b09c1a7ea7aa73f8d73
│                       │       │                   f98c6a49353b 
│                       │       ├ Title           : The cp utility in uutils coreutils fails to properly handle
│                       │       │                    setuid and ... 
│                       │       ├ Description     : The cp utility in uutils coreutils fails to properly handle
│                       │       │                    setuid and setgid bits when ownership preservation fails.
│                       │       │                   When copying with the -p (preserve) flag, the utility
│                       │       │                   applies the source mode bits even if the chown operation is
│                       │       │                    unsuccessful. This can result in a user-owned copy
│                       │       │                   retaining original privileged bits, creating unexpected
│                       │       │                   privileged executables that violate local security
│                       │       │                   policies. This differs from GNU cp, which clears these bits
│                       │       │                    when ownership cannot be preserved. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-281 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H/
│                       │       │                         │           A:L 
│                       │       │                         ╰ V3Score : 6.6 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9750 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35350 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35350 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:37.327Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:04:01.207Z 
│                       ├ [106] ╭ VulnerabilityID : CVE-2026-35351 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7e5361acc42cea164532d4dfd6db9db238014d0361eaa3512be4
│                       │       │                   85a14169e1b6 
│                       │       ├ Title           : The mv utility in uutils coreutils fails to preserve file
│                       │       │                   ownership du ... 
│                       │       ├ Description     : The mv utility in uutils coreutils fails to preserve file
│                       │       │                   ownership during moves across different filesystem
│                       │       │                   boundaries. The utility falls back to a copy-and-delete
│                       │       │                   routine that creates the destination file using the
│                       │       │                   caller's UID/GID rather than the source's metadata. This
│                       │       │                   flaw breaks backups and migrations, causing files moved by
│                       │       │                   a privileged user (e.g., root) to become root-owned
│                       │       │                   unexpectedly, which can lead to information disclosure or
│                       │       │                   restricted access for the intended owners. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-281 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:L/I:L/
│                       │       │                         │           A:L 
│                       │       │                         ╰ V3Score : 4.2 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9714 
│                       │       │                  ├ [2]: https://github.com/uutils/coreutils/pull/11706 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35351 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35351 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:37.457Z 
│                       │       ╰ LastModifiedDate: 2026-04-27T12:28:10.22Z 
│                       ├ [107] ╭ VulnerabilityID : CVE-2026-35352 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:35cf450daaf6d49c272c990ce7b9be265fcf0ef8032900d29f00
│                       │       │                   fbdfdc281145 
│                       │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │       │                   exists in the m ... 
│                       │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │       │                   exists in the mkfifo utility of uutils coreutils. The
│                       │       │                   utility creates a FIFO and then performs a path-based chmod
│                       │       │                    to set permissions. A local attacker with write access to
│                       │       │                   the parent directory can swap the newly created FIFO for a
│                       │       │                   symbolic link between these two operations. This redirects
│                       │       │                   the chmod call to an arbitrary file, potentially enabling
│                       │       │                   privilege escalation if the utility is run with elevated
│                       │       │                   privileges. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 7 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/04/4 
│                       │       │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/05/04/5 
│                       │       │                  ├ [2]: http://www.openwall.com/lists/oss-security/2026/05/04/6 
│                       │       │                  ├ [3]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [4]: https://github.com/uutils/coreutils/issues/10020 
│                       │       │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35352 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-35352 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:37.597Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T18:16:28.37Z 
│                       ├ [108] ╭ VulnerabilityID : CVE-2026-35354 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:063ee964efd223a547135f85e0797d501ea4d76bbee0368e291f
│                       │       │                   02d8eb77d3ea 
│                       │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                       │       │                   exists in the mv ... 
│                       │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                       │       │                   exists in the mv utility of uutils coreutils during
│                       │       │                   cross-device moves. The extended attribute (xattr)
│                       │       │                   preservation logic uses multiple path-based system calls
│                       │       │                   that perform fresh path-to-inode lookups for each
│                       │       │                   operation. A local attacker with write access to the
│                       │       │                   directory can exploit this race to swap files between
│                       │       │                   calls, causing the destination file to receive an
│                       │       │                   inconsistent mix of security xattrs, such as SELinux labels
│                       │       │                    or file capabilities. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10014 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35354 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35354 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:37.867Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:04:08.917Z 
│                       ├ [109] ╭ VulnerabilityID : CVE-2026-35357 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:20b03b9b399aa64fc32c681b4b5a4f995f2f95492e5f4c568f3a
│                       │       │                   d7384db96872 
│                       │       ├ Title           : The cp utility in uutils coreutils is vulnerable to an
│                       │       │                   information dis ... 
│                       │       ├ Description     : The cp utility in uutils coreutils is vulnerable to an
│                       │       │                   information disclosure race condition. Destination files
│                       │       │                   are initially created with umask-derived permissions (e.g.,
│                       │       │                    0644) before being restricted to their final mode (e.g.,
│                       │       │                   0600) later in the process. A local attacker can race to
│                       │       │                   open the file during this window; once obtained, the file
│                       │       │                   descriptor remains valid and readable even after the
│                       │       │                   permissions are tightened, exposing sensitive or private
│                       │       │                   file contents. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10011 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35357 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35357 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:38.267Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:02:53.557Z 
│                       ├ [110] ╭ VulnerabilityID : CVE-2026-35359 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:08b2a8fae06fb78e20f3ed15c682bf686ceea60e27e848bb4c0c
│                       │       │                   f7600ed86e02 
│                       │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in
│                       │       │                   the cp utilit ... 
│                       │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in
│                       │       │                   the cp utility of uutils coreutils allows an attacker to
│                       │       │                   bypass no-dereference intent. The utility checks if a
│                       │       │                   source path is a symbolic link using path-based metadata
│                       │       │                   but subsequently opens it without the O_NOFOLLOW flag. An
│                       │       │                   attacker with concurrent write access can swap a regular
│                       │       │                   file for a symbolic link during this window, causing a
│                       │       │                   privileged cp process to copy the contents of arbitrary
│                       │       │                   sensitive files into a destination controlled by the
│                       │       │                   attacker. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ╰ [1]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10017 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35359 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35359 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:38.537Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:02:25.72Z 
│                       ├ [111] ╭ VulnerabilityID : CVE-2026-35360 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1292e5aecd762e0e88fdec2c91bddadc7b0775279c19699ca41a
│                       │       │                   ebaf7150a9a2 
│                       │       ├ Title           : The touch utility in uutils coreutils is vulnerable to a
│                       │       │                   Time-of-Check ... 
│                       │       ├ Description     : The touch utility in uutils coreutils is vulnerable to a
│                       │       │                   Time-of-Check to Time-of-Use (TOCTOU) race condition during
│                       │       │                    file creation. When the utility identifies a missing path,
│                       │       │                    it later attempts creation using File::create(), which
│                       │       │                   internally uses O_TRUNC. An attacker can exploit this
│                       │       │                   window to create a file or swap a symlink at the target
│                       │       │                   path, causing touch to truncate an existing file and
│                       │       │                   leading to permanent data loss. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10019 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35360 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35360 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:38.673Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:02:11.56Z 
│                       ├ [112] ╭ VulnerabilityID : CVE-2026-35363 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3ce16e0aee26854e03a0f7267d46cc19a72659f9bbe54715a97a
│                       │       │                   6d1ecc54c6d3 
│                       │       ├ Title           : A vulnerability in the rm utility of uutils coreutils
│                       │       │                   allows the bypas ... 
│                       │       ├ Description     : A vulnerability in the rm utility of uutils coreutils
│                       │       │                   allows the bypass of safeguard mechanisms intended to
│                       │       │                   protect the current directory. While the utility correctly
│                       │       │                   refuses to delete . or .., it fails to recognize equivalent
│                       │       │                    paths with trailing slashes, such as ./ or .///. An
│                       │       │                   accidental or malicious execution of rm -rf ./ results in
│                       │       │                   the silent recursive deletion of all contents within the
│                       │       │                   current directory. The command further obscures the data
│                       │       │                   loss by reporting a misleading 'Invalid input' error, which
│                       │       │                    may cause users to miss the critical window for data
│                       │       │                   recovery. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:H/
│                       │       │                         │           A:L 
│                       │       │                         ╰ V3Score : 5.6 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9749 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:02:00.463Z 
│                       ├ [113] ╭ VulnerabilityID : CVE-2026-35364 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d10659271f4b4ccf200bd32d704c197fdf809e923a2b2980236b
│                       │       │                   4e5f2f9aef65 
│                       │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │       │                   exists in the m ... 
│                       │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                       │       │                   exists in the mv utility of uutils coreutils during
│                       │       │                   cross-device operations. The utility removes the
│                       │       │                   destination path before recreating it through a copy
│                       │       │                   operation. A local attacker with write access to the
│                       │       │                   destination directory can exploit this window to replace
│                       │       │                   the destination with a symbolic link. The subsequent
│                       │       │                   privileged move operation will follow the symlink, allowing
│                       │       │                    the attacker to redirect the write and overwrite an
│                       │       │                   arbitrary target file with contents from the source. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10015 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35364 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35364 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:39.737Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:19:11.777Z 
│                       ├ [114] ╭ VulnerabilityID : CVE-2026-35367 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b2ecb86389759e53e9cb35dd862196989ddb9bda3a4b1a2bf7be
│                       │       │                   14117cebbfc2 
│                       │       ├ Title           : The nohup utility in uutils coreutils creates its default
│                       │       │                   output file, ... 
│                       │       ├ Description     : The nohup utility in uutils coreutils creates its default
│                       │       │                   output file, nohup.out, without specifying explicit
│                       │       │                   restricted permissions. This causes the file to inherit
│                       │       │                   umask-based permissions, typically resulting in a
│                       │       │                   world-readable file (0644). In multi-user environments,
│                       │       │                   this allows any user on the system to read the captured
│                       │       │                   stdout/stderr output of a command, potentially exposing
│                       │       │                   sensitive information. This behavior diverges from GNU
│                       │       │                   coreutils, which creates nohup.out with owner-only (0600)
│                       │       │                   permissions. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-732 
│                       │       ├ VendorSeverity   ╭ ghsa  : 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10021 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35367 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35367 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:40.423Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:19:05.067Z 
│                       ├ [115] ╭ VulnerabilityID : CVE-2026-35368 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7f4f340f2768c3378c76a7e38794da916a5e38ac0bdc156dedd9
│                       │       │                   c35b833977e5 
│                       │       ├ Title           : A vulnerability exists in the chroot utility of uutils
│                       │       │                   coreutils when  ... 
│                       │       ├ Description     : A vulnerability exists in the chroot utility of uutils
│                       │       │                   coreutils when using the --userspec option. The utility
│                       │       │                   resolves the user specification via getpwnam() after
│                       │       │                   entering the chroot but before dropping root privileges. On
│                       │       │                    glibc-based systems, this can trigger the Name Service
│                       │       │                   Switch (NSS) to load shared libraries (e.g., libnss_*.so.2)
│                       │       │                    from the new root directory. If the NEWROOT is writable by
│                       │       │                    an attacker, they can inject a malicious NSS module to
│                       │       │                   execute arbitrary code as root, facilitating a full
│                       │       │                   container escape or privilege escalation. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-426 
│                       │       ├ VendorSeverity   ╭ ghsa  : 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 7.9 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10327 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35368 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35368 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:40.56Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:18:55.67Z 
│                       ├ [116] ╭ VulnerabilityID : CVE-2026-35370 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:436a9032a0ce84966821481bc20386cb41f0f5da5c792d2f30a6
│                       │       │                   b4986b7be9a5 
│                       │       ├ Title           : The id utility in uutils coreutils miscalculates the
│                       │       │                   groups= section o ... 
│                       │       ├ Description     : The id utility in uutils coreutils miscalculates the
│                       │       │                   groups= section of its output. The implementation uses a
│                       │       │                   user's real GID instead of their effective GID to compute
│                       │       │                   the group list, leading to potentially divergent output
│                       │       │                   compared to GNU coreutils. Because many scripts and
│                       │       │                   automated processes rely on the output of id to make
│                       │       │                   security-critical access-control or permission decisions,
│                       │       │                   this discrepancy can lead to unauthorized access or
│                       │       │                   security misconfigurations. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-863 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 4.4 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T20:02:44.33Z 
│                       ├ [117] ╭ VulnerabilityID : CVE-2026-35371 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7bc005f9ed9a8a5cc8c9ed488d7a4d279a91dfe2c47e2081386d
│                       │       │                   04fad53f71e5 
│                       │       ├ Title           : The id utility in uutils coreutils exhibits incorrect
│                       │       │                   behavior in its  ... 
│                       │       ├ Description     : The id utility in uutils coreutils exhibits incorrect
│                       │       │                   behavior in its "pretty print" output when the real UID and
│                       │       │                    effective UID differ. The implementation incorrectly uses
│                       │       │                   the effective GID instead of the effective UID when
│                       │       │                   performing a name lookup for the effective user. This
│                       │       │                   results in misleading diagnostic output that can cause
│                       │       │                   automated scripts or system administrators to make
│                       │       │                   incorrect decisions regarding file permissions or access
│                       │       │                   control. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-451 
│                       │       ├ VendorSeverity   ╭ ghsa  : 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/
│                       │       │                         │           A:N 
│                       │       │                         ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T20:02:06.183Z 
│                       ├ [118] ╭ VulnerabilityID : CVE-2026-35373 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:92b825b23f6be36d35e22fd0c73a63aa265583d511a71e15031b
│                       │       │                   59eefd1184aa 
│                       │       ├ Title           : A logic error in the ln utility of uutils coreutils causes
│                       │       │                   the program ... 
│                       │       ├ Description     : A logic error in the ln utility of uutils coreutils causes
│                       │       │                   the program to reject source paths containing non-UTF-8
│                       │       │                   filename bytes when using target-directory forms (e.g., ln
│                       │       │                   SOURCE... DIRECTORY). While GNU ln treats filenames as raw
│                       │       │                   bytes and creates the links correctly, the uutils
│                       │       │                   implementation enforces UTF-8 encoding, resulting in a
│                       │       │                   failure to stat the file and a non-zero exit code. In
│                       │       │                   environments where automated scripts or system tasks
│                       │       │                   process valid but non-UTF-8 filenames common on Unix
│                       │       │                   filesystems, this divergence causes the utility to fail,
│                       │       │                   leading to a local denial of service for those specific
│                       │       │                   operations. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-176 
│                       │       ├ VendorSeverity   ╭ ghsa  : 1 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                       │       │                  │      │           A:L 
│                       │       │                  │      ╰ V3Score : 3.3 
│                       │       │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/pull/11403 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T20:01:25.93Z 
│                       ├ [119] ╭ VulnerabilityID : CVE-2026-35374 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:832149b3c0b48248d04cdb852815151bebd31d41433f4f91929d
│                       │       │                   5c516d5aeb5d 
│                       │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                       │       │                   exists in the sp ... 
│                       │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                       │       │                   exists in the split utility of uutils coreutils. The
│                       │       │                   program attempts to prevent data loss by checking for
│                       │       │                   identity between input and output files using their file
│                       │       │                   paths before initiating the split operation. However, the
│                       │       │                   utility subsequently opens the output file with truncation
│                       │       │                   after this path-based validation is complete. A local
│                       │       │                   attacker with write access to the directory can exploit
│                       │       │                   this race window by manipulating mutable path components
│                       │       │                   (e.g., swapping a path with a symbolic link). This can
│                       │       │                   cause split to truncate and write to an unintended target
│                       │       │                   file, potentially including the input file itself or other
│                       │       │                   sensitive files accessible to the process, leading to
│                       │       │                   permanent data loss. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ ghsa  : 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                       │       │                         │           A:H 
│                       │       │                         ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/pull/11401 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35374 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35374 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:42.127Z 
│                       │       ╰ LastModifiedDate: 2026-05-04T19:22:14.457Z 
│                       ├ [120] ╭ VulnerabilityID : CVE-2026-35377 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0c8267b466634df50a3dc9ccc13f126c2955f7a2e8035907394f
│                       │       │                   650c92050cd1 
│                       │       ├ Title           : A logic error in the env utility of uutils coreutils causes
│                       │       │                    a failure  ... 
│                       │       ├ Description     : A logic error in the env utility of uutils coreutils causes
│                       │       │                    a failure to correctly parse command-line arguments when
│                       │       │                   utilizing the -S (split-string) option. In GNU env,
│                       │       │                   backslashes within single quotes are treated literally
│                       │       │                   (with the exceptions of \\ and \'). However, the uutils
│                       │       │                   implementation incorrectly attempts to validate these
│                       │       │                   sequences, resulting in an "invalid sequence" error and an
│                       │       │                   immediate process termination with an exit status of 125
│                       │       │                   when encountering valid but unrecognized sequences like \a
│                       │       │                   or \x. This divergence from GNU behavior breaks
│                       │       │                   compatibility for automated scripts and administrative
│                       │       │                   workflows that rely on standard split-string semantics,
│                       │       │                   leading to a local denial of service for those
│                       │       │                   operations. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-20 
│                       │       ├ VendorSeverity   ╭ ghsa  : 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                       │       │                         │           A:L 
│                       │       │                         ╰ V3Score : 3.3 
│                       │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                       │       │                  ├ [1]: https://github.com/uutils/coreutils/pull/11512 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35377 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35377 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:42.577Z 
│                       │       ╰ LastModifiedDate: 2026-04-24T19:06:46.293Z 
│                       ├ [121] ╭ VulnerabilityID : CVE-2025-45582 
│                       │       ├ PkgID           : tar@1.35+dfsg-4 
│                       │       ├ PkgName         : tar 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : df8f3d12dd71b054 
│                       │       ├ InstalledVersion: 1.35+dfsg-4 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:498f0528bcc6203b08b1fab68908c37831d450746fa5adfeaa27
│                       │       │                   406dcb9664d4 
│                       │       ├ Title           : tar: Tar path traversal 
│                       │       ├ Description     : GNU Tar through 1.35 allows file overwrite via directory
│                       │       │                   traversal in crafted TAR archives, with a certain two-step
│                       │       │                   process. First, the victim must extract an archive that
│                       │       │                   contains a ../ symlink to a critical directory. Second, the
│                       │       │                    victim must extract an archive that contains a critical
│                       │       │                   file, specified via a relative pathname that begins with
│                       │       │                   the symlink name and ends with that critical file's name.
│                       │       │                   Here, the extraction follows the symlink and overwrites the
│                       │       │                    critical file. This bypasses the protection mechanism of
│                       │       │                   "Member name contains '..'" that would occur for a single
│                       │       │                   TAR archive that attempted to specify the critical file via
│                       │       │                    a ../ approach. For example, the first archive can contain
│                       │       │                    "x -> ../../../../../home/victim/.ssh" and the second
│                       │       │                   archive can contain x/authorized_keys. This can affect
│                       │       │                   server applications that automatically extract any number
│                       │       │                   of user-supplied TAR archives, and were relying on the
│                       │       │                   blocking of traversal. This can also affect software
│                       │       │                   installation processes in which "tar xf" is run more than
│                       │       │                   once (e.g., when installing a package can automatically
│                       │       │                   install two dependencies that are set up as untrusted
│                       │       │                   tarballs instead of official packages). NOTE: the official
│                       │       │                   GNU Tar manual has an otherwise-empty directory for each
│                       │       │                   "tar xf" in its Security Rules of Thumb; however,
│                       │       │                   third-party advice leads users to run "tar xf" more than
│                       │       │                   once into the same directory. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-24 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 5.6 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/11/0
│                       │       │                  │       1/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:0067 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-45582 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2379592 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2379592 
│                       │       │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-45582 
│                       │       │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-0067.html 
│                       │       │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:0067 
│                       │       │                  ├ [8] : https://github.com/i900008/vulndb/blob/main/Gnu_tar_
│                       │       │                  │       vuln.md 
│                       │       │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-45582.html 
│                       │       │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2026-0067.html 
│                       │       │                  ├ [11]: https://lists.gnu.org/archive/html/bug-tar/2025-08/m
│                       │       │                  │       sg00012.html 
│                       │       │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-45582 
│                       │       │                  ├ [13]: https://www.cve.org/CVERecord?id=CVE-2025-45582 
│                       │       │                  ├ [14]: https://www.gnu.org/software/tar/ 
│                       │       │                  ├ [15]: https://www.gnu.org/software/tar/manual/html_node/In
│                       │       │                  │       tegrity.html 
│                       │       │                  ├ [16]: https://www.gnu.org/software/tar/manual/html_node/In
│                       │       │                  │       tegrity.html#Integrity 
│                       │       │                  ╰ [17]: https://www.gnu.org/software/tar/manual/html_node/Se
│                       │       │                          curity-rules-of-thumb.html 
│                       │       ├ PublishedDate   : 2025-07-11T17:15:37.183Z 
│                       │       ╰ LastModifiedDate: 2025-11-02T01:15:32.307Z 
│                       ├ [122] ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                       │       │                  │         6eaa18fa67bf369e9e2c6 
│                       │       │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                       │       │                            886834d47547f57e58669 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2057b12d4bc8c9660fb301293b864d0bada723ecf5e37ea067fd
│                       │       │                   d09822fc6b84 
│                       │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                       │       │                   loop devices 
│                       │       ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                       │       │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                       │       │                   vulnerability has been identified in the SUID binary
│                       │       │                   /usr/bin/mount from util-linux. The mount binary, when
│                       │       │                   setting up loop devices, validates the source file path
│                       │       │                   with user privileges via fork() + setuid() + realpath(),
│                       │       │                   but subsequently re-canonicalizes and opens it with root
│                       │       │                   privileges (euid=0) without verifying that the path has not
│                       │       │                    been replaced between both operations. Neither O_NOFOLLOW,
│                       │       │                    nor inode comparison, nor post-open fstat() are employed.
│                       │       │                   This allows a local unprivileged user to replace the source
│                       │       │                    file with a symlink pointing to any root-owned file or
│                       │       │                   device during the race window, causing the SUID binary to
│                       │       │                   open and mount it as root. Exploitation requires an
│                       │       │                   /etc/fstab entry with user,loop options whose path points
│                       │       │                   to a directory where the attacker has write permission, and
│                       │       │                    that /usr/bin/mount has the SUID bit set (the default
│                       │       │                   configuration on virtually all Linux distributions). The
│                       │       │                   impact is unauthorized read access to root-protected files
│                       │       │                   and block devices, including backup images, disk volumes,
│                       │       │                   and any file containing a valid filesystem. This issue has
│                       │       │                   been patched in version 2.41.4. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-59 
│                       │       │                  ├ [1]: CWE-269 
│                       │       │                  ╰ [2]: CWE-367 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ╰ [123] ╭ VulnerabilityID : CVE-2026-3184 
│                               ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                               ├ PkgName         : util-linux 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                               │                  │       &distro=ubuntu-26.04 
│                               │                  ╰ UID : 34e9503915630576 
│                               ├ InstalledVersion: 2.41.3-3ubuntu2 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe
│                               │                  │         6eaa18fa67bf369e9e2c6 
│                               │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a941
│                               │                            886834d47547f57e58669 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:87a4fbac50b1df54845940e1648cf1a9897664f96e4cbe50d2c3
│                               │                   8845933e764d 
│                               ├ Title           : util-linux: util-linux: Access control bypass due to
│                               │                   improper hostname canonicalization 
│                               ├ Description     : A flaw was found in util-linux. Improper hostname
│                               │                   canonicalization in the `login(1)` utility, when invoked
│                               │                   with the `-h` option, can modify the supplied remote
│                               │                   hostname before setting `PAM_RHOST`. A remote attacker
│                               │                   could exploit this by providing a specially crafted
│                               │                   hostname, potentially bypassing host-based Pluggable
│                               │                   Authentication Modules (PAM) access control rules that rely
│                               │                    on fully qualified domain names. This could lead to
│                               │                   unauthorized access. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ─ [0]: CWE-289 
│                               ├ VendorSeverity   ╭ azure : 1 
│                               │                  ├ nvd   : 2 
│                               │                  ├ redhat: 1 
│                               │                  ╰ ubuntu: 2 
│                               ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                               │                  │        │           L/A:N 
│                               │                  │        ╰ V3Score : 5.3 
│                               │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                               │                           │           L/A:N 
│                               │                           ╰ V3Score : 3.7 
│                               ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                               │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                               │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                               │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                               │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                               ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                               ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
├ [1] ╭ Target  : Java 
│     ├ Class   : lang-pkgs 
│     ├ Type    : jar 
│     ╰ Packages 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-33811 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4981 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:1900f450c3e53fdbafb94ecd7bf08eaa5684d88328aaa9d8bfbf3
                        │      │                   d1f9208e0fb 
                        │      ├ Title           : net: golang: Go net package: Denial of Service via long
                        │      │                   CNAME response in LookupCNAME 
                        │      ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
                        │      │                   long CNAME response can trigger a double-free of C memory
                        │      │                   and a crash. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-415 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ nvd        : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ photon     : 3 
                        │      │                  ╰ redhat     : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33811 
                        │      │                  ├ [1]: https://go.dev/cl/767860 
                        │      │                  ├ [2]: https://go.dev/issue/78803 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [4]: https://linux.oracle.com/cve/CVE-2026-33811.html 
                        │      │                  ├ [5]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-4981 
                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-33811 
                        │      ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
                        │      ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-33814 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:ed44c1d2e47b5223a9b58e3835a57360d077686101ebb54da7bde
                        │      │                   2d8ed9ca68c 
                        │      ├ Title           : When processing HTTP/2 SETTINGS frames, transport will enter
                        │      │                    an infini ... 
                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
                        │      │                    an infinite loop of writing CONTINUATION frames if it
                        │      │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-835 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ azure      : 2 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ nvd        : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ photon     : 3 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://github.com/golang/go/issues/78476 
                        │      │                  ├ [1] : https://go-review.googlesource.com/c/go/+/761581 
                        │      │                  ├ [2] : https://go-review.googlesource.com/c/net/+/761640 
                        │      │                  ├ [3] : https://go.dev/cl/761581 
                        │      │                  ├ [4] : https://go.dev/cl/761640 
                        │      │                  ├ [5] : https://go.dev/issue/78476 
                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/qcCIEXs
                        │      │                  │       o47M 
                        │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2026-33814.html 
                        │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
                        │      │                  ├ [10]: https://pkg.go.dev/vuln/GO-2026-4918 
                        │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-8430-1 
                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
                        │      ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-39820 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4986 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:fc819eb47b98867a22f037bef0b1dfc3d9c58700d11115876313e
                        │      │                   600c63004dd 
                        │      ├ Title           : Well-crafted inputs reaching ParseAddress, ParseAddressList,
                        │      │                    and Parse ... 
                        │      ├ Description     : Well-crafted inputs reaching ParseAddress, ParseAddressList,
                        │      │                    and ParseDate were able to trigger excessive CPU exhaustion
                        │      │                    and memory allocations. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ nvd        : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ╰ photon     : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://go.dev/cl/759940 
                        │      │                  ├ [1]: https://go.dev/issue/78566 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39820.html 
                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4986 
                        │      ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
                        │      ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39823 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4982 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:8f263015dec87784d02d0b53308e063693a3edd673492d0f4727b
                        │      │                   b99e5f5ac21 
                        │      ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
                        │      │                   correctly  ... 
                        │      ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
                        │      │                   correctly escaped inside of a <meta> tag's <content>
                        │      │                   attribute. If the URL content were to insert ASCII
                        │      │                   whitespaces around the '=' rune inside of the <content>
                        │      │                   attribute, the escaper would fail to similarly escape it,
                        │      │                   leading to XSS. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ bitnami    : 2 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ╰ photon     : 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0]: https://go.dev/cl/769920 
                        │      │                  ├ [1]: https://go.dev/issue/78913 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39823.html 
                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4982 
                        │      ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
                        │      ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-39825 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4976 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d43dcc9a4c31901fa3b5f1f42441d30c034df68aa52ccf7edaf82
                        │      │                   9daa16a8843 
                        │      ├ Title           : ReverseProxy can forward queries containing parameters not
                        │      │                   visible to  ... 
                        │      ├ Description     : ReverseProxy can forward queries containing parameters not
                        │      │                   visible to Rewrite functions. When used with a Rewrite
                        │      │                   function, or a Director function which parses query
                        │      │                   parameters, ReverseProxy sanitizes the forwarded request to
                        │      │                   remove query parameters which are not parsed by
                        │      │                   url.ParseQuery. ReverseProxy does not take ParseQuery's
                        │      │                   limit on the total number of query parameters (controlled by
                        │      │                    GODEBUG=urlmaxqueryparams=N) into account. This can permit
                        │      │                   ReverseProxy to forward a request containing a query
                        │      │                   parameter that is not visible to the Rewrite function. For
                        │      │                   example, the query "a1=x&a2=x&...&a10000=x&hidden=y" can
                        │      │                   forward the parameter "hidden=y" while hiding it from the
                        │      │                   proxy's Rewrite function. 
                        │      ├ Severity        : HIGH 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ bitnami    : 2 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ╰ photon     : 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                        │      │                            │           N/A:N 
                        │      │                            ╰ V3Score : 5.3 
                        │      ├ References       ╭ [0]: https://go.dev/cl/770541 
                        │      │                  ├ [1]: https://go.dev/issue/78948 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39825.html 
                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4976 
                        │      ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
                        │      ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2026-39836 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4971 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:de6cb7a1a0dc502e80e688e9f368c79f3f3a886cff8bb9cf6a4af
                        │      │                   7582f7924be 
                        │      ├ Title           : ELSA-2026-22112:  go-toolset:ol8 security update (IMPORTANT) 
                        │      ├ Description     : The Dial and LookupPort functions panic on Windows when
                        │      │                   provided with an input containing a NUL (0). 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-476 
                        │      ├ VendorSeverity   ╭ bitnami    : 3 
                        │      │                  ├ nvd        : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ╰ photon     : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://go.dev/cl/775320 
                        │      │                  ├ [1]: https://go.dev/issue/79006 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39836.html 
                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4971 
                        │      ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
                        │      ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-42499 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4977 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:16a92e83d7e27b166930745b92187c2ef6b3a63d616b150960b97
                        │      │                   35c9fc25030 
                        │      ├ Title           : Pathological inputs could cause DoS through consumePhrase
                        │      │                   when parsing ... 
                        │      ├ Description     : Pathological inputs could cause DoS through consumePhrase
                        │      │                   when parsing an email address according to RFC 5322. 
                        │      ├ Severity        : HIGH 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ╰ photon     : 3 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://go.dev/cl/771520 
                        │      │                  ├ [1]: https://go.dev/issue/78987 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-42499.html 
                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4977 
                        │      ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
                        │      ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42504 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:b5a2d2b40fbc7cb9fc19b18dcfee980f715c3ec43bf833cbcf516
                        │      │                   b11a7e0b3af 
                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
                        │      │                   invalid enc ... 
                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
                        │      │                   invalid encoded-words can consume excessive CPU. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-407 
                        │      ├ VendorSeverity   ─ bitnami: 3 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0]: https://go.dev/cl/774481 
                        │      │                  ├ [1]: https://go.dev/issue/79217 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
                        │      │                  │      cKw 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-27145 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:5ee74439c353b89baaf34656a861ab0863bb5e9d280d9c42ca6a1
                        │      │                   257f9f36fab 
                        │      ├ Title           : *x509.Certificate).VerifyHostname previously called
                        │      │                   matchHostnames in ... 
                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
                        │      │                   execute repeatedly on the same input hostname. With a large
                        │      │                   DNS SAN list, verification costs scaled quadratically based
                        │      │                   on the number of SAN entries multiplied by the hostname's
                        │      │                   label count. Because x509.Verify validates hostnames before
                        │      │                   building the certificate chain, this overhead occurred even
                        │      │                   for untrusted certificates. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ VendorSeverity   ─ bitnami: 2 
                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           L/A:H 
                        │      │                            ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0]: https://go.dev/cl/783621 
                        │      │                  ├ [1]: https://go.dev/issue/79694 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
                        │      │                  │      cKw 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-39826 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4980 
                        │      ├ PkgID           : stdlib@v1.26.2 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │      │                  ╰ UID : e5871284774cde90 
                        │      ├ InstalledVersion: v1.26.2 
                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                        │      │                  │         eaa18fa67bf369e9e2c6 
                        │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                        │      │                            86834d47547f57e58669 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:4bbcc27c47127df1317825104a35ac729ba948e606d8f46428837
                        │      │                   7df137d046b 
                        │      ├ Title           : html/template: golang: html/template: Cross-site scripting
                        │      │                   due to incorrect script tag escaping 
                        │      ├ Description     : If a trusted template author were to write a <script> tag
                        │      │                   containing an empty 'type' attribute or a 'type' attribute
                        │      │                   with an ASCII whitespace, the execution of the template
                        │      │                   would incorrectly escape any data passed into the <script>
                        │      │                   block. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-116 
                        │      ├ VendorSeverity   ╭ amazon     : 3 
                        │      │                  ├ bitnami    : 2 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ photon     : 2 
                        │      │                  ╰ redhat     : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                  │         │           L/A:N 
                        │      │                  │         ╰ V3Score : 6.1 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 5.4 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-39826 
                        │      │                  ├ [1]: https://go.dev/cl/771180 
                        │      │                  ├ [2]: https://go.dev/issue/78981 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso
                        │      │                  │      47M 
                        │      │                  ├ [4]: https://linux.oracle.com/cve/CVE-2026-39826.html 
                        │      │                  ├ [5]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-4980 
                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-39826 
                        │      ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
                        │      ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
                        ╰ [10] ╭ VulnerabilityID : CVE-2026-42507 
                               ├ VendorIDs        ─ [0]: GO-2026-5039 
                               ├ PkgID           : stdlib@v1.26.2 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                               │                  ╰ UID : e5871284774cde90 
                               ├ InstalledVersion: v1.26.2 
                               ├ FixedVersion    : 1.25.11, 1.26.4 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
                               │                  │         eaa18fa67bf369e9e2c6 
                               │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
                               │                            86834d47547f57e58669 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:f5b6a1ecfaf76a443952e89e77a1813cb614be47fa3d3cfa5cf5a
                               │                   ed37826446d 
                               ├ Title           : When returning errors, functions in the net/textproto
                               │                   package would in ... 
                               ├ Description     : When returning errors, functions in the net/textproto
                               │                   package would include its input as part of the error. This
                               │                   might allow an attacker to inject misleading content to
                               │                   errors that are printed or logged. 
                               ├ Severity        : MEDIUM 
                               ├ VendorSeverity   ─ bitnami: 2 
                               ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                               │                            │           L/A:N 
                               │                            ╰ V3Score : 5.3 
                               ├ References       ╭ [0]: https://go.dev/cl/777060 
                               │                  ├ [1]: https://go.dev/issue/79346 
                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
                               │                  │      cKw 
                               │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
                               │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
                               ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
```
