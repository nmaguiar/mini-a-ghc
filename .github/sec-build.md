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
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1031851e6037b687115f2785e15a83f091af6a266cfb68bbbfbaf
│                       │      │                   5b6be6c356e 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │      ├ PkgName         : bsdutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 35a8976635e225e2 
│                       │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:15d89525d4a2381d671dc19a4a7867bf1982e96b59eef8b945f3c
│                       │      │                   30073dff77b 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2026-41163 
│                       │      ├ PkgID           : bubblewrap@0.11.1-1 
│                       │      ├ PkgName         : bubblewrap 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bubblewrap@0.11.1-1?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : ac02d1f0043d0a20 
│                       │      ├ InstalledVersion: 0.11.1-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41163 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c7f15da2b4e4b0f112fd6b22e3b167136aea15cbfb25fef187f7b
│                       │      │                   2f9a9ebcf23 
│                       │      ├ Title           : bubblewrap is a low-level unprivileged sandboxing tool. From
│                       │      │                    version 0 ... 
│                       │      ├ Description     : bubblewrap is a low-level unprivileged sandboxing tool. From
│                       │      │                    version 0.11.0 to before version 0.11.2, if bubblewrap is
│                       │      │                   installed in setuid mode then the user can use ptrace to
│                       │      │                   attach to bubblewrap and control the unprivileged part of
│                       │      │                   the sandbox setup phase. This allows the attacker to
│                       │      │                   arbitrarily use the privileged operations, and in particular
│                       │      │                    the "overlay mount" operation, allowing the creation of
│                       │      │                   overlay mounts which is otherwise not allowed in the setuid
│                       │      │                   version of bubblewrap. This issue has been patched in
│                       │      │                   version 0.11.2. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-269 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://github.com/containers/bubblewrap/releases/tag/
│                       │      │                  │      v0.11.2 
│                       │      │                  ├ [1]: https://github.com/containers/bubblewrap/security/advi
│                       │      │                  │      sories/GHSA-xq78-7hw4-5jvp 
│                       │      │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-41163 
│                       │      ├ PublishedDate   : 2026-05-09T04:16:21.167Z 
│                       │      ╰ LastModifiedDate: 2026-05-13T16:49:32.233Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libblkid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : f63a0a78e3cac3a3 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:136ebfab14fc9f4197d2df3fdafd6eed78942562d3a1e00aba40d
│                       │      │                   17045c2aed8 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libblkid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : f63a0a78e3cac3a3 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:210ce33830d250184088dd2e147fc4bf4d11935ed2b982630d404
│                       │      │                   2a0ba136f9b 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:db11dfc6b91a35c6b09b8d0c0083ecf0d74ad5140ed4c9c1e0771
│                       │      │                   d05a6420530 
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
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │      │                  ├ [1]: https://inbox.sourceware.org/libc-announce/76814edf-cf
│                       │      │                  │      7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │      │                  ├ [3]: https://packages.fedoraproject.org/pkgs/glibc/glibc-gc
│                       │      │                  │      onv-extra/ 
│                       │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0007 
│                       │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4884af734bc8c93b2c08ae9d9687e4e93d16333b02591ff400f54
│                       │      │                   35f4cfa30ac 
│                       │      ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted DNS
│                       │      │                    server response 
│                       │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │      │                   nsswitch.conf that specifies the library's DNS backend in
│                       │      │                   the GNU C Library version 2.34 to version 2.43 could, with a
│                       │      │                    crafted response from the configured DNS server, result in
│                       │      │                   a violation of the DNS specification that causes the
│                       │      │                   application to treat a non-answer section of the DNS
│                       │      │                   response as a valid answer. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/23/2 
│                       │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                       ├ [7]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : aa471766c29fe384 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:12a7c7e8cd4da1a10f08fd41ffd37af22c849993275a55db12aba
│                       │      │                   d77f2f4ad2f 
│                       │      ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                       │      │                   gethostbyaddr functions 
│                       │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │      │                   nsswitch.conf that specifies the library's DNS backend in
│                       │      │                   the GNU C library version 2.34 to version 2.43 could result
│                       │      │                   in an invalid DNS hostname being returned to the caller in
│                       │      │                   violation of the DNS specification. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-20 
│                       │      │                  ╰ [1]: CWE-88 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/23/2 
│                       │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                       ├ [8]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2711a765dffdf7d8f8548b421f380e650818e6cfaaf8c8921612b
│                       │      │                   20990531e12 
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
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │      │                  ├ [1]: https://inbox.sourceware.org/libc-announce/76814edf-cf
│                       │      │                  │      7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │      │                  ├ [3]: https://packages.fedoraproject.org/pkgs/glibc/glibc-gc
│                       │      │                  │      onv-extra/ 
│                       │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0007 
│                       │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                       ├ [9]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9756022f5c83f7f0ba00fb9c0954ba79afe09e159bda1dd17321f
│                       │      │                   60892674bb7 
│                       │      ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted DNS
│                       │      │                    server response 
│                       │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │      │                   nsswitch.conf that specifies the library's DNS backend in
│                       │      │                   the GNU C Library version 2.34 to version 2.43 could, with a
│                       │      │                    crafted response from the configured DNS server, result in
│                       │      │                   a violation of the DNS specification that causes the
│                       │      │                   application to treat a non-answer section of the DNS
│                       │      │                   response as a valid answer. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/23/2 
│                       │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                       ├ [10] ╭ VulnerabilityID : CVE-2026-4438 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 229c678f3865c408 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:cc522d2bfb9fb8496e7d54e9133ac18c240b0c40841d1a0ca0cad
│                       │      │                   27e26bff172 
│                       │      ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                       │      │                   gethostbyaddr functions 
│                       │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │      │                   nsswitch.conf that specifies the library's DNS backend in
│                       │      │                   the GNU C library version 2.34 to version 2.43 could result
│                       │      │                   in an invalid DNS hostname being returned to the caller in
│                       │      │                   violation of the DNS specification. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-20 
│                       │      │                  ╰ [1]: CWE-88 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/23/2 
│                       │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                       ├ [11] ╭ VulnerabilityID : CVE-2026-4046 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c5d3c445dc9812939c011e191fd7bf72da243ef8da8d68a1c4c89
│                       │      │                   d6cd99080c7 
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
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4046 
│                       │      │                  ├ [1]: https://inbox.sourceware.org/libc-announce/76814edf-cf
│                       │      │                  │      7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                       │      │                  ├ [3]: https://packages.fedoraproject.org/pkgs/glibc/glibc-gc
│                       │      │                  │      onv-extra/ 
│                       │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                       │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0007 
│                       │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;f
│                       │      │                  │      =advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                       │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                       │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                       ├ [12] ╭ VulnerabilityID : CVE-2026-4437 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:656f4ffb7380ed9412d1e6970b3bdfce05dd263edd424ea5cc2c8
│                       │      │                   db4e67063ed 
│                       │      ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted DNS
│                       │      │                    server response 
│                       │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │      │                   nsswitch.conf that specifies the library's DNS backend in
│                       │      │                   the GNU C Library version 2.34 to version 2.43 could, with a
│                       │      │                    crafted response from the configured DNS server, result in
│                       │      │                   a violation of the DNS specification that causes the
│                       │      │                   application to treat a non-answer section of the DNS
│                       │      │                   response as a valid answer. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/23/2 
│                       │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                       ├ [13] ╭ VulnerabilityID : CVE-2026-4438 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : a6167efe03e34488 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:52b21295e61a9af903d781a5e5ca39c9bf038f9c5c9c6806bf07a
│                       │      │                   b38d273f376 
│                       │      ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                       │      │                   gethostbyaddr functions 
│                       │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                       │      │                   nsswitch.conf that specifies the library's DNS backend in
│                       │      │                   the GNU C library version 2.34 to version 2.43 could result
│                       │      │                   in an invalid DNS hostname being returned to the caller in
│                       │      │                   violation of the DNS specification. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ╭ [0]: CWE-20 
│                       │      │                  ╰ [1]: CWE-88 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/23/2 
│                       │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                       ├ [14] ╭ VulnerabilityID : CVE-2025-66382 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8753ac30579268ecc3283fc819f78595ee31b0fbae97ef4247870
│                       │      │                   cb8fb07be86 
│                       │      ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                       │      │                   processing 
│                       │      ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                       │      │                   approximate size of 2 MiB can lead to dozens of seconds of
│                       │      │                   processing time. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ nvd   : 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 2.9 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/12/02/1 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-66382 
│                       │      │                  ├ [2]: https://cert-portal.siemens.com/productcert/html/ssa-0
│                       │      │                  │      82556.html 
│                       │      │                  ├ [3]: https://github.com/libexpat/libexpat/issues/1076 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-66382 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                       │      ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                       │      ╰ LastModifiedDate: 2026-05-12T13:17:23.933Z 
│                       ├ [15] ╭ VulnerabilityID : CVE-2026-41990 
│                       │      ├ PkgID           : libgcrypt20@1.12.0-2 
│                       │      ├ PkgName         : libgcrypt20 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distro
│                       │      │                  │       =ubuntu-26.04 
│                       │      │                  ╰ UID : bb41032cd077800a 
│                       │      ├ InstalledVersion: 1.12.0-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41990 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8cf39830724417aeeba886b2f5f9e3fe53f0096b088e6356ff746
│                       │      │                   9b9f6e84393 
│                       │      ├ Title           : Libgcrypt: Libgcrypt: Denial of Service or data integrity
│                       │      │                   issues from missing bounds check during Dilithium signing.[
│                       │      │                   m 
│                       │      ├ Description     : Libgcrypt before 1.12.2 mishandles Dilithium signing. Writes
│                       │      │                    to a static array lack a bounds check but do not use
│                       │      │                   attacker-controlled data. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-787 
│                       │      ├ VendorSeverity   ╭ julia : 2 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 4 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41990 
│                       │      │                  ├ [1]: https://dev.gnupg.org/T8208 
│                       │      │                  ├ [2]: https://github.com/advisories/GHSA-78pv-qq8x-94px 
│                       │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2026q
│                       │      │                  │      2/000503.html 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-41990 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-41990 
│                       │      │                  ╰ [6]: https://www.openwall.com/lists/oss-security/2026/04/21/1 
│                       │      ├ PublishedDate   : 2026-04-23T05:16:05.897Z 
│                       │      ╰ LastModifiedDate: 2026-04-27T18:33:27.05Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2024-2236 
│                       │      ├ PkgID           : libgcrypt20@1.12.0-2 
│                       │      ├ PkgName         : libgcrypt20 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distro
│                       │      │                  │       =ubuntu-26.04 
│                       │      │                  ╰ UID : bb41032cd077800a 
│                       │      ├ InstalledVersion: 1.12.0-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9700a3bf706e9c21c2461b0b3ed700b29dafb5dcfd1d7c6198ec1
│                       │      │                   581dc81200c 
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
│                       │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2026-33845 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33845 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:919b5fe8bbfcacd76e934082c3e1f838a47b14de6ddb664e2b22a
│                       │      │                   23a68b75f09 
│                       │      ├ Title           : gnutls: GnuTLS: Denial of Service via DTLS zero-length
│                       │      │                   fragment 
│                       │      ├ Description     : A flaw in GnuTLS DTLS handshake parsing allows malformed
│                       │      │                   fragments with zero length and non-zero offset, leading to
│                       │      │                   an integer underflow during reassembly and resulting in an
│                       │      │                   out-of-bounds read. This issue is remotely exploitable and
│                       │      │                   may cause information disclosure or denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-191 
│                       │      ├ VendorSeverity   ╭ azure : 3 
│                       │      │                  ├ nvd   : 4 
│                       │      │                  ├ photon: 4 
│                       │      │                  ├ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 9.1 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:13274 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-33845 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2450624 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33845 
│                       │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-33845 
│                       │      │                  ╰ [6]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-3 
│                       │      ├ PublishedDate   : 2026-04-30T18:16:28.003Z 
│                       │      ╰ LastModifiedDate: 2026-05-05T03:03:19.247Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2026-33846 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33846 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4c6d75a11d6ecc88dd802521bdba42b2a84b1e78e71ce54d5dee3
│                       │      │                   550e59b61f0 
│                       │      ├ Title           : gnutls: GnuTLS: Denial of Service via heap buffer overflow
│                       │      │                   in DTLS handshake fragment reassembly 
│                       │      ├ Description     : A heap buffer overflow vulnerability exists in the DTLS
│                       │      │                   handshake fragment reassembly logic of GnuTLS. The issue
│                       │      │                   arises in merge_handshake_packet() where incoming handshake
│                       │      │                   fragments are matched and merged based solely on handshake
│                       │      │                   type, without validating that the message_length field
│                       │      │                   remains consistent across all fragments of the same logical
│                       │      │                   message. An attacker can exploit this by sending crafted
│                       │      │                   DTLS fragments with conflicting message_length values,
│                       │      │                   causing the implementation to allocate a buffer based on a
│                       │      │                   smaller initial fragment and subsequently write beyond its
│                       │      │                   bounds using larger, inconsistent fragments. Because the
│                       │      │                   merge operation does not enforce proper bounds checking
│                       │      │                   against the allocated buffer size, this results in an
│                       │      │                   out-of-bounds write on the heap. The vulnerability is
│                       │      │                   remotely exploitable without authentication via the DTLS
│                       │      │                   handshake path and can lead to application crashes or
│                       │      │                   potential memory corruption. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-130 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:13274 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-33846 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2450625 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33846 
│                       │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-33846 
│                       │      │                  ╰ [6]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-1 
│                       │      ├ PublishedDate   : 2026-05-04T10:15:59.69Z 
│                       │      ╰ LastModifiedDate: 2026-05-04T15:22:52.85Z 
│                       ├ [19] ╭ VulnerabilityID : CVE-2026-3832 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3832 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d1038f014ee90f663f49953b049b0fef7b89a932569d60ee7080e
│                       │      │                   ec181f53f7b 
│                       │      ├ Title           : gnutls: gnutls: Security bypass allows acceptance of revoked
│                       │      │                    server certificates via crafted OCSP response 
│                       │      ├ Description     : A flaw was found in gnutls. A remote attacker could exploit
│                       │      │                   this vulnerability by presenting a specially crafted Online
│                       │      │                   Certificate Status Protocol (OCSP) response during a TLS
│                       │      │                   handshake. Due to a logic error in how gnutls processes
│                       │      │                   multi-record OCSP responses, a client with OCSP verification
│                       │      │                    enabled may incorrectly accept a revoked server
│                       │      │                   certificate, potentially leading to a compromise of trust.[
│                       │      │                   m 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-179 
│                       │      ├ VendorSeverity   ╭ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:13274 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3832 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2445762 
│                       │      │                  ├ [3]: https://gitlab.com/gnutls/gnutls/-/issues/1801 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-3832 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-3832 
│                       │      │                  ╰ [7]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-12 
│                       │      ├ PublishedDate   : 2026-04-30T18:16:30.433Z 
│                       │      ╰ LastModifiedDate: 2026-05-11T19:15:57.277Z 
│                       ├ [20] ╭ VulnerabilityID : CVE-2026-3833 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3833 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:57eb9ea299fa7ce2f356f6a190e972c6ee2dedb681fcdd8b35054
│                       │      │                   55fcbb0aec4 
│                       │      ├ Title           : gnutls: GnuTLS: Policy bypass due to case-sensitive
│                       │      │                   nameConstraints comparison 
│                       │      ├ Description     : A flaw was found in gnutls. This vulnerability occurs
│                       │      │                   because gnutls performs case-sensitive comparisons of
│                       │      │                   `nameConstraints` labels, specifically for `dNSName` (DNS)
│                       │      │                   or `rfc822Name` (email) constraints within
│                       │      │                   `excludedSubtrees` or `permittedSubtrees`. A remote attacker
│                       │      │                    can exploit this by crafting a leaf certificate with casing
│                       │      │                    differences in the Subject Alternative Name (SAN), leading
│                       │      │                   to a policy bypass where a certificate that should be
│                       │      │                   rejected is instead accepted. This could result in
│                       │      │                   unauthorized access or information disclosure. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-178 
│                       │      ├ VendorSeverity   ╭ nvd   : 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 7.4 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:13274 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3833 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2445763 
│                       │      │                  ├ [3]: https://gitlab.com/gnutls/gnutls/-/issues/1803 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-3833 
│                       │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-3833 
│                       │      │                  ╰ [7]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-5 
│                       │      ├ PublishedDate   : 2026-04-30T18:16:30.577Z 
│                       │      ╰ LastModifiedDate: 2026-05-07T02:09:04.47Z 
│                       ├ [21] ╭ VulnerabilityID : CVE-2026-42009 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42009 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:949acf9f0ee8937ca497e87a5067ecf85e6075a18cc750d67c2f5
│                       │      │                   623b2231771 
│                       │      ├ Title           : gnutls: gnutls: Denial of Service via DTLS packet reordering
│                       │      │                    vulnerability 
│                       │      ├ Description     : A flaw was found in gnutls. A remote attacker could exploit
│                       │      │                   an issue in the Datagram Transport Layer Security (DTLS)
│                       │      │                   packet reordering logic. The comparator function,
│                       │      │                   responsible for ordering DTLS packets by sequence numbers,
│                       │      │                   did not correctly handle packets with duplicate sequence
│                       │      │                   numbers. This could lead to unstable packet ordering or
│                       │      │                   undefined behavior, resulting in a denial of service. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-475 
│                       │      ├ VendorSeverity   ╭ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42009 
│                       │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2467279 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42009 
│                       │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42009 
│                       │      │                  ╰ [5]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-2 
│                       │      ├ PublishedDate   : 2026-05-18T13:16:32.707Z 
│                       │      ╰ LastModifiedDate: 2026-05-18T19:32:38.777Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2026-42010 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42010 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c6554e834245052bd61e563c40edfe6ad2b8d4f9350eddc2cb32e
│                       │      │                   d5415d2f564 
│                       │      ├ Title           : gnutls: gnutls: Authentication Bypass via NUL Character in
│                       │      │                   Username 
│                       │      ├ Description     : A flaw was found in gnutls. Servers configured with RSA-PSK
│                       │      │                   (Rivest–Shamir–Adleman – Pre-Shared Key) wrongfully matched
│                       │      │                   usernames containing a NUL character with truncated
│                       │      │                   usernames. A remote attacker could exploit this by sending a
│                       │      │                    specially crafted username, leading to an authentication
│                       │      │                   bypass. This vulnerability allows an attacker to gain
│                       │      │                   unauthorized access by circumventing the authentication
│                       │      │                   process. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-626 
│                       │      ├ VendorSeverity   ╭ nvd   : 4 
│                       │      │                  ├ photon: 4 
│                       │      │                  ├ redhat: 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 9.8 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.1 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:13274 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-42010 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2467289 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42010 
│                       │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-42010 
│                       │      │                  ╰ [6]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-4 
│                       │      ├ PublishedDate   : 2026-05-07T12:16:17.977Z 
│                       │      ╰ LastModifiedDate: 2026-05-14T23:16:36.52Z 
│                       ├ [23] ╭ VulnerabilityID : CVE-2026-42011 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42011 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ca474c7691804bddb8c803b4545894fafcddc0c0091ca54a9090f
│                       │      │                   533d7ed1bbc 
│                       │      ├ Title           : gnutls: gnutls: Security bypass due to incorrect name
│                       │      │                   constraint handling 
│                       │      ├ Description     : A flaw was found in gnutls. This vulnerability occurs
│                       │      │                   because permitted name constraints were incorrectly ignored
│                       │      │                   when previous Certificate Authorities (CAs) only had
│                       │      │                   excluded name constraints. A remote attacker could exploit
│                       │      │                   this to bypass critical name constraint checks during
│                       │      │                   certificate validation. This bypass could lead to the
│                       │      │                   acceptance of invalid certificates, potentially enabling
│                       │      │                   spoofing or man-in-the-middle attacks against affected
│                       │      │                   systems. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-295 
│                       │      ├ VendorSeverity   ╭ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 7.4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:13274 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-42011 
│                       │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2467437 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42011 
│                       │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-42011 
│                       │      │                  ╰ [6]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │      │                         6-04-29-6 
│                       │      ├ PublishedDate   : 2026-05-07T15:16:09.76Z 
│                       │      ╰ LastModifiedDate: 2026-05-14T23:16:36.667Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2026-42012 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42012 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9d6dad01829ba9d158518e984e5fea324fafa517a76ebafce4efd
│                       │      │                   83b625c8899 
│                       │      ├ Description     : Certificates containing URI or SRV Subject Alternative Names
│                       │      │                    would fall back to checking DNS hostnames against Common
│                       │      │                   Name, allowing potential misuse of such certificates beyond
│                       │      │                   their original purpose. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ╰ References       ╭ [0]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-42012 
│                       │                         ╰ [2]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │                                6-04-29-7 
│                       ├ [25] ╭ VulnerabilityID : CVE-2026-42013 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42013 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:802838a82ec6993409b6e6e52963a9808165121a5539157c95d98
│                       │      │                   b76319f52d6 
│                       │      ├ Description     : Validation of certificates with oversized Subject
│                       │      │                   Alternative Names would fall back to checking DNS hostnames
│                       │      │                   against Common Name. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ╰ References       ╭ [0]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-42013 
│                       │                         ╰ [2]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │                                6-04-29-8 
│                       ├ [26] ╭ VulnerabilityID : CVE-2026-42014 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42014 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d680d193fe4585dd9fcf1c6176b0ba2b263885369428f6e13e969
│                       │      │                   0aae743e78c 
│                       │      ├ Description     : Changing the Security Officer PIN with
│                       │      │                   gnutls_pkcs11_token_set_pin() with oldpin == NULL for a
│                       │      │                   token lacking a protected authentication path led to a
│                       │      │                   use-after-free. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ╰ References       ╭ [0]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-42014 
│                       │                         ╰ [2]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │                                6-04-29-9 
│                       ├ [27] ╭ VulnerabilityID : CVE-2026-42015 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42015 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e8772a08dcd88e51fd381bc6c7d4371f65a6cd440ef86848a7acd
│                       │      │                   a8046ac200f 
│                       │      ├ Description     : Appending to a PKCS#12 bag that already contained 32
│                       │      │                   elements could write past the bag's internal array. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ╰ References       ╭ [0]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-42015 
│                       │                         ╰ [2]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │                                6-04-29-11 
│                       ├ [28] ╭ VulnerabilityID : CVE-2026-5260 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5260 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:469b776e7def619b3cfe45c95abb79a5c753c97b60f3e13db5f3c
│                       │      │                   65e70f649e3 
│                       │      ├ Description     : For a server using an RSA key backed by a PKCS#11 token, a
│                       │      │                   client sending an extremely short premaster secret during an
│                       │      │                    RSA key exchange could trigger a short heap overread. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ╰ References       ╭ [0]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-5260 
│                       │                         ╰ [2]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │                                6-04-29-10 
│                       ├ [29] ╭ VulnerabilityID : CVE-2026-5419 
│                       │      ├ PkgID           : libgnutls30t64@3.8.12-2ubuntu1 
│                       │      ├ PkgName         : libgnutls30t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgnutls30t64@3.8.12-2ubuntu1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : e6a00d2b37fe01b4 
│                       │      ├ InstalledVersion: 3.8.12-2ubuntu1 
│                       │      ├ FixedVersion    : 3.8.12-2ubuntu1.1 
│                       │      ├ Status          : fixed 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5419 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d8e512052415a92e775c87be5b5a7a413cfe6509481af734229a2
│                       │      │                   4774111f4e2 
│                       │      ├ Description     : The PKCS#7 padding check performed during decryption was not
│                       │      │                    constant-time, potentially leaking information about the
│                       │      │                   padding bytes through timing differences. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ╰ References       ╭ [0]: https://ubuntu.com/security/notices/USN-8284-1 
│                       │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-5419 
│                       │                         ╰ [2]: https://www.gnutls.org/security-new.html#GNUTLS-SA-202
│                       │                                6-04-29-13 
│                       ├ [30] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libmount1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : ee0638a59a092c7e 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c4b38a5f68320a6579c3c4db10ab19ed111858f8e8995e8303392
│                       │      │                   ad3ec17c062 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libmount1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : ee0638a59a092c7e 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bd3f5aba6a3700c83541845c5eef73882e896bdf40bde1e3a0a77
│                       │      │                   126daab3f5a 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2026-2297 
│                       │      ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │      ├ PkgName         : libpython3.14-minimal 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : edd92b8f9e06659 
│                       │      ├ InstalledVersion: 3.14.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:47c7768226eb894dd5879af462ea07307eb8df55da822199eed49
│                       │      │                   1472c87dc99 
│                       │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │      │                   (a base class) and so does not use io.open_code() to read
│                       │      │                   the .pyc files. sys.audit handlers for this audit event
│                       │      │                   therefore do not fire. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-668 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 1 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/05/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-13837 
│                       │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-15282 
│                       │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-59375 
│                       │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-6075 
│                       │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-0672 
│                       │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-1502 
│                       │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-2297 
│                       │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-3644 
│                       │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4224 
│                       │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4786 
│                       │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6100 
│                       │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                       │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba9
│                       │      │                  │       da3725d272e8bb4a2d25fb6a603e 
│                       │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc4
│                       │      │                  │       bd69b1565647c18659c6a789ccd9 
│                       │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65d
│                       │      │                  │       9ab656c7fa639f268ce7856d89dd 
│                       │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de1
│                       │      │                  │       d56b3714b65628a2eae2b07e535e 
│                       │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9be
│                       │      │                  │       c5cdbf48fc9bf1da5f4fda482e86 
│                       │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                       │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                       │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2026-2297 
│                       │      ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │      ├ PkgName         : libpython3.14-stdlib 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : d9cfb9637e1a0676 
│                       │      ├ InstalledVersion: 3.14.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3b49903b2816323322acac1897ca6c9908b0fa04171af70148105
│                       │      │                   debcafd219e 
│                       │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │      │                   (a base class) and so does not use io.open_code() to read
│                       │      │                   the .pyc files. sys.audit handlers for this audit event
│                       │      │                   therefore do not fire. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-668 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 1 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/05/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-13837 
│                       │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-15282 
│                       │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-59375 
│                       │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-6075 
│                       │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-0672 
│                       │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-1502 
│                       │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-2297 
│                       │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-3644 
│                       │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4224 
│                       │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4786 
│                       │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6100 
│                       │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                       │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba9
│                       │      │                  │       da3725d272e8bb4a2d25fb6a603e 
│                       │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc4
│                       │      │                  │       bd69b1565647c18659c6a789ccd9 
│                       │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65d
│                       │      │                  │       9ab656c7fa639f268ce7856d89dd 
│                       │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de1
│                       │      │                  │       d56b3714b65628a2eae2b07e535e 
│                       │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9be
│                       │      │                  │       c5cdbf48fc9bf1da5f4fda482e86 
│                       │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                       │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                       │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libsmartcols1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : ff5e7b67d2385233 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f6919de31a03799e423ef3b5668ee2ec72376744f134deea6c55c
│                       │      │                   55a4562b706 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libsmartcols1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : ff5e7b67d2385233 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:72b2716842a2c4d93a688654beabce08d9f14e1da24dd5375b6ab
│                       │      │                   18d28001815 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libuuid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 41d4afb2fde363cf 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2adfb9847660b2f450214907debc9dd1289fee97baee54ec43f7a
│                       │      │                   45e0810a6c6 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [37] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : libuuid1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : 41d4afb2fde363cf 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:878f8acc24113e7676f53a159f0436c90344daf47ca21fd39ff1a
│                       │      │                   eeaea0af0ac 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [38] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ PkgName         : login 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : e1bfbadc9113c00a 
│                       │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:665bb2d0d047cfec3a5a542b4dc41ba70d1eed9b178be42b4f46c
│                       │      │                   0b3590a1c32 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ PkgName         : login 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu2
│                       │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : e1bfbadc9113c00a 
│                       │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1fff0de594e86cd0a27c2fa3bd18a15f7bb8aaa80e9c5d2422122
│                       │      │                   700544746ab 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : login.defs 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : eaf648d5e4e975f7 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5743e4a50ff21abdf213621a0b8575031ac6d9243fa4508ab26a3
│                       │      │                   356105b7f1c 
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
│                       │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
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
│                       │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : mount 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:496bf4c4f0e5c487bdbd395cc9bf2c12daa125e2fc4421fce6091
│                       │      │                   2158ad65139 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2026-3184 
│                       │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : mount 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7c5a0ec6a4c3f25efc696e52934f9caa7e24ec27712be30ad3ea1
│                       │      │                   bd3df34423c 
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
│                       │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : e6ebfac85406f0d5 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3f9ac205e55de2f0d754e79c8a28e368b790f7b69e159faa2830a
│                       │      │                   ee1529abe36 
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
│                       │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
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
│                       │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                       ├ [44] ╭ VulnerabilityID : CVE-2026-2297 
│                       │      ├ PkgID           : python3.14@3.14.4-1 
│                       │      ├ PkgName         : python3.14 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro=
│                       │      │                  │       ubuntu-26.04 
│                       │      │                  ╰ UID : 5c38e5558a798bb7 
│                       │      ├ InstalledVersion: 3.14.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e6702cdf6524bd5b18f80e97f6c479068d8a83f93b6f5b91249fe
│                       │      │                   504bcf32422 
│                       │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │      │                   (a base class) and so does not use io.open_code() to read
│                       │      │                   the .pyc files. sys.audit handlers for this audit event
│                       │      │                   therefore do not fire. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-668 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 1 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/05/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-13837 
│                       │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-15282 
│                       │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-59375 
│                       │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-6075 
│                       │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-0672 
│                       │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-1502 
│                       │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-2297 
│                       │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-3644 
│                       │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4224 
│                       │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4786 
│                       │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6100 
│                       │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                       │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba9
│                       │      │                  │       da3725d272e8bb4a2d25fb6a603e 
│                       │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc4
│                       │      │                  │       bd69b1565647c18659c6a789ccd9 
│                       │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65d
│                       │      │                  │       9ab656c7fa639f268ce7856d89dd 
│                       │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de1
│                       │      │                  │       d56b3714b65628a2eae2b07e535e 
│                       │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9be
│                       │      │                  │       c5cdbf48fc9bf1da5f4fda482e86 
│                       │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                       │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                       │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [45] ╭ VulnerabilityID : CVE-2026-2297 
│                       │      ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │      ├ PkgName         : python3.14-minimal 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd64
│                       │      │                  │       &distro=ubuntu-26.04 
│                       │      │                  ╰ UID : da8e2190347b7c6 
│                       │      ├ InstalledVersion: 3.14.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ae2487ecc25c70e01f538d1e53d5025dec7a2fd0067f4eecae7b8
│                       │      │                   5dcca131413 
│                       │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                       │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                       │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                       │      │                   (a base class) and so does not use io.open_code() to read
│                       │      │                   the .pyc files. sys.audit handlers for this audit event
│                       │      │                   therefore do not fire. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-668 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 1 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ redhat     : 1 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 3.3 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/05/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                       │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                       │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                       │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-13837 
│                       │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-15282 
│                       │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-59375 
│                       │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-6075 
│                       │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-0672 
│                       │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-1502 
│                       │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-2297 
│                       │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-3644 
│                       │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4224 
│                       │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-4786 
│                       │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-6100 
│                       │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                       │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                       │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba9
│                       │      │                  │       da3725d272e8bb4a2d25fb6a603e 
│                       │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc4
│                       │      │                  │       bd69b1565647c18659c6a789ccd9 
│                       │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65d
│                       │      │                  │       9ab656c7fa639f268ce7856d89dd 
│                       │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de1
│                       │      │                  │       d56b3714b65628a2eae2b07e535e 
│                       │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9be
│                       │      │                  │       c5cdbf48fc9bf1da5f4fda482e86 
│                       │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                       │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                       │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                       │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                       │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                       │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                       │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                       │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                       ├ [46] ╭ VulnerabilityID : CVE-2026-35341 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ee09cf8c17329b887d927f28790e5942bb796d14b9c22e5aa9e98
│                       │      │                   4efe484ef08 
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
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                       │      ╰ LastModifiedDate: 2026-04-24T19:05:55.067Z 
│                       ├ [47] ╭ VulnerabilityID : CVE-2026-35344 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:27ff939ab2d604042638c00ba042e1cc967d67a48672d916ddd75
│                       │      │                   e1ce94f0c90 
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
│                       │      ╰ LastModifiedDate: 2026-05-04T20:09:48.593Z 
│                       ├ [48] ╭ VulnerabilityID : CVE-2026-35345 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f6d0e5ad83c917a640288a88fe80c2e7a0d8254b77990f5f2cdf5
│                       │      │                   f8fbad1d57b 
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
│                       │      ╰ LastModifiedDate: 2026-05-04T20:04:25.093Z 
│                       ├ [49] ╭ VulnerabilityID : CVE-2026-35348 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9f73b9ffbef051f7b9073d067c5513b46a742f7c7852469df4e4f
│                       │      │                   0892fe6403d 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T18:57:20.927Z 
│                       ├ [50] ╭ VulnerabilityID : CVE-2026-35350 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c8ac1ea82cc6a011b40b0c8ef9d82592a90a5ac83336663be0998
│                       │      │                   b204acb6670 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:04:01.207Z 
│                       ├ [51] ╭ VulnerabilityID : CVE-2026-35351 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:874b1858759f6eb09aba96e2b5998ff89b16943d2b9c3e8c1fa3c
│                       │      │                   93903a448ca 
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
│                       │      ╰ LastModifiedDate: 2026-04-27T12:28:10.22Z 
│                       ├ [52] ╭ VulnerabilityID : CVE-2026-35352 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:25dd01e9bf6ff0e72a3b5c7b8bbd1baab09b923a513211b8322d4
│                       │      │                   c3464a664ce 
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
│                       │      ╰ LastModifiedDate: 2026-05-04T18:16:28.37Z 
│                       ├ [53] ╭ VulnerabilityID : CVE-2026-35354 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d8d5f0535c46357df3d3ac52b49cc9b57e8d0a26fcc91700b7497
│                       │      │                   b3319f4bfd1 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:04:08.917Z 
│                       ├ [54] ╭ VulnerabilityID : CVE-2026-35357 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ee61f6ce34f2532cef8768a1b0ba80f00438b1cc55f1ab1ecd68f
│                       │      │                   e1f798c9774 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:02:53.557Z 
│                       ├ [55] ╭ VulnerabilityID : CVE-2026-35359 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:aa192da824c2a5938c23998852bea1d7b5bb3d3bfe94c719a6915
│                       │      │                   071ab0f4c2d 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:02:25.72Z 
│                       ├ [56] ╭ VulnerabilityID : CVE-2026-35360 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6b28b451084f11bcc48f2500ba2330d53a349ce28ded33fb73201
│                       │      │                   dd3248911bc 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:02:11.56Z 
│                       ├ [57] ╭ VulnerabilityID : CVE-2026-35363 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:36255efbef14713193ea0bf0e984e30340f888397f3cba45442c6
│                       │      │                   507549899d1 
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
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                       │      ╰ LastModifiedDate: 2026-04-24T19:02:00.463Z 
│                       ├ [58] ╭ VulnerabilityID : CVE-2026-35364 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3915b6f1764fda51930b8d291f85b0c40060d9f829bb26a4eb224
│                       │      │                   736ade54fb8 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:19:11.777Z 
│                       ├ [59] ╭ VulnerabilityID : CVE-2026-35367 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:71bb3ea202cbcf6a0d03f16e9aa4cb9a3ef7abe05a7571af32eaf
│                       │      │                   63d2bcb7c7e 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:19:05.067Z 
│                       ├ [60] ╭ VulnerabilityID : CVE-2026-35368 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:04ae851d7b31bbc96261eba3350d9bc6165ce26fc27f698368a62
│                       │      │                   e9314677747 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:18:55.67Z 
│                       ├ [61] ╭ VulnerabilityID : CVE-2026-35370 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:93d0e8830d088853f98f4248bb9254b1a1b922d8ee3bfa9789a10
│                       │      │                   a9581a4d61e 
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
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                       │      ╰ LastModifiedDate: 2026-05-04T20:02:44.33Z 
│                       ├ [62] ╭ VulnerabilityID : CVE-2026-35371 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4a37be0551a14ce51706ef7e88a7757c2f02d035b6bb172156de9
│                       │      │                   49d892b33cb 
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
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                       │      ╰ LastModifiedDate: 2026-05-04T20:02:06.183Z 
│                       ├ [63] ╭ VulnerabilityID : CVE-2026-35373 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:75d77efb4ca1732b09083b9714a333f88fe107de843ac43b37839
│                       │      │                   2ccadba6692 
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
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                       │      ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                       │      ╰ LastModifiedDate: 2026-05-04T20:01:25.93Z 
│                       ├ [64] ╭ VulnerabilityID : CVE-2026-35374 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:98e751f60e94fcf4a37c4e82fe10031aa48369f0cfb1602615b0e
│                       │      │                   9d23895bc29 
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
│                       │      ╰ LastModifiedDate: 2026-05-04T19:22:14.457Z 
│                       ├ [65] ╭ VulnerabilityID : CVE-2026-35377 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 211a571db931b2ab 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f27482c407b2a51d6ddb1f17c5e53b5acc664499dd5bf5bf40110
│                       │      │                   94b1131d215 
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
│                       │      ╰ LastModifiedDate: 2026-04-24T19:06:46.293Z 
│                       ├ [66] ╭ VulnerabilityID : CVE-2025-45582 
│                       │      ├ PkgID           : tar@1.35+dfsg-4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : df8f3d12dd71b054 
│                       │      ├ InstalledVersion: 1.35+dfsg-4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:9b21d4584a250fb81f56297dc0ae609af084ac9a5f1052b8f7ab2
│                       │      │                   318b565176e 
│                       │      ├ Title           : tar: Tar path traversal 
│                       │      ├ Description     : GNU Tar through 1.35 allows file overwrite via directory
│                       │      │                   traversal in crafted TAR archives, with a certain two-step
│                       │      │                   process. First, the victim must extract an archive that
│                       │      │                   contains a ../ symlink to a critical directory. Second, the
│                       │      │                   victim must extract an archive that contains a critical
│                       │      │                   file, specified via a relative pathname that begins with the
│                       │      │                    symlink name and ends with that critical file's name. Here,
│                       │      │                    the extraction follows the symlink and overwrites the
│                       │      │                   critical file. This bypasses the protection mechanism of
│                       │      │                   "Member name contains '..'" that would occur for a single
│                       │      │                   TAR archive that attempted to specify the critical file via
│                       │      │                   a ../ approach. For example, the first archive can contain
│                       │      │                   "x -> ../../../../../home/victim/.ssh" and the second
│                       │      │                   archive can contain x/authorized_keys. This can affect
│                       │      │                   server applications that automatically extract any number of
│                       │      │                    user-supplied TAR archives, and were relying on the
│                       │      │                   blocking of traversal. This can also affect software
│                       │      │                   installation processes in which "tar xf" is run more than
│                       │      │                   once (e.g., when installing a package can automatically
│                       │      │                   install two dependencies that are set up as untrusted
│                       │      │                   tarballs instead of official packages). NOTE: the official
│                       │      │                   GNU Tar manual has an otherwise-empty directory for each
│                       │      │                   "tar xf" in its Security Rules of Thumb; however,
│                       │      │                   third-party advice leads users to run "tar xf" more than
│                       │      │                   once into the same directory. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-24 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 5.6 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/11/01/6 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:0067 
│                       │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-45582 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2379592 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2379592 
│                       │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       25-45582 
│                       │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-0067.html 
│                       │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:0067 
│                       │      │                  ├ [8] : https://github.com/i900008/vulndb/blob/main/Gnu_tar_v
│                       │      │                  │       uln.md 
│                       │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-45582.html 
│                       │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2026-0067.html 
│                       │      │                  ├ [11]: https://lists.gnu.org/archive/html/bug-tar/2025-08/ms
│                       │      │                  │       g00012.html 
│                       │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-45582 
│                       │      │                  ├ [13]: https://www.cve.org/CVERecord?id=CVE-2025-45582 
│                       │      │                  ├ [14]: https://www.gnu.org/software/tar/ 
│                       │      │                  ├ [15]: https://www.gnu.org/software/tar/manual/html_node/Int
│                       │      │                  │       egrity.html 
│                       │      │                  ├ [16]: https://www.gnu.org/software/tar/manual/html_node/Int
│                       │      │                  │       egrity.html#Integrity 
│                       │      │                  ╰ [17]: https://www.gnu.org/software/tar/manual/html_node/Sec
│                       │      │                          urity-rules-of-thumb.html 
│                       │      ├ PublishedDate   : 2025-07-11T17:15:37.183Z 
│                       │      ╰ LastModifiedDate: 2025-11-02T01:15:32.307Z 
│                       ├ [67] ╭ VulnerabilityID : CVE-2026-5704 
│                       │      ├ PkgID           : tar@1.35+dfsg-4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : df8f3d12dd71b054 
│                       │      ├ InstalledVersion: 1.35+dfsg-4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5704 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:2ffa9bad30ed11933337fad5b7662e4467e23d289a758a00b223a
│                       │      │                   8bd84c47d3c 
│                       │      ├ Title           : tar: tar: Hidden file injection via crafted archives 
│                       │      ├ Description     : A flaw was found in tar. A remote attacker could exploit
│                       │      │                   this vulnerability by crafting a malicious archive, leading
│                       │      │                   to hidden file injection with fully attacker-controlled
│                       │      │                   content. This bypasses pre-extraction inspection mechanisms,
│                       │      │                    potentially allowing an attacker to introduce malicious
│                       │      │                   files onto a system without detection. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-434 
│                       │      ├ VendorSeverity   ╭ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:H
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:H
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 5 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/04/11/10 
│                       │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/04/11/11 
│                       │      │                  ├ [2]: http://www.openwall.com/lists/oss-security/2026/04/12/2 
│                       │      │                  ├ [3]: https://access.redhat.com/security/cve/CVE-2026-5704 
│                       │      │                  ├ [4]: https://bugzilla.redhat.com/show_bug.cgi?id=2455360 
│                       │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-5704 
│                       │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5704 
│                       │      ├ PublishedDate   : 2026-04-06T16:16:42.14Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T20:08:59.92Z 
│                       ├ [68] ╭ VulnerabilityID : CVE-2026-27456 
│                       │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │      ├ PkgName         : util-linux 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 34e9503915630576 
│                       │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                       │      │                  │         eaa18fa67bf369e9e2c6 
│                       │      │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                       │      │                            86834d47547f57e58669 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ceb82473f8c504b01b1860757a96fcf0141b0735fcff78d298912
│                       │      │                   1bcf8fd06ff 
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
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                  │        │           /A:N 
│                       │      │                  │        ╰ V3Score : 4.7 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                       │      │                           │           /A:N 
│                       │      │                           ╰ V3Score : 4.7 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e3904
│                       │      │                  │      67b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag/
│                       │      │                  │      v2.41.4 
│                       │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/advi
│                       │      │                  │      sories/GHSA-qq4x-vfq4-9h9g 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                       ╰ [69] ╭ VulnerabilityID : CVE-2026-3184 
│                              ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                              ├ PkgName         : util-linux 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64&
│                              │                  │       distro=ubuntu-26.04 
│                              │                  ╰ UID : 34e9503915630576 
│                              ├ InstalledVersion: 2.41.3-3ubuntu2 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6
│                              │                  │         eaa18fa67bf369e9e2c6 
│                              │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a9418
│                              │                            86834d47547f57e58669 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Fingerprint     : sha256:69b9f5bbaed3bfab62ae3c58a13aec4514dd45859d03d92b1a22e
│                              │                   ba1790262de 
│                              ├ Title           : util-linux: util-linux: Access control bypass due to
│                              │                   improper hostname canonicalization 
│                              ├ Description     : A flaw was found in util-linux. Improper hostname
│                              │                   canonicalization in the `login(1)` utility, when invoked
│                              │                   with the `-h` option, can modify the supplied remote
│                              │                   hostname before setting `PAM_RHOST`. A remote attacker could
│                              │                    exploit this by providing a specially crafted hostname,
│                              │                   potentially bypassing host-based Pluggable Authentication
│                              │                   Modules (PAM) access control rules that rely on fully
│                              │                   qualified domain names. This could lead to unauthorized
│                              │                   access. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-289 
│                              ├ VendorSeverity   ╭ azure : 1 
│                              │                  ├ nvd   : 2 
│                              │                  ├ redhat: 1 
│                              │                  ╰ ubuntu: 2 
│                              ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                              │                  │        │           /A:N 
│                              │                  │        ╰ V3Score : 5.3 
│                              │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:L
│                              │                           │           /A:N 
│                              │                           ╰ V3Score : 3.7 
│                              ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                              │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                              │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                              │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                              ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                              ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
├ [1] ╭ Target  : Java 
│     ├ Class   : lang-pkgs 
│     ├ Type    : jar 
│     ╰ Packages 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-33811 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4981 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ SeveritySource  : nvd 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:1900f450c3e53fdbafb94ecd7bf08eaa5684d88328aaa9d8bfbf3d
                        │     │                   1f9208e0fb 
                        │     ├ Title           : When using LookupCNAME with the cgo DNS resolver, a very long
                        │     │                    CNAME re ... 
                        │     ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very long
                        │     │                    CNAME response can trigger a double-free of C memory and a
                        │     │                   crash. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-415 
                        │     ├ VendorSeverity   ╭ bitnami: 3 
                        │     │                  ╰ nvd    : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0]: https://go.dev/cl/767860 
                        │     │                  ├ [1]: https://go.dev/issue/78803 
                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4981 
                        │     ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
                        │     ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
                        ├ [1] ╭ VulnerabilityID : CVE-2026-33814 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4918 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ SeveritySource  : nvd 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:ed44c1d2e47b5223a9b58e3835a57360d077686101ebb54da7bde2
                        │     │                   d8ed9ca68c 
                        │     ├ Title           : When processing HTTP/2 SETTINGS frames, transport will enter
                        │     │                   an infini ... 
                        │     ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
                        │     │                   an infinite loop of writing CONTINUATION frames if it
                        │     │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-835 
                        │     ├ VendorSeverity   ╭ bitnami: 3 
                        │     │                  ╰ nvd    : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0]: https://go.dev/cl/761581 
                        │     │                  ├ [1]: https://go.dev/cl/761640 
                        │     │                  ├ [2]: https://go.dev/issue/78476 
                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
                        │     │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-4918 
                        │     ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
                        │     ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
                        ├ [2] ╭ VulnerabilityID : CVE-2026-39820 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4986 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ SeveritySource  : nvd 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:fc819eb47b98867a22f037bef0b1dfc3d9c58700d11115876313e6
                        │     │                   00c63004dd 
                        │     ├ Title           : Well-crafted inputs reaching ParseAddress, ParseAddressList,
                        │     │                   and Parse ... 
                        │     ├ Description     : Well-crafted inputs reaching ParseAddress, ParseAddressList,
                        │     │                   and ParseDate were able to trigger excessive CPU exhaustion
                        │     │                   and memory allocations. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-770 
                        │     ├ VendorSeverity   ╭ bitnami: 3 
                        │     │                  ╰ nvd    : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0]: https://go.dev/cl/759940 
                        │     │                  ├ [1]: https://go.dev/issue/78566 
                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4986 
                        │     ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
                        │     ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
                        ├ [3] ╭ VulnerabilityID : CVE-2026-39836 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4971 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ SeveritySource  : nvd 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:de6cb7a1a0dc502e80e688e9f368c79f3f3a886cff8bb9cf6a4af7
                        │     │                   582f7924be 
                        │     ├ Title           : Panic in Dial and LookupPort when handling NUL byte on
                        │     │                   Windows in net 
                        │     ├ Description     : The Dial and LookupPort functions panic on Windows when
                        │     │                   provided with an input containing a NUL (0). 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-476 
                        │     ├ VendorSeverity   ╭ bitnami: 3 
                        │     │                  ╰ nvd    : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0]: https://go.dev/cl/775320 
                        │     │                  ├ [1]: https://go.dev/issue/79006 
                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4971 
                        │     ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
                        │     ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
                        ├ [4] ╭ VulnerabilityID : CVE-2026-42499 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4977 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:16a92e83d7e27b166930745b92187c2ef6b3a63d616b150960b973
                        │     │                   5c9fc25030 
                        │     ├ Title           : Pathological inputs could cause DoS through consumePhrase
                        │     │                   when parsing ... 
                        │     ├ Description     : Pathological inputs could cause DoS through consumePhrase
                        │     │                   when parsing an email address according to RFC 5322. 
                        │     ├ Severity        : HIGH 
                        │     ├ VendorSeverity   ─ bitnami: 3 
                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0]: https://go.dev/cl/771520 
                        │     │                  ├ [1]: https://go.dev/issue/78987 
                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4977 
                        │     ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
                        │     ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
                        ├ [5] ╭ VulnerabilityID : CVE-2026-39823 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4982 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:8f263015dec87784d02d0b53308e063693a3edd673492d0f4727bb
                        │     │                   99e5f5ac21 
                        │     ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
                        │     │                   correctly  ... 
                        │     ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
                        │     │                   correctly escaped inside of a <meta> tag's <content>
                        │     │                   attribute. If the URL content were to insert ASCII
                        │     │                   whitespaces around the '=' rune inside of the <content>
                        │     │                   attribute, the escaper would fail to similarly escape it,
                        │     │                   leading to XSS. 
                        │     ├ Severity        : MEDIUM 
                        │     ├ CweIDs           ─ [0]: CWE-79 
                        │     ├ VendorSeverity   ─ bitnami: 2 
                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
                        │     │                            │           /A:N 
                        │     │                            ╰ V3Score : 6.1 
                        │     ├ References       ╭ [0]: https://go.dev/cl/769920 
                        │     │                  ├ [1]: https://go.dev/issue/78913 
                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4982 
                        │     ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
                        │     ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
                        ├ [6] ╭ VulnerabilityID : CVE-2026-39825 
                        │     ├ VendorIDs        ─ [0]: GO-2026-4976 
                        │     ├ PkgID           : stdlib@v1.26.2 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                        │     │                  ╰ UID : e5871284774cde90 
                        │     ├ InstalledVersion: v1.26.2 
                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                        │     │                  │         aa18fa67bf369e9e2c6 
                        │     │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                        │     │                            6834d47547f57e58669 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:d43dcc9a4c31901fa3b5f1f42441d30c034df68aa52ccf7edaf829
                        │     │                   daa16a8843 
                        │     ├ Title           : ReverseProxy can forward queries containing parameters not
                        │     │                   visible to  ... 
                        │     ├ Description     : ReverseProxy can forward queries containing parameters not
                        │     │                   visible to Rewrite functions. When used with a Rewrite
                        │     │                   function, or a Director function which parses query
                        │     │                   parameters, ReverseProxy sanitizes the forwarded request to
                        │     │                   remove query parameters which are not parsed by
                        │     │                   url.ParseQuery. ReverseProxy does not take ParseQuery's limit
                        │     │                    on the total number of query parameters (controlled by
                        │     │                   GODEBUG=urlmaxqueryparams=N) into account. This can permit
                        │     │                   ReverseProxy to forward a request containing a query
                        │     │                   parameter that is not visible to the Rewrite function. For
                        │     │                   example, the query "a1=x&a2=x&...&a10000=x&hidden=y" can
                        │     │                   forward the parameter "hidden=y" while hiding it from the
                        │     │                   proxy's Rewrite function. 
                        │     ├ Severity        : MEDIUM 
                        │     ├ VendorSeverity   ─ bitnami: 2 
                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
                        │     │                            │           /A:N 
                        │     │                            ╰ V3Score : 5.3 
                        │     ├ References       ╭ [0]: https://go.dev/cl/770541 
                        │     │                  ├ [1]: https://go.dev/issue/78948 
                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4976 
                        │     ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
                        │     ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
                        ╰ [7] ╭ VulnerabilityID : CVE-2026-39826 
                              ├ VendorIDs        ─ [0]: GO-2026-4980 
                              ├ PkgID           : stdlib@v1.26.2 
                              ├ PkgName         : stdlib 
                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
                              │                  ╰ UID : e5871284774cde90 
                              ├ InstalledVersion: v1.26.2 
                              ├ FixedVersion    : 1.25.10, 1.26.3 
                              ├ Status          : fixed 
                              ├ Layer            ╭ Digest: sha256:137f05a578f6a8cf8097842993944a541957316a5fe6e
                              │                  │         aa18fa67bf369e9e2c6 
                              │                  ╰ DiffID: sha256:877febc1af9f32b31cdfbca4e58c495e03920a1a94188
                              │                            6834d47547f57e58669 
                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
                              ├ DataSource       ╭ ID  : govulndb 
                              │                  ├ Name: The Go Vulnerability Database 
                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
                              ├ Fingerprint     : sha256:4bbcc27c47127df1317825104a35ac729ba948e606d8f464288377
                              │                   df137d046b 
                              ├ Title           : If a trusted template author were to write a <script> tag
                              │                   containing a ... 
                              ├ Description     : If a trusted template author were to write a <script> tag
                              │                   containing an empty 'type' attribute or a 'type' attribute
                              │                   with an ASCII whitespace, the execution of the template would
                              │                    incorrectly escape any data passed into the <script>
                              │                   block. 
                              ├ Severity        : MEDIUM 
                              ├ CweIDs           ─ [0]: CWE-116 
                              ├ VendorSeverity   ─ bitnami: 2 
                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
                              │                            │           /A:N 
                              │                            ╰ V3Score : 6.1 
                              ├ References       ╭ [0]: https://go.dev/cl/771180 
                              │                  ├ [1]: https://go.dev/issue/78981 
                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso47M 
                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4980 
                              ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
                              ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
```
