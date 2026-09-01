```yaml
╭ [0] ╭ Target         : nmaguiar/mini-a-ghc:build (ubuntu 26.04) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0]   ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b2929e7b26895f77a2b79bf9b9035a4c5bac973125f05ddd666e
│                       │       │                   8eb265cc965f 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [1]   ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a9930cea170cfd9bc7ed389ea09b1e2557cbd19195fcd9ffe107
│                       │       │                   dc7780651a2c 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [2]   ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e1f34054b50a092138e1dfdc6d5be28377707f5d180f6e159907
│                       │       │                   72bb82d8c834 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [3]   ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d587358b46372d177eea833d131c7775fea06666f4f40d17e033
│                       │       │                   ca16e89d7b76 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [4]   ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a73acc4785803062788f03c7d474bd7138d0a9a946dd966e40ec
│                       │       │                   87789a5e1b0d 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [5]   ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:08870d458dfd491ad69ff5296ecce0110d2f281006dd5b8f548f
│                       │       │                   6f4571df0a88 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [6]   ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6254624e3bd0b73d 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bea5b753bb80f5b771c336e192b92a314c52e32639a9f8b85cce
│                       │       │                   ebe76eb93a6e 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [7]   ╭ VulnerabilityID : CVE-2026-53910 
│                       │       ├ PkgID           : diffutils@1:3.12-1 
│                       │       ├ PkgName         : diffutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/diffutils@3.12-1?arch=amd64&distro=ub
│                       │       │                  │       untu-26.04&epoch=1 
│                       │       │                  ╰ UID : c3b5af6e3e8bcbdc 
│                       │       ├ InstalledVersion: 1:3.12-1 
│                       │       ├ FixedVersion    : 1:3.12-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53910 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f59d0720164aa8c37d12fc2cda6f2984cb3a93a287c8ab2c59e4
│                       │       │                   9e8a3783a18a 
│                       │       ├ Title           : diffutils: heap‑based buffer overflow due to multiple
│                       │       │                   signed integer overflows in line‑mapping calculations 
│                       │       ├ Description     : diff3 tool from GNU diffutils is vulnerable to a heap‑based
│                       │       │                    buffer overflow due to multiple signed integer overflows
│                       │       │                   in line‑mapping calculations. Incorrect arithmetic in
│                       │       │                   mapping line ranges can result in corrupted values being
│                       │       │                   used for memory allocation and loop bounds.
│                       │       │                   When processing crafted diff output, these overflows may
│                       │       │                   cause the application to allocate insufficient memory and
│                       │       │                   subsequently perform out‑of‑bounds writes during internal
│                       │       │                   processing. 
│                       │       │                   An attacker who can control the output of the diff program
│                       │       │                   used by diff3 (e.g. via --diff-program pointing to a
│                       │       │                   malicious script) can trigger out-of-bounds writes,
│                       │       │                   resulting in a crash and potentially remote code execution
│                       │       │                   depending on the environment.
│                       │       │                   
│                       │       │                   This issue has been fixed in commit
│                       │       │                   9ff04d5b84743e331e80b589335a52c5480d1815 
│                       │       │                   NOTE:
│                       │       │                   The project maintainers claim that this is not a security
│                       │       │                   issue. They state that the worst outcome this issue can
│                       │       │                   cause is a crash of diff and that it cannot be used to
│                       │       │                   escalate privileges. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-190 
│                       │       ├ VendorSeverity   ╭ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:L 
│                       │       │                           ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53910 
│                       │       │                  ├ [1]: https://cert.pl/en/posts/2026/07/CVE-2026-53910 
│                       │       │                  ├ [2]: https://cgit.git.savannah.gnu.org/cgit/diffutils.git/
│                       │       │                  │      commit/?id=73ed7ce85cc78effb94daf028c9af6b4e5252e50[
│                       │       │                  │      m 
│                       │       │                  ├ [3]: https://cgit.git.savannah.gnu.org/cgit/diffutils.git/
│                       │       │                  │      commit/?id=9ff04d5b84743e331e80b589335a52c5480d1815[
│                       │       │                  │      m 
│                       │       │                  ├ [4]: https://git.savannah.gnu.org/cgit/diffutils.git/ 
│                       │       │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-53910 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-8692-1 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-53910 
│                       │       ├ PublishedDate   : 2026-07-22T14:17:21.03Z 
│                       │       ╰ LastModifiedDate: 2026-07-27T12:16:45.25Z 
│                       ├ [8]   ╭ VulnerabilityID : CVE-2026-56391 
│                       │       ├ PkgID           : gnu-coreutils@9.7-3ubuntu2 
│                       │       ├ PkgName         : gnu-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnu-coreutils@9.7-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f915ad76db6a5ff7 
│                       │       ├ InstalledVersion: 9.7-3ubuntu2 
│                       │       ├ FixedVersion    : 9.7-3ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56391 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e7f445c1998dac11e0827ee5b2c9ac9c61b0b52b5f111cc53cc8
│                       │       │                   0412252ed647 
│                       │       ├ Title           : coreutils: GNU coreutils uniq: Denial of Service and
│                       │       │                   information disclosure via out-of-bounds read with
│                       │       │                   multibyte input 
│                       │       ├ Description     : GNU coreutils uniq is vulnerable to an out‑of‑bounds read
│                       │       │                   due to incorrect handling of multibyte input when the -w
│                       │       │                   (--check-chars) option is used. The find_field() function
│                       │       │                   miscalculates the byte length of characters by repeatedly
│                       │       │                   processing a fixed pointer instead of advancing through the
│                       │       │                    input, resulting in an inflated length value. 
│                       │       │                   This incorrect length is later used in a memcmp operation,
│                       │       │                   causing reads beyond the allocated buffer when processing
│                       │       │                   crafted multibyte input.
│                       │       │                   
│                       │       │                   When running GNU coreutils uniq with attacker-provided
│                       │       │                   arguments, this behavior leads to a crash and potential
│                       │       │                   adjacent heap memory exposure.
│                       │       │                   This issue has been fixed in the commit
│                       │       │                   d64e35a8a4c0e4608321433e0d84d917e4e36371. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-125 
│                       │       ├ VendorSeverity   ╭ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:N/UI:A/VC:L
│                       │       │                  │        │            /VI:N/VA:L/SC:N/SI:N/SA:N 
│                       │       │                  │        ╰ V40Score : 4.6 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 6.1 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.1 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56391 
│                       │       │                  ├ [1]: https://cert.pl/en/posts/2026/07/CVE-2026-56391 
│                       │       │                  ├ [2]: https://git.savannah.gnu.org/cgit/coreutils.git 
│                       │       │                  ├ [3]: https://git.savannah.gnu.org/cgit/coreutils.git/ 
│                       │       │                  ├ [4]: https://git.savannah.gnu.org/cgit/coreutils.git/commi
│                       │       │                  │      t/?id=d64e35a8a4c0e4608321433e0d84d917e4e36371 
│                       │       │                  ├ [5]: https://github.com/advisories/GHSA-7xvj-m9x7-qgxq 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-56391 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8697-1 
│                       │       │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2026-56391 
│                       │       │                  ╰ [9]: https://www.openwall.com/lists/oss-security/2026/07/2
│                       │       │                         5/2 
│                       │       ├ PublishedDate   : 2026-07-24T09:16:25.003Z 
│                       │       ╰ LastModifiedDate: 2026-08-26T13:52:50.66Z 
│                       ├ [9]   ╭ VulnerabilityID : CVE-2025-5278 
│                       │       ├ PkgID           : gnu-coreutils@9.7-3ubuntu2 
│                       │       ├ PkgName         : gnu-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gnu-coreutils@9.7-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f915ad76db6a5ff7 
│                       │       ├ InstalledVersion: 9.7-3ubuntu2 
│                       │       ├ FixedVersion    : 9.7-3ubuntu2.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-5278 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:65dc45d5f8f8b058f633a7066fdf70703b001d7f8e50a238414d
│                       │       │                   1d8b749f80f6 
│                       │       ├ Title           : coreutils: Heap Buffer Under-Read in GNU Coreutils sort via
│                       │       │                    Key Specification 
│                       │       ├ Description     : A flaw was found in GNU Coreutils. The sort utility's
│                       │       │                   begfield() function is vulnerable to a heap buffer
│                       │       │                   under-read. The program may access memory outside the
│                       │       │                   allocated buffer if a user runs a crafted command using the
│                       │       │                    traditional key format. A malicious input could lead to a
│                       │       │                   crash or leak sensitive data. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-121 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 1 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           N/A:L 
│                       │       │                           ╰ V3Score : 4.4 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/05/2
│                       │       │                  │       7/2 
│                       │       │                  ├ [1] : http://www.openwall.com/lists/oss-security/2025/05/2
│                       │       │                  │       9/1 
│                       │       │                  ├ [2] : http://www.openwall.com/lists/oss-security/2025/05/2
│                       │       │                  │       9/2 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:28911 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:33124 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:33313 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:33612 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:34102 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:39981 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:44481 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:46836 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:50205 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:58981 
│                       │       │                  ├ [13]: https://access.redhat.com/security/cve/CVE-2025-5278 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2368764 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2368764 
│                       │       │                  ├ [16]: https://cgit.git.savannah.gnu.org/cgit/coreutils.git
│                       │       │                  │       /commit/?id=8c9602e3a145e9596dc1a63c6ed67865814b6633
│                       │       │                  │        
│                       │       │                  ├ [17]: https://cgit.git.savannah.gnu.org/cgit/coreutils.git
│                       │       │                  │       /tree/NEWS?id=8c9602e3a145e9596dc1a63c6ed67865814b66
│                       │       │                  │       33#n14 
│                       │       │                  ├ [18]: https://creativecommons.org/licenses/by/4.0/ 
│                       │       │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-5278 
│                       │       │                  ├ [20]: https://debbugs.gnu.org/cgi/bugreport.cgi?bug=78507 
│                       │       │                  ├ [21]: https://errata.almalinux.org/10/ALSA-2026-33124.html 
│                       │       │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:33124 
│                       │       │                  ├ [23]: https://linux.oracle.com/cve/CVE-2025-5278.html 
│                       │       │                  ├ [24]: https://linux.oracle.com/errata/ELSA-2026-33124.html 
│                       │       │                  ├ [25]: https://lists.gnu.org/archive/html/bug-coreutils/202
│                       │       │                  │       5-05/msg00036.html 
│                       │       │                  ├ [26]: https://lists.gnu.org/archive/html/bug-coreutils/202
│                       │       │                  │       5-05/msg00040.html 
│                       │       │                  ├ [27]: https://nvd.nist.gov/vuln/detail/CVE-2025-5278 
│                       │       │                  ├ [28]: https://security-tracker.debian.org/tracker/CVE-2025
│                       │       │                  │       -5278 
│                       │       │                  ├ [29]: https://ubuntu.com/security/notices/USN-8697-1 
│                       │       │                  ├ [30]: https://www.cve.org/CVERecord?id=CVE-2025-5278 
│                       │       │                  ╰ [31]: https://www.openwall.com/lists/oss-security/2025/05/
│                       │       │                          27/2 
│                       │       ├ PublishedDate   : 2025-05-27T21:15:23.197Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T15:17:08.367Z 
│                       ├ [10]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : d6dfa30519212919 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3d093e22bb723cf48993558b10c23f997d83125e81756e16e585
│                       │       │                   b7db0312afcc 
│                       │       ├ Title           : jq: embedded NUL truncates top-level jq programs loaded
│                       │       │                   with -f 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   Top-level jq programs loaded from a file with -f are
│                       │       │                   truncated at the first embedded NUL byte on current
│                       │       │                   upstream HEAD. A crafted filter file such as . followed by
│                       │       │                   \x00 and arbitrary suffix compiles and executes as only the
│                       │       │                    prefix before the NUL. This leaves jq with a
│                       │       │                   post-CVE-2026-33948 prefix/full-buffer mismatch on the
│                       │       │                   compilation path even though the JSON parser path has
│                       │       │                   already been fixed. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-158 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41256 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/5a015deae35d19e3e
│                       │       │                  │      bbc65db6c157a80e76df738 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -vf2h-chrj-q3fg 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41256 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41256 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:33.983Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:46:23.713Z 
│                       ├ [11]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : d6dfa30519212919 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d5b2bf941d491005b28ffc41267c4d1ca35be7224fd33f6760c1
│                       │       │                   03687ae43bc6 
│                       │       ├ Title           : jq: signed-int overflow in stack_reallocate 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   the jq bytecode VM's data stack tracks its allocation size
│                       │       │                   in a signed int. When the stack grows beyond ≈1 GiB (via
│                       │       │                   deeply nested generator forks), the doubling arithmetic
│                       │       │                   overflows. The wrapped value is passed to realloc and then
│                       │       │                   used for a memmove with attacker-influenced offsets. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-190 
│                       │       │                  ╰ [1]: CWE-787 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41257 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/01b3cded76daacbfd
│                       │       │                  │      db7f8763700b0803bcb5c6f 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -4jm8-m363-4539 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41257 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41257 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:34.127Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:46:23.82Z 
│                       ├ [12]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : d6dfa30519212919 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0675c915a6a48a61ab27466e90fc52a1b629210e3ff5a192ce38
│                       │       │                   eb0d0f9ddbff 
│                       │       ├ Title           : jq: embedded NUL in jq import paths causes local
│                       │       │                   redaction-policy bypass and preserves sensitive fields in
│                       │       │                   published artifacts 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   jq accepts embedded NUL bytes in import paths at the
│                       │       │                   jq-language level, but later resolves those paths through C
│                       │       │                    string operations during module and data-file lookup. This
│                       │       │                    creates a mismatch between the logical import string that
│                       │       │                   policy or audit code may validate and the on-disk path that
│                       │       │                    jq actually opens. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-20 
│                       │       │                  ╰ [1]: CWE-158 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.4 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43895 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/9d223f153c3632a20
│                       │       │                  │      7fa071caaa6292da33ae361 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -7q7g-mrq3-phxr 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43895 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43895 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:37.387Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:50:02.68Z 
│                       ├ [13]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : d6dfa30519212919 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d12999b2d4c14f610e161279c1fbafc611de1f8098beae04b01a
│                       │       │                   bf99bc61555c 
│                       │       ├ Title           : jq: stack overflow in recursive object merge 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   unbounded recursion in jv_object_merge_recursive() allows a
│                       │       │                    crafted jq program to crash the process with a segfault.
│                       │       │                   The function is reachable through the * operator when both
│                       │       │                   operands are objects. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-674 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43896 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/532ccea6080ed6758
│                       │       │                  │      f39fe9f6208a44b665023d2 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -mg96-6h3q-g846 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43896 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43896 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:37.53Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:50:02.79Z 
│                       ├ [14]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : d6dfa30519212919 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ed51b76814d953dc909ae4d63189bfda6173b2f30fa308684a9f
│                       │       │                   71a544c346ac 
│                       │       ├ Title           : jq: stack overflow in module loading on mutual include 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.2rc1 and
│                       │       │                   earlier, the ordinary module loader recurses without cycle
│                       │       │                   detection when two
│                       │       │                   otherwise valid modules include each other. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-674 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-44777 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/f58787c41835d9b17
│                       │       │                  │      795730cb04925fdba25c71c 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -rmpv-jgvr-wpr9 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44777 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-44777 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:38.517Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:51:19.04Z 
│                       ├ [15]  ╭ VulnerabilityID : CVE-2026-54371 
│                       │       ├ PkgID           : libattr1@1:2.5.2-4 
│                       │       ├ PkgName         : libattr1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libattr1@2.5.2-4?arch=amd64&distro=ub
│                       │       │                  │       untu-26.04&epoch=1 
│                       │       │                  ╰ UID : 7316bbc1a7f10b3f 
│                       │       ├ InstalledVersion: 1:2.5.2-4 
│                       │       ├ FixedVersion    : 1:2.5.2-4ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54371 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f790a3c5325ac01c6fe30fb48b3229f895f88fa1c1fd85ee0a9e
│                       │       │                   d3834f29e94d 
│                       │       ├ Title           : attr: attr: Symlink Traversal Privilege Escalation via
│                       │       │                   getfattr and setfattr 
│                       │       ├ Description     : attr before version 2.6.0 contains a symlink traversal
│                       │       │                   vulnerability in the getfattr and setfattr utilities that
│                       │       │                   allows local attackers to escalate privileges by replacing
│                       │       │                   a pathname component with a symbolic link during directory
│                       │       │                   hierarchy traversal. Attackers who control a pathname
│                       │       │                   component can redirect getfattr and setfattr operations to
│                       │       │                   arbitrary files by substituting a symlink, leading to local
│                       │       │                    privilege escalation when getfattr or setfattr is invoked
│                       │       │                   by a privileged process over an attacker-controlled path.[
│                       │       │                   m 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-59 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 6.3 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:34889 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:56133 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:59380 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:60226 
│                       │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-54371 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2490283 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2490283 
│                       │       │                  ├ [7] : https://cgit.git.savannah.nongnu.org/cgit/attr.git/c
│                       │       │                  │       ommit/?id=49f79e947270f06940b9100fa638f85dddc4aa7f[
│                       │       │                  │       m 
│                       │       │                  ├ [8] : https://cgit.git.savannah.nongnu.org/cgit/attr.git/c
│                       │       │                  │       ommit/?id=c440855d6b33446edf4b5eb1a2d892281f15a99b[
│                       │       │                  │       m 
│                       │       │                  ├ [9] : https://creativecommons.org/licenses/by/4.0/ 
│                       │       │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-54371 
│                       │       │                  ├ [11]: https://errata.almalinux.org/10/ALSA-2026-59380.html 
│                       │       │                  ├ [12]: https://errata.rockylinux.org/RLSA-2026:56133 
│                       │       │                  ├ [13]: https://linux.oracle.com/cve/CVE-2026-54371.html 
│                       │       │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2026-60226-0.html 
│                       │       │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2026-54371 
│                       │       │                  ├ [16]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-54371.json 
│                       │       │                  ├ [17]: https://ubuntu.com/security/notices/USN-8691-1 
│                       │       │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-54371 
│                       │       │                  ├ [19]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                  │       29/1 
│                       │       │                  ╰ [20]: https://www.vulncheck.com/advisories/attr-symlink-tr
│                       │       │                          aversal-privilege-escalation-via-getfattr-setfattr[
│                       │       │                          m 
│                       │       ├ PublishedDate   : 2026-06-29T14:16:57.823Z 
│                       │       ╰ LastModifiedDate: 2026-08-27T13:18:24.933Z 
│                       ├ [16]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8c9482bc0251ef832d4605b303bf44f55e2762b5ab324ee4b559
│                       │       │                   49ec8cd576f8 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [17]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:36bb3a04ccc371d6cf955c647d8df98a15c58666ee601fa113b9
│                       │       │                   c93433582cd7 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [18]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bf88669eb62bfb4ac4ca00a442a6abe80a777df594210cf5d28a
│                       │       │                   b53e4d0e3561 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [19]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5385ea4933bc40b196c64ce34908219df363d4668347c0727a90
│                       │       │                   339018d24f43 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [20]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:303b2ac136369bf4d8e733302a329f82c843c8a8df0b4da65543
│                       │       │                   8ac460471139 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [21]  ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ab6510aad7fe4bc2a4408bb44eaf1b5f114f95567071f7b530c2
│                       │       │                   9ad358ec8643 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [22]  ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : cfada1ce2d53117c 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2d65fe0a19f4a1ce1c2547a8f44ebafc9125360bc7d643825d72
│                       │       │                   730ed3714ca7 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [23]  ╭ VulnerabilityID : CVE-2025-66382 
│                       │       ├ PkgID           : libexpat1@2.7.4-1 
│                       │       ├ PkgName         : libexpat1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : c17b9d4b5a8b1286 
│                       │       ├ InstalledVersion: 2.7.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5fbb3bc6260081462c8d3473bccc5a4e8e02dc4c097b9ba46ef6
│                       │       │                   ef19d4718a17 
│                       │       ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                       │       │                   processing 
│                       │       ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                       │       │                   approximate size of 2 MiB can lead to dozens of seconds of
│                       │       │                   processing time. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-407 
│                       │       ├ VendorSeverity   ╭ azure : 1 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 1 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
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
│                       │       ╰ LastModifiedDate: 2026-06-17T09:56:45.24Z 
│                       ├ [24]  ╭ VulnerabilityID : CVE-2024-2236 
│                       │       ├ PkgID           : libgcrypt20@1.12.0-2ubuntu1 
│                       │       ├ PkgName         : libgcrypt20 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 45e5e1ad6adb0acd 
│                       │       ├ InstalledVersion: 1.12.0-2ubuntu1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:cc87d27303ddb78eff5c8779fbda058342082ff1f4d53e907523
│                       │       │                   5d902d8b10de 
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
│                       │       │                  ├ [7] : https://creativecommons.org/licenses/by/4.0/ 
│                       │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-2236 
│                       │       │                  ├ [9] : https://dev.gnupg.org/T7136 
│                       │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                       │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2024:9404 
│                       │       │                  ├ [12]: https://github.com/tomato42/marvin-toolkit/tree/mast
│                       │       │                  │       er/example/libgcrypt 
│                       │       │                  ├ [13]: https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt
│                       │       │                  │       -mirror/-/merge_requests/17 
│                       │       │                  ├ [14]: https://linux.oracle.com/cve/CVE-2024-2236.html 
│                       │       │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                       │       │                  ├ [16]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024-
│                       │       │                  │       March/005607.html 
│                       │       │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                       │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                       │       ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T07:24:06.083Z 
│                       ├ [25]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 26de166543eb3efb 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b7876b00d133111bd419810d5e964d01f0a3ddd2e3a6e1a942dc
│                       │       │                   e7bf92f4580d 
│                       │       ├ Title           : jq: embedded NUL truncates top-level jq programs loaded
│                       │       │                   with -f 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   Top-level jq programs loaded from a file with -f are
│                       │       │                   truncated at the first embedded NUL byte on current
│                       │       │                   upstream HEAD. A crafted filter file such as . followed by
│                       │       │                   \x00 and arbitrary suffix compiles and executes as only the
│                       │       │                    prefix before the NUL. This leaves jq with a
│                       │       │                   post-CVE-2026-33948 prefix/full-buffer mismatch on the
│                       │       │                   compilation path even though the JSON parser path has
│                       │       │                   already been fixed. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-158 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41256 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/5a015deae35d19e3e
│                       │       │                  │      bbc65db6c157a80e76df738 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -vf2h-chrj-q3fg 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41256 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41256 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:33.983Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:46:23.713Z 
│                       ├ [26]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 26de166543eb3efb 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c0a5eb8aee65683bc4497ed6253d8e6530b182f6e1b2e68aa7e6
│                       │       │                   721da21107a5 
│                       │       ├ Title           : jq: signed-int overflow in stack_reallocate 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   the jq bytecode VM's data stack tracks its allocation size
│                       │       │                   in a signed int. When the stack grows beyond ≈1 GiB (via
│                       │       │                   deeply nested generator forks), the doubling arithmetic
│                       │       │                   overflows. The wrapped value is passed to realloc and then
│                       │       │                   used for a memmove with attacker-influenced offsets. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-190 
│                       │       │                  ╰ [1]: CWE-787 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41257 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/01b3cded76daacbfd
│                       │       │                  │      db7f8763700b0803bcb5c6f 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -4jm8-m363-4539 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41257 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41257 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:34.127Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:46:23.82Z 
│                       ├ [27]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 26de166543eb3efb 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b48d085d67463589aaf290d2384d84ec34901ad18f28df8508bb
│                       │       │                   a8463ca22563 
│                       │       ├ Title           : jq: embedded NUL in jq import paths causes local
│                       │       │                   redaction-policy bypass and preserves sensitive fields in
│                       │       │                   published artifacts 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   jq accepts embedded NUL bytes in import paths at the
│                       │       │                   jq-language level, but later resolves those paths through C
│                       │       │                    string operations during module and data-file lookup. This
│                       │       │                    creates a mismatch between the logical import string that
│                       │       │                   policy or audit code may validate and the on-disk path that
│                       │       │                    jq actually opens. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-20 
│                       │       │                  ╰ [1]: CWE-158 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.4 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43895 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/9d223f153c3632a20
│                       │       │                  │      7fa071caaa6292da33ae361 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -7q7g-mrq3-phxr 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43895 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43895 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:37.387Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:50:02.68Z 
│                       ├ [28]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 26de166543eb3efb 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9add162a1a6cb6771b13211e3088ecdd77879bcea3c971d1f8e3
│                       │       │                   adc5a3bb4636 
│                       │       ├ Title           : jq: stack overflow in recursive object merge 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.1 and earlier,
│                       │       │                   unbounded recursion in jv_object_merge_recursive() allows a
│                       │       │                    crafted jq program to crash the process with a segfault.
│                       │       │                   The function is reachable through the * operator when both
│                       │       │                   operands are objects. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-674 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ azure : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-43896 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/532ccea6080ed6758
│                       │       │                  │      f39fe9f6208a44b665023d2 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -mg96-6h3q-g846 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-43896 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-43896 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:37.53Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:50:02.79Z 
│                       ├ [29]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 26de166543eb3efb 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a193ea9a2b4fdf8d112b7269ce1a3c2a262f80b889331911f723
│                       │       │                   aad8cb967ef6 
│                       │       ├ Title           : jq: stack overflow in module loading on mutual include 
│                       │       ├ Description     : jq is a command-line JSON processor. In 1.8.2rc1 and
│                       │       │                   earlier, the ordinary module loader recurses without cycle
│                       │       │                   detection when two
│                       │       │                   otherwise valid modules include each other. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-674 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ photon: 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.5 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 5.5 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-44777 
│                       │       │                  ├ [1]: https://github.com/jqlang/jq/commit/f58787c41835d9b17
│                       │       │                  │      795730cb04925fdba25c71c 
│                       │       │                  ├ [2]: https://github.com/jqlang/jq/security/advisories/GHSA
│                       │       │                  │      -rmpv-jgvr-wpr9 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44777 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-44777 
│                       │       ├ PublishedDate   : 2026-05-11T18:16:38.517Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:51:19.04Z 
│                       ├ [30]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c913ab14c7122789055d98ca3ee0f9b150937c15dfd4e2cae669
│                       │       │                   d9526b638a61 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [31]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:915fd64837241d2ebc5be66516e15c69aa70dafe67783dbd627b
│                       │       │                   1a5f36a6c182 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [32]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:55e31275b584f54432ff585e7de3f747c73ec0d0adabbfc8cf9c
│                       │       │                   2d421b6a34aa 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [33]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e45221940ba583a80743d57a62d7d5df7676d84896ee6aeaf700
│                       │       │                   047d1160d21b 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [34]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6d82c38ce7785961353bc28785e621fd51e57bb9d027ef9813af
│                       │       │                   4fd77bb73bea 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [35]  ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:38336455f24b0fae4a5e7222607cd2f83e1bb2f9dd5d89daf2e1
│                       │       │                   9ee213952139 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [36]  ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ec572950b070797 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9b0fccaca2d538b197808a51adff92fe3eb1935a5d80e34ac76b
│                       │       │                   77256c9675b5 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [37]  ╭ VulnerabilityID : CVE-2026-13757 
│                       │       ├ PkgID           : libp11-kit0@0.26.2-2 
│                       │       ├ PkgName         : libp11-kit0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distr
│                       │       │                  │       o=ubuntu-26.04 
│                       │       │                  ╰ UID : 38d0559292d79a63 
│                       │       ├ InstalledVersion: 0.26.2-2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:784928f3ca21efe10f26d2ab062f3ec736e8e5f288c36c4d51d6
│                       │       │                   376cf91316f7 
│                       │       ├ Title           : p11-kit: Stack exhaustion via unbounded recursion in RPC
│                       │       │                   attribute parsing 
│                       │       ├ Description     : A flaw was found in p11-kit. The RPC message attribute
│                       │       │                   parsing functions p11_rpc_message_get_attribute() and
│                       │       │                   p11_rpc_message_get_attribute_array_value() form a
│                       │       │                   mutually-recursive call chain with no recursion depth limit
│                       │       │                    when processing nested CKA_WRAP_TEMPLATE,
│                       │       │                   CKA_UNWRAP_TEMPLATE, and CKA_DERIVE_TEMPLATE attributes. An
│                       │       │                    unauthenticated attacker with local access to the p11-kit
│                       │       │                   RPC Unix domain socket can send a specially crafted request
│                       │       │                    with deeply nested template attributes, causing stack
│                       │       │                   exhaustion and crashing the p11-kit server process and its
│                       │       │                   dependent services. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-674 
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.2 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37469 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:38342 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:49667 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:49668 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:53371 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:54387 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:54760 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:58981 
│                       │       │                  ├ [8] : https://access.redhat.com/security/cve/CVE-2026-13757 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2494556 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                       │       │                  ├ [11]: https://creativecommons.org/licenses/by/4.0/ 
│                       │       │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-13757 
│                       │       │                  ├ [13]: https://errata.almalinux.org/10/ALSA-2026-49668.html 
│                       │       │                  ├ [14]: https://errata.rockylinux.org/RLSA-2026:49668 
│                       │       │                  ├ [15]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                       │       │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-13757.html 
│                       │       │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-49668.html 
│                       │       │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-8687-1 
│                       │       │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                       │       ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T16:17:52.267Z 
│                       ├ [38]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c48fb244e9e417278936b5d4c7b3da33f454933cf4ed5d845901
│                       │       │                   f69ca15da29f 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [39]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9a04e2174c69da9c2b15aed496e225ebf0e731124b32fd40fcdc
│                       │       │                   803ac565c1cc 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [40]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e038305f6db080f192fb95b32a154299a0ed0b770a52e9b243eb
│                       │       │                   060608682f7a 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [41]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b18eb1bafe474d74f5b0c21bf9a1bdc31caeeba28fd1eb117f08
│                       │       │                   cf8449b17f02 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [42]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b54eef2b408ed4b106aedc45f2df006f663b41f8c61d23002169
│                       │       │                   787e91f99127 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [43]  ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bf0348ffc0aa011fba5dd215df1302df4d31776d34061954d249
│                       │       │                   007ba90e9eae 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [44]  ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : eb8f24163bcc7b6b 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0e2ec513b2c781e82fd2d6e3609b154a95f8a4f8cd70a0a37339
│                       │       │                   466e81cb61fe 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [45]  ╭ VulnerabilityID : CVE-2026-75803 
│                       │       ├ PkgID           : libssl3t64@3.5.5-1ubuntu3.4 
│                       │       ├ PkgName         : libssl3t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libssl3t64@3.5.5-1ubuntu3.4?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : dc2ffa401e1316a6 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3.4 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75803 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e28b3a56d786b15f4b8b5a19ed7afeedce303edfad9151889232
│                       │       │                   23325b277920 
│                       │       ├ Title           : Issue summary: ChaCha20-Poly1305 and AES-OCB decryption
│                       │       │                   with an empty  ... 
│                       │       ├ Description     : Issue summary: ChaCha20-Poly1305 and AES-OCB decryption
│                       │       │                   with an empty
│                       │       │                   ciphertext can report success without verifying the
│                       │       │                   supplied authentication
│                       │       │                   tag when the operation is finalized by calling the
│                       │       │                   EVP_Cipher() function.
│                       │       │                   
│                       │       │                   Impact summary: Applications calling EVP_Cipher() on an
│                       │       │                   empty ciphertext and
│                       │       │                   expecting the call to check the AEAD tag may accept forged
│                       │       │                   messages.
│                       │       │                   CWE: CWE-354 (Improper Validation of Integrity Check
│                       │       │                   Value)
│                       │       │                   Description: The EVP_Cipher() API call for AEAD ciphers
│                       │       │                   behaves like a one
│                       │       │                   shot encryption and decryption call. It also verifies the
│                       │       │                   AEAD tag after the
│                       │       │                   decryption operation. However for AES-OCB and
│                       │       │                   ChaCha20-Poly1305 ciphers
│                       │       │                   it skipped the AEAD tag verification when an empty
│                       │       │                   ciphertext was passed to
│                       │       │                   the function. The callers of this function might believe
│                       │       │                   that a successful
│                       │       │                   return indicates a valid AEAD tag for these ciphers, even
│                       │       │                   when that has not
│                       │       │                   truly been validated in this case.
│                       │       │                   FIPS impact: no
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this CVE
│                       │       │                   as the affected algorithms are not FIPS approved and thus
│                       │       │                   not implemented
│                       │       │                   in the FIPS module. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://github.com/openssl/openssl/commit/119ab9555dc
│                       │       │                  │      62275bbd71f6f49529b1a44feba42 
│                       │       │                  ├ [1]: https://github.com/openssl/openssl/commit/3621257986e
│                       │       │                  │      27e540bf96a11570929a6e5a9e05b 
│                       │       │                  ├ [2]: https://github.com/openssl/openssl/commit/6c7aa6f8f64
│                       │       │                  │      49b7fe0137ee8be65fcd239bd7d6a 
│                       │       │                  ├ [3]: https://github.com/openssl/openssl/commit/bdeb0cd994d
│                       │       │                  │      915342787f117ee75044f0dc36f34 
│                       │       │                  ├ [4]: https://github.com/openssl/openssl/commit/bf95f5f772e
│                       │       │                  │      9362f87b25cfa2f8cb15d984865b9 
│                       │       │                  ├ [5]: https://openssl-library.org/news/secadv/20260825.txt 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-8678-1 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8678-3 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75803 
│                       │       ├ PublishedDate   : 2026-08-25T13:19:29.57Z 
│                       │       ╰ LastModifiedDate: 2026-08-28T19:46:29.323Z 
│                       ├ [46]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libsystemd0@259.5-0ubuntu3.4 
│                       │       ├ PkgName         : libsystemd0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.4?arch=amd
│                       │       │                  │       64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fe76170faadcb974 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f593bf3af0d4935e634b2b0923af81e931a170df45aba9a27a1d
│                       │       │                   d2e2fd9de38a 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                       ├ [47]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libudev1@259.5-0ubuntu3.4 
│                       │       ├ PkgName         : libudev1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.4?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 9d26e6690a3402fe 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:769a6ce02fd590dc78527f5b6181ec2cfb6c903e818e96fbc6b7
│                       │       │                   e9467c4df034 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                       ├ [48]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4809aad1c1848209cb4c2a8d4b7f4b89e3d57eecc85100498779
│                       │       │                   407e8489c198 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [49]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:71c6b9480ced2d9eb3576c5f068acae13814bb2b0e6ec795ea51
│                       │       │                   cdc97cc9f503 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [50]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4fb7e45e11b836e5826e2986372bb62875bb17337dea5b3eb46b
│                       │       │                   4f18c8c94365 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [51]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:100110eabb77a30a4eebb362367e2c22baf94c9af001a9d3714f
│                       │       │                   76dd0c0aba5a 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [52]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9fe10dfcfb335cb53cdeb08f6695c20b36c0adade0e21198a893
│                       │       │                   2075d3c0f7d3 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [53]  ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2a27c500985c129f8ce8cad43315b9ef90ef7e2b3cbe4fd2c566
│                       │       │                   33e59dde511e 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [54]  ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 927585f152fe989a 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4facc420a7b0f3b827a9b281c0a50a51d20eb493bf84520ce277
│                       │       │                   179f4f47e508 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [55]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:46dda95267d62e82e501c989963c2e885cb090088d90f41301ef
│                       │       │                   6c2aada76152 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [56]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9ae8294e11651d85f9e4695ef420eab6d968b583d8e78793724b
│                       │       │                   36bf913267ea 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [57]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3c4f30808ecc3411552feeb93f6b073fdbecfb724ed9f59db16d
│                       │       │                   098780e67a5d 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [58]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:84410a1aa2f774dacee1fe37c3366a5aa59da5081131f4bd8cc5
│                       │       │                   e244d5a96dff 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [59]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:98eac38873b0b6f62a20f147faa57671d15c2d449a0a7178e1c5
│                       │       │                   a43a31a02e1a 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [60]  ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a5cf696329f6ff010b5e949fe78463445b3008c89af9c87abac1
│                       │       │                   083a81a70258 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [61]  ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 591feb53ee99f4f9 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:03a7f1ba787bc3bfd45a6905c0ef109e886094e9231644aecfa1
│                       │       │                   6f156deed8dc 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [62]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : login.defs 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : eaf648d5e4e975f7 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:825bb532f2917193bb42d48098a214f6b24274639028f7c4659e
│                       │       │                   8c19206404a4 
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
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20145 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:20559 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2334165 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                       │       │                  ├ [5] : https://creativecommons.org/licenses/by/4.0/ 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-56433 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │       │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:20145 
│                       │       │                  ├ [9] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                       │       │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                       │       │                  │       -L241 
│                       │       │                  ├ [10]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │       │                  ├ [11]: https://github.com/shadow-maint/shadow/releases/tag/
│                       │       │                  │       4.4 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [63]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9d10e5975cd91e2ef39a6de9fda8ba641ce5bd0cca453836f6fb
│                       │       │                   08824419560a 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [64]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6e49f777879c0089e8a6a8ffba958896fbe3badc62cb0f35eaad
│                       │       │                   5218fd1e5f90 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [65]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:033316f5bccf5c03753bec030063dbc76004c361d479de7ca04f
│                       │       │                   36c343ce055f 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [66]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b5d14a5e76cc2cb6089a7adcab24260b134cd4a5e2b3ae88a5ca
│                       │       │                   0be4c431794e 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [67]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:99bea1bc5d559bd8e048e2017625db9553644b713b92cc47b463
│                       │       │                   8ffa0c9971dd 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [68]  ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:27e896f21cfd4162a143fa4e48388896f9212787ec0bf02ba7b5
│                       │       │                   e5f4fe58c9f1 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [69]  ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:97ffdf4bd58c73924ccb78c87b7685cb3f24946acee60d40db86
│                       │       │                   c6e8cba0a26c 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ├ [70]  ╭ VulnerabilityID : CVE-2026-75803 
│                       │       ├ PkgID           : openssl@3.5.5-1ubuntu3.4 
│                       │       ├ PkgName         : openssl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl@3.5.5-1ubuntu3.4?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 867165f5b49e3eda 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3.4 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75803 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ba25c816d1c16b2e6021d0af8a268fe933e6427f3179f8bcd750
│                       │       │                   ce272a33a08e 
│                       │       ├ Title           : Issue summary: ChaCha20-Poly1305 and AES-OCB decryption
│                       │       │                   with an empty  ... 
│                       │       ├ Description     : Issue summary: ChaCha20-Poly1305 and AES-OCB decryption
│                       │       │                   with an empty
│                       │       │                   ciphertext can report success without verifying the
│                       │       │                   supplied authentication
│                       │       │                   tag when the operation is finalized by calling the
│                       │       │                   EVP_Cipher() function.
│                       │       │                   
│                       │       │                   Impact summary: Applications calling EVP_Cipher() on an
│                       │       │                   empty ciphertext and
│                       │       │                   expecting the call to check the AEAD tag may accept forged
│                       │       │                   messages.
│                       │       │                   CWE: CWE-354 (Improper Validation of Integrity Check
│                       │       │                   Value)
│                       │       │                   Description: The EVP_Cipher() API call for AEAD ciphers
│                       │       │                   behaves like a one
│                       │       │                   shot encryption and decryption call. It also verifies the
│                       │       │                   AEAD tag after the
│                       │       │                   decryption operation. However for AES-OCB and
│                       │       │                   ChaCha20-Poly1305 ciphers
│                       │       │                   it skipped the AEAD tag verification when an empty
│                       │       │                   ciphertext was passed to
│                       │       │                   the function. The callers of this function might believe
│                       │       │                   that a successful
│                       │       │                   return indicates a valid AEAD tag for these ciphers, even
│                       │       │                   when that has not
│                       │       │                   truly been validated in this case.
│                       │       │                   FIPS impact: no
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this CVE
│                       │       │                   as the affected algorithms are not FIPS approved and thus
│                       │       │                   not implemented
│                       │       │                   in the FIPS module. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://github.com/openssl/openssl/commit/119ab9555dc
│                       │       │                  │      62275bbd71f6f49529b1a44feba42 
│                       │       │                  ├ [1]: https://github.com/openssl/openssl/commit/3621257986e
│                       │       │                  │      27e540bf96a11570929a6e5a9e05b 
│                       │       │                  ├ [2]: https://github.com/openssl/openssl/commit/6c7aa6f8f64
│                       │       │                  │      49b7fe0137ee8be65fcd239bd7d6a 
│                       │       │                  ├ [3]: https://github.com/openssl/openssl/commit/bdeb0cd994d
│                       │       │                  │      915342787f117ee75044f0dc36f34 
│                       │       │                  ├ [4]: https://github.com/openssl/openssl/commit/bf95f5f772e
│                       │       │                  │      9362f87b25cfa2f8cb15d984865b9 
│                       │       │                  ├ [5]: https://openssl-library.org/news/secadv/20260825.txt 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-8678-1 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8678-3 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75803 
│                       │       ├ PublishedDate   : 2026-08-25T13:19:29.57Z 
│                       │       ╰ LastModifiedDate: 2026-08-28T19:46:29.323Z 
│                       ├ [71]  ╭ VulnerabilityID : CVE-2026-75803 
│                       │       ├ PkgID           : openssl-provider-legacy@3.5.5-1ubuntu3.4 
│                       │       ├ PkgName         : openssl-provider-legacy 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssl-provider-legacy@3.5.5-1ubuntu
│                       │       │                  │       3.4?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 3589238e44de5fd 
│                       │       ├ InstalledVersion: 3.5.5-1ubuntu3.4 
│                       │       ├ FixedVersion    : 3.5.5-1ubuntu3.5 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-75803 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:04b9439bda25c64de33a0e7d105c1264cbae7c5434c1ddec8539
│                       │       │                   154c8f970ab8 
│                       │       ├ Title           : Issue summary: ChaCha20-Poly1305 and AES-OCB decryption
│                       │       │                   with an empty  ... 
│                       │       ├ Description     : Issue summary: ChaCha20-Poly1305 and AES-OCB decryption
│                       │       │                   with an empty
│                       │       │                   ciphertext can report success without verifying the
│                       │       │                   supplied authentication
│                       │       │                   tag when the operation is finalized by calling the
│                       │       │                   EVP_Cipher() function.
│                       │       │                   
│                       │       │                   Impact summary: Applications calling EVP_Cipher() on an
│                       │       │                   empty ciphertext and
│                       │       │                   expecting the call to check the AEAD tag may accept forged
│                       │       │                   messages.
│                       │       │                   CWE: CWE-354 (Improper Validation of Integrity Check
│                       │       │                   Value)
│                       │       │                   Description: The EVP_Cipher() API call for AEAD ciphers
│                       │       │                   behaves like a one
│                       │       │                   shot encryption and decryption call. It also verifies the
│                       │       │                   AEAD tag after the
│                       │       │                   decryption operation. However for AES-OCB and
│                       │       │                   ChaCha20-Poly1305 ciphers
│                       │       │                   it skipped the AEAD tag verification when an empty
│                       │       │                   ciphertext was passed to
│                       │       │                   the function. The callers of this function might believe
│                       │       │                   that a successful
│                       │       │                   return indicates a valid AEAD tag for these ciphers, even
│                       │       │                   when that has not
│                       │       │                   truly been validated in this case.
│                       │       │                   FIPS impact: no
│                       │       │                   The FIPS modules in 4.0, 3.6, 3.5, 3.4, and 3.0 are not
│                       │       │                   affected by this CVE
│                       │       │                   as the affected algorithms are not FIPS approved and thus
│                       │       │                   not implemented
│                       │       │                   in the FIPS module. 
│                       │       ├ Severity        : LOW 
│                       │       ├ CweIDs           ─ [0]: CWE-354 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://github.com/openssl/openssl/commit/119ab9555dc
│                       │       │                  │      62275bbd71f6f49529b1a44feba42 
│                       │       │                  ├ [1]: https://github.com/openssl/openssl/commit/3621257986e
│                       │       │                  │      27e540bf96a11570929a6e5a9e05b 
│                       │       │                  ├ [2]: https://github.com/openssl/openssl/commit/6c7aa6f8f64
│                       │       │                  │      49b7fe0137ee8be65fcd239bd7d6a 
│                       │       │                  ├ [3]: https://github.com/openssl/openssl/commit/bdeb0cd994d
│                       │       │                  │      915342787f117ee75044f0dc36f34 
│                       │       │                  ├ [4]: https://github.com/openssl/openssl/commit/bf95f5f772e
│                       │       │                  │      9362f87b25cfa2f8cb15d984865b9 
│                       │       │                  ├ [5]: https://openssl-library.org/news/secadv/20260825.txt 
│                       │       │                  ├ [6]: https://ubuntu.com/security/notices/USN-8678-1 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8678-3 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-75803 
│                       │       ├ PublishedDate   : 2026-08-25T13:19:29.57Z 
│                       │       ╰ LastModifiedDate: 2026-08-28T19:46:29.323Z 
│                       ├ [72]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : passwd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 6f8f43a2d44eb6a2 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:17408653532735aa9cac8f3034aceb2cb69802ac1573a96f933c
│                       │       │                   599ade92a303 
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
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20145 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:20559 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2334165 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                       │       │                  ├ [5] : https://creativecommons.org/licenses/by/4.0/ 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       024-56433 
│                       │       │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                       │       │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:20145 
│                       │       │                  ├ [9] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                       │       │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                       │       │                  │       -L241 
│                       │       │                  ├ [10]: https://github.com/shadow-maint/shadow/issues/1157 
│                       │       │                  ├ [11]: https://github.com/shadow-maint/shadow/releases/tag/
│                       │       │                  │       4.4 
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                       │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                       │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [73]  ╭ VulnerabilityID : CVE-2026-35341 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9160e876df47994c9163f018681b0a734480685a88b02e82ceb5
│                       │       │                   9b62491e6bfb 
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
│                       │       │                  ├ [2]: https://github.com/uutils/coreutils/pull/10376 
│                       │       │                  ├ [3]: https://github.com/uutils/coreutils/security/advisori
│                       │       │                  │      es/GHSA-pmf6-rcx4-v53v 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:25.5Z 
│                       ├ [74]  ╭ VulnerabilityID : CVE-2026-35344 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8a6684f511b0ab92ce9b8dd0981e584705537e3409fa69b97694
│                       │       │                   4fd53e6fe3c9 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:25.833Z 
│                       ├ [75]  ╭ VulnerabilityID : CVE-2026-35345 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:44323e33287a62ce6b79df642e32506e6fc2d27e1312b2398caf
│                       │       │                   4ffafd3a6b7a 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:25.943Z 
│                       ├ [76]  ╭ VulnerabilityID : CVE-2026-35348 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:380444f064f101a9e37985fd3af6f5c60909b40691905ece3425
│                       │       │                   ccd5dfd2e433 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:26.27Z 
│                       ├ [77]  ╭ VulnerabilityID : CVE-2026-35350 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:72c0dcdd4bfa5dba9aa153f6bf0d5f0e8486ec303632489223b8
│                       │       │                   c7653de31876 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:26.48Z 
│                       ├ [78]  ╭ VulnerabilityID : CVE-2026-35351 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f81c32fa15d292b0f5efc17d095e3ef3d563b6b4b0ac458b76b8
│                       │       │                   0cbb61da6721 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:26.587Z 
│                       ├ [79]  ╭ VulnerabilityID : CVE-2026-35352 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:27afa99c87b79bb15b8d3fe4092817a4c3067b0b1c42d38139d6
│                       │       │                   d1c7727b9107 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:26.69Z 
│                       ├ [80]  ╭ VulnerabilityID : CVE-2026-35354 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9ec2339d57ad4bec9de35510bf3a8b5869183b2bae5f7dac1138
│                       │       │                   598b68eaa237 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:26.907Z 
│                       ├ [81]  ╭ VulnerabilityID : CVE-2026-35357 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:30625af7a8ef0404154ba7955cb8d378275795e06ae1e86bfff2
│                       │       │                   44f1ac4c99ca 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:27.223Z 
│                       ├ [82]  ╭ VulnerabilityID : CVE-2026-35359 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5357a944ca3df972dce63e83314127e00c161b3a34b84ccd637c
│                       │       │                   2f8ba578aa55 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:27.437Z 
│                       ├ [83]  ╭ VulnerabilityID : CVE-2026-35360 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:931065fc9f895030213527f41040e71c0ca69938f3cacdc30d7f
│                       │       │                   18b6bb72da72 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:27.543Z 
│                       ├ [84]  ╭ VulnerabilityID : CVE-2026-35363 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:decd625bf41b636dcb0e2dff9cd541f44b6934744673595f11ad
│                       │       │                   3d1f9203dc56 
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
│                       │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                       │       │                  │      es/GHSA-89p7-7cq3-hhr2 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:27.867Z 
│                       ├ [85]  ╭ VulnerabilityID : CVE-2026-35364 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5451cf08c377a43cba4cadc3291550bdf8fe376c69bcb465c150
│                       │       │                   a1b2b704847d 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:27.97Z 
│                       ├ [86]  ╭ VulnerabilityID : CVE-2026-35367 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1e226c40be5c1a743ae990c86b989f25946e69c63753c715175e
│                       │       │                   a23937fae197 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.297Z 
│                       ├ [87]  ╭ VulnerabilityID : CVE-2026-35368 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a6b401a2ae573787652ca1769a9e43895b3b29af96de3bbda83d
│                       │       │                   06824624aced 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.4Z 
│                       ├ [88]  ╭ VulnerabilityID : CVE-2026-35370 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c1ed5beac22ec954ee1970fb3a0db7b09ce66a3764c275d385b8
│                       │       │                   f90e58538865 
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
│                       │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                       │       │                  │      es/GHSA-47c7-qrm7-mqw7 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.613Z 
│                       ├ [89]  ╭ VulnerabilityID : CVE-2026-35371 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ad5d92f30ddaf5750bb0a7fef3ccfbd60e3b205e730115196bf0
│                       │       │                   4e1cda02322e 
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
│                       │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                       │       │                  │      es/GHSA-xv5w-cw7x-72gj 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.723Z 
│                       ├ [90]  ╭ VulnerabilityID : CVE-2026-35373 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b068dad0c1c9781adf687b4ccaacf0d7a3704efad27df70e0843
│                       │       │                   265bf6f80eac 
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
│                       │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                       │       │                  │      es/GHSA-jcjr-rh8q-7xqf 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                       │       ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.933Z 
│                       ├ [91]  ╭ VulnerabilityID : CVE-2026-35374 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a7ea2d2fb0370671ef201843545c4360a8bcc46259d959c1b39b
│                       │       │                   e7399cf7f89f 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:29.04Z 
│                       ├ [92]  ╭ VulnerabilityID : CVE-2026-35377 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6906826d8d9e1c6e1ff73457e86eb6d4d648fd5e5628fb064eb1
│                       │       │                   757435fdc43c 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:29.357Z 
│                       ├ [93]  ╭ VulnerabilityID : CVE-2026-18477 
│                       │       ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │       ├ PkgName         : tar 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5867f93e7d45b368 
│                       │       ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18477 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:cc1dbb959d7025b21a31b5f527345490f2f094f5d6d4142fd59b
│                       │       │                   dea921223907 
│                       │       ├ Title           : tar: tar: TOCTOU in incremental dumpdir 'X' rename handling
│                       │       │                    allows restore path escape 
│                       │       ├ Description     : A TOCTOU (Time-of-Check Time-of-Use) vulnerability in GNU
│                       │       │                   tar's incremental dumpdir 'X' rename handling allows a
│                       │       │                   local attacker with write access to a directory being
│                       │       │                   backed up to influence the restore process if the attacker
│                       │       │                   has access to the system where the restore is being
│                       │       │                   performed. During restoration, files or directories may be
│                       │       │                   created, renamed or overwritten outside the intended
│                       │       │                   extraction directory. This could lead to unauthorized file
│                       │       │                   modification or, in some cases, privilege escalation.
│                       │       │                   Exploitation does not require the attacker to modify or
│                       │       │                   craft the archive, and standard backup and restore
│                       │       │                   workflows—including extracting into a newly created
│                       │       │                   directory without using the -P option do not mitigate the
│                       │       │                   issue. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-367 
│                       │       ├ VendorSeverity   ╭ julia : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:
│                       │       │                  │        │           H/A:N 
│                       │       │                  │        ╰ V3Score : 4.4 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           H/A:N 
│                       │       │                           ╰ V3Score : 4.4 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:49361 
│                       │       │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:61581 
│                       │       │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-18477 
│                       │       │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2509735 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-18477 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-18477 
│                       │       ├ PublishedDate   : 2026-08-03T17:16:33.897Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T21:17:06.78Z 
│                       ├ [94]  ╭ VulnerabilityID : CVE-2026-18508 
│                       │       ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │       ├ PkgName         : tar 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5867f93e7d45b368 
│                       │       ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18508 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8cf0222ca98d28f6059c6e7a0c1d3196005184a346f21409feb6
│                       │       │                   ae9d706c4744 
│                       │       ├ Title           : tar: tar: --one-top-level hardlink targets not confined to
│                       │       │                   top-level directory enabling arbitrary file overwrite 
│                       │       ├ Description     : A flaw was found in GNU tar. When extracting an archive
│                       │       │                   with the --one-top-level option, hardlink targets are not
│                       │       │                   confined to the designated top-level directory and may
│                       │       │                   resolve relative to the extraction working directory. A
│                       │       │                   crafted archive can create hardlinks that escape the
│                       │       │                   intended boundary and, when combined with a preexisting
│                       │       │                   symbolic link under the working directory, may allow
│                       │       │                   writing outside that boundary during a single extraction.[
│                       │       │                   m 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-59 
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                       │       │                           │           L/A:N 
│                       │       │                           ╰ V3Score : 4.4 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:50807 
│                       │       │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:61581 
│                       │       │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-18508 
│                       │       │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2509843 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-18508 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-18508 
│                       │       ├ PublishedDate   : 2026-08-03T16:16:28.387Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T21:17:06.94Z 
│                       ├ [95]  ╭ VulnerabilityID : CVE-2026-13595 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13595 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b00cba1c882c1a592df2a84b62a2ba770404f4aa39c40ad8cb6e
│                       │       │                   e6b0c6be9c76 
│                       │       ├ Title           : util-linux: util-linux: heap use-after-free in libblkid
│                       │       │                   nested partition probing 
│                       │       ├ Description     : A flaw was found in the libblkid library of util-linux.
│                       │       │                   During nested partition probing, the BSD, Minix, Solaris
│                       │       │                   x86, and UnixWare partition probers cache a raw pointer to
│                       │       │                   a parent partition entry in a dynamically allocated array.
│                       │       │                   When subsequent partition additions cause the array to be
│                       │       │                   reallocated, this pointer becomes stale, leading to a heap
│                       │       │                   use-after-free read. An attacker who can present a crafted
│                       │       │                   block device image (for example, via USB insertion or a
│                       │       │                   loop-mounted disk image) can trigger this flaw without user
│                       │       │                    interaction, as libblkid is invoked automatically by
│                       │       │                   udev/udisks as root on block-device hot-plug events. This
│                       │       │                   could lead to limited information disclosure or denial of
│                       │       │                   service. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-416 
│                       │       ├ VendorSeverity   ╭ azure : 2 
│                       │       │                  ├ julia : 2 
│                       │       │                  ├ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                       │       │                  │        │           N/A:H 
│                       │       │                  │        ╰ V3Score : 5.3 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:26573 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-13595 
│                       │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2494101 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/c0186
│                       │       │                  │      f14fbdb02f64c8e0ba701ce727ea764ff4c 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-13595 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13595 
│                       │       ├ PublishedDate   : 2026-06-29T09:16:28.303Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T18:17:13.083Z 
│                       ├ [96]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1d64351d7011994dec7aefd9034647c3b047ec305eda535a82ee
│                       │       │                   74759d6ca364 
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
│                       │       ├ VendorSeverity   ╭ azure       : 2 
│                       │       │                  ├ bottlerocket: 2 
│                       │       │                  ├ julia       : 2 
│                       │       │                  ├ redhat      : 2 
│                       │       │                  ╰ ubuntu      : 2 
│                       │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                  │        │           N/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           N/A:N 
│                       │       │                           ╰ V3Score : 4.7 
│                       │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                       │       │                  │      6-27456 
│                       │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                       │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                       │       │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                       │       │                  │      toml 
│                       │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                       │       │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                       │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                       │       │                  │      /v2.41.4 
│                       │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                       │       │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                       │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                       │       │                  ├ [7]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                       ├ [97]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ac91a664596f71711d846093f7bb785460461cdb74a288b90661
│                       │       │                   155f12ff4800 
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
│                       │       │                  ├ photon: 2 
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
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-08-31T12:17:55.983Z 
│                       ├ [98]  ╭ VulnerabilityID : CVE-2026-53612 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53612 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b4b27390e8bf55150e0a3ec60f3e67bcfe3df4bacedcb496aad7
│                       │       │                   643df2c15c1a 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program when
│                       │       │                   applying post-mount ownership/mode changes 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry
│                       │       │                   uses the user option together with X-mount.owner,
│                       │       │                   X-mount.group, or X-mount.mode, mount(8) changes ownership
│                       │       │                   or permissions on the mount target after mounting without
│                       │       │                   re-verifying the path. A local unprivileged user can
│                       │       │                   exploit this Time-of-Check-Time-of-Use (TOCTOU) window by
│                       │       │                   swapping the target directory, redirecting the
│                       │       │                   ownership/permission change to an arbitrary file and
│                       │       │                   potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53612 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-g8wm-75wr-g2vh 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53612 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53612 
│                       ├ [99]  ╭ VulnerabilityID : CVE-2026-53613 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53613 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:690a9022c0de123afd2908aa5ff8b81a557b637c2b5f351d5480
│                       │       │                   92fedd713b05 
│                       │       ├ Title           : util-linux: util-linux: TOCTOU in the mount program via
│                       │       │                   ancestor directory swap on target path 
│                       │       ├ Description     : A flaw was found in util-linux. When an /etc/fstab entry is
│                       │       │                    configured with the user or users option, mount(8)
│                       │       │                   validates the target path before performing the mount
│                       │       │                   syscall, creating a Time-of-Check-Time-of-Use (TOCTOU)
│                       │       │                   window. A local unprivileged user with write access to an
│                       │       │                   ancestor directory of the mount target can swap that
│                       │       │                   directory to redirect the mount to an arbitrary root-owned
│                       │       │                   location, potentially escalating privileges to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53613 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-8gj5-72r3-428g 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53613 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53613 
│                       ├ [100] ╭ VulnerabilityID : CVE-2026-53614 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53614 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bafdc7b1866d235bd55fada57401e67246ec6ed2f7b7016dfcc6
│                       │       │                   6efee043a504 
│                       │       ├ Title           : util-linux: util-linux: SUID mount(8) allows nosuid/noexec
│                       │       │                   bypass via LIBMOUNT_FORCE_MOUNT2 
│                       │       ├ Description     : A flaw was found in util-linux. The mount(8) SUID binary
│                       │       │                   does not sanitize the LIBMOUNT_FORCE_MOUNT2 environment
│                       │       │                   variable before use. A local unprivileged user can set this
│                       │       │                    variable to force mount(8) to use the legacy two-step
│                       │       │                   mount(2) code path, which applies security restrictions
│                       │       │                   such as nosuid and noexec after the mount is already
│                       │       │                   active. During this window, an attacker can execute a SUID
│                       │       │                   binary from the mounted filesystem, allowing local
│                       │       │                   privilege escalation to root. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 7 
│                       │       ╰ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-53614 
│                       │                          ├ [1]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-67r7-8m5w-22wx 
│                       │                          ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-53614 
│                       │                          ├ [3]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-53614 
│                       ├ [101] ╭ VulnerabilityID : CVE-2026-53615 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ FixedVersion    : 2.41.3-3ubuntu2.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                       │       │                  │         8efe65d81e84be3a93f6d 
│                       │       │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                       │       │                            4900395b7ced286b86c9e 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53615 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:70e1aac3232323985f5e60431afcde5371e6272049127cba093f
│                       │       │                   f1a56f12f9f5 
│                       │       ├ Title           : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Description     : [Integer Overflow or Wraparound in
│                       │       │                   libblkid/src/partitions/dos.c] 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://github.com/util-linux/util-linux/security/adv
│                       │                          │      isories/GHSA-h4rw-gv36-wmp5 
│                       │                          ├ [1]: https://ubuntu.com/security/notices/USN-8702-1 
│                       │                          ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-53615 
│                       ╰ [102] ╭ VulnerabilityID : CVE-2026-27171 
│                               ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ PkgName         : zlib1g 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu
│                               │                  │       3?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                               │                  ╰ UID : e6f2cecd2b667912 
│                               ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ FixedVersion    : 1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a
│                               │                  │         8efe65d81e84be3a93f6d 
│                               │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf413
│                               │                            4900395b7ced286b86c9e 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:2a192e82f1ccbfb6148434cca451f01392a94098e30a0c30170b
│                               │                   bb38383830d8 
│                               ├ Title           : zlib: zlib: Denial of Service via infinite loop in CRC32
│                               │                   combine functions 
│                               ├ Description     : zlib before 1.3.2 allows CPU consumption via
│                               │                   crc32_combine64 and crc32_combine_gen64 because x2nmodp can
│                               │                    do right shifts within a loop that has no termination
│                               │                   condition. 
│                               ├ Severity        : LOW 
│                               ├ CweIDs           ─ [0]: CWE-1284 
│                               ├ VendorSeverity   ╭ amazon     : 1 
│                               │                  ├ azure      : 1 
│                               │                  ├ cbl-mariner: 1 
│                               │                  ├ julia      : 2 
│                               │                  ├ nvd        : 2 
│                               │                  ├ photon     : 2 
│                               │                  ├ redhat     : 1 
│                               │                  ╰ ubuntu     : 1 
│                               ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                               │                  │        │           N/A:H 
│                               │                  │        ╰ V3Score : 5.5 
│                               │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                               │                  │        │           N/A:H 
│                               │                  │        ╰ V3Score : 5.5 
│                               │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                               │                           │           N/A:L 
│                               │                           ╰ V3Score : 3.3 
│                               ├ References       ╭ [0] : https://7asecurity.com/blog/2026/02/zlib-7asecurity-
│                               │                  │       audit 
│                               │                  ├ [1] : https://7asecurity.com/blog/2026/02/zlib-7asecurity-
│                               │                  │       audit/ 
│                               │                  ├ [2] : https://7asecurity.com/reports/pentest-report-zlib-R
│                               │                  │       C1.1.pdf 
│                               │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-27171 
│                               │                  ├ [4] : https://github.com/advisories/GHSA-h858-mf2m-8jf4 
│                               │                  ├ [5] : https://github.com/madler/zlib/issues/904 
│                               │                  ├ [6] : https://github.com/madler/zlib/releases/tag/v1.3.2 
│                               │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-27171 
│                               │                  ├ [8] : https://ostif.org/zlib-audit-complete 
│                               │                  ├ [9] : https://ostif.org/zlib-audit-complete/ 
│                               │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-27171 
│                               ├ PublishedDate   : 2026-02-18T04:16:01.263Z 
│                               ╰ LastModifiedDate: 2026-06-17T10:26:47.357Z 
├ [1] ╭ Target  : Java 
│     ├ Class   : lang-pkgs 
│     ├ Type    : jar 
│     ╰ Packages 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-33818 
                        │     ├ VendorIDs        ─ [0]: GO-2026-5972 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:ff446247ab8a62e38d57961b7dbf49b9fa0da8bee3d7cf24a40826
                        │     │                   eccc9cb246 
                        │     ├ Title           : encoding/asn1: golang: Go encoding/asn1: Denial of Service
                        │     │                   via excessive recursion in Unmarshal 
                        │     ├ Description     : Enforce a recursion limit in Unmarshal to prevent stack
                        │     │                   exhaustion when parsing deeply-nested, recursive
                        │     │                   structures. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-400 
                        │     ├ VendorSeverity   ╭ alma       : 3 
                        │     │                  ├ amazon     : 3 
                        │     │                  ├ bitnami    : 3 
                        │     │                  ├ oracle-oval: 3 
                        │     │                  ├ redhat     : 3 
                        │     │                  ╰ rocky      : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:60305 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:60306 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-33818 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [22]: https://errata.almalinux.org/10/ALSA-2026-60306.html 
                        │     │                  ├ [23]: https://errata.rockylinux.org/RLSA-2026:60305 
                        │     │                  ├ [24]: https://go.dev/cl/814980 
                        │     │                  ├ [25]: https://go.dev/issue/80405 
                        │     │                  ├ [26]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-33818.html 
                        │     │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-60306-0.html 
                        │     │                  ├ [29]: https://nvd.nist.gov/vuln/detail/CVE-2026-33818 
                        │     │                  ├ [30]: https://pkg.go.dev/vuln/GO-2026-5972 
                        │     │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-33818 
                        │     ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
                        │     ╰ LastModifiedDate: 2026-08-14T16:16:55.317Z 
                        ├ [1] ╭ VulnerabilityID : CVE-2026-39821 
                        │     ├ VendorIDs        ─ [0]: GO-2026-5026 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:046be6d85247cf6f3b7375eb568eadc486a75e46ae332a1c85fa75
                        │     │                   379bbfe6b2 
                        │     ├ Title           : golang.org/x/net/idna: golang: net/http:
                        │     │                   golang.org/x/net/idna: Privilege escalation via incorrect
                        │     │                   Punycode label processing 
                        │     ├ Description     : The ToASCII and ToUnicode functions incorrectly accept
                        │     │                   Punycode-encoded labels that decode to an ASCII-only label.
                        │     │                   For example, ToUnicode("xn--example-.com") incorrectly
                        │     │                   returns the name "example.com" rather than an error. This
                        │     │                   behavior can lead to privilege escalation in programs using
                        │     │                   the idna package. For example, a program which performs
                        │     │                   privilege checks on the ASCII hostname may reject
                        │     │                   "example.com" but permit "xn--example-.com". If that program
                        │     │                   subsequently converts the ASCII hostname to Unicode, it will
                        │     │                   inadvertently permits access to the Unicode name
                        │     │                   "example.com". 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-1289 
                        │     ├ VendorSeverity   ╭ alma       : 3 
                        │     │                  ├ amazon     : 3 
                        │     │                  ├ azure      : 4 
                        │     │                  ├ oracle-oval: 3 
                        │     │                  ├ redhat     : 3 
                        │     │                  ├ rocky      : 3 
                        │     │                  ╰ ubuntu     : 2 
                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H/
                        │     │                           │           A:N 
                        │     │                           ╰ V3Score : 8.2 
                        │     ├ References       ╭ [0]  : https://access.redhat.com/errata/RHSA-2026:23262 
                        │     │                  ├ [1]  : https://access.redhat.com/errata/RHSA-2026:23264 
                        │     │                  ├ [2]  : https://access.redhat.com/errata/RHSA-2026:26546 
                        │     │                  ├ [3]  : https://access.redhat.com/errata/RHSA-2026:26547 
                        │     │                  ├ [4]  : https://access.redhat.com/errata/RHSA-2026:30650 
                        │     │                  ├ [5]  : https://access.redhat.com/errata/RHSA-2026:30651 
                        │     │                  ├ [6]  : https://access.redhat.com/errata/RHSA-2026:30853 
                        │     │                  ├ [7]  : https://access.redhat.com/errata/RHSA-2026:30854 
                        │     │                  ├ [8]  : https://access.redhat.com/errata/RHSA-2026:30855 
                        │     │                  ├ [9]  : https://access.redhat.com/errata/RHSA-2026:33155 
                        │     │                  ├ [10] : https://access.redhat.com/errata/RHSA-2026:33160 
                        │     │                  ├ [11] : https://access.redhat.com/errata/RHSA-2026:33163 
                        │     │                  ├ [12] : https://access.redhat.com/errata/RHSA-2026:33173 
                        │     │                  ├ [13] : https://access.redhat.com/errata/RHSA-2026:33183 
                        │     │                  ├ [14] : https://access.redhat.com/errata/RHSA-2026:33524 
                        │     │                  ├ [15] : https://access.redhat.com/errata/RHSA-2026:33531 
                        │     │                  ├ [16] : https://access.redhat.com/errata/RHSA-2026:34342 
                        │     │                  ├ [17] : https://access.redhat.com/errata/RHSA-2026:34357 
                        │     │                  ├ [18] : https://access.redhat.com/errata/RHSA-2026:34359 
                        │     │                  ├ [19] : https://access.redhat.com/errata/RHSA-2026:34364 
                        │     │                  ├ [20] : https://access.redhat.com/errata/RHSA-2026:34789 
                        │     │                  ├ [21] : https://access.redhat.com/errata/RHSA-2026:35826 
                        │     │                  ├ [22] : https://access.redhat.com/errata/RHSA-2026:35827 
                        │     │                  ├ [23] : https://access.redhat.com/errata/RHSA-2026:35828 
                        │     │                  ├ [24] : https://access.redhat.com/errata/RHSA-2026:35829 
                        │     │                  ├ [25] : https://access.redhat.com/errata/RHSA-2026:35830 
                        │     │                  ├ [26] : https://access.redhat.com/errata/RHSA-2026:35831 
                        │     │                  ├ [27] : https://access.redhat.com/errata/RHSA-2026:35993 
                        │     │                  ├ [28] : https://access.redhat.com/errata/RHSA-2026:35994 
                        │     │                  ├ [29] : https://access.redhat.com/errata/RHSA-2026:36105 
                        │     │                  ├ [30] : https://access.redhat.com/errata/RHSA-2026:36167 
                        │     │                  ├ [31] : https://access.redhat.com/errata/RHSA-2026:36207 
                        │     │                  ├ [32] : https://access.redhat.com/errata/RHSA-2026:36648 
                        │     │                  ├ [33] : https://access.redhat.com/errata/RHSA-2026:36651 
                        │     │                  ├ [34] : https://access.redhat.com/errata/RHSA-2026:36796 
                        │     │                  ├ [35] : https://access.redhat.com/errata/RHSA-2026:36797 
                        │     │                  ├ [36] : https://access.redhat.com/errata/RHSA-2026:36808 
                        │     │                  ├ [37] : https://access.redhat.com/errata/RHSA-2026:36820 
                        │     │                  ├ [38] : https://access.redhat.com/errata/RHSA-2026:36883 
                        │     │                  ├ [39] : https://access.redhat.com/errata/RHSA-2026:37387 
                        │     │                  ├ [40] : https://access.redhat.com/errata/RHSA-2026:37435 
                        │     │                  ├ [41] : https://access.redhat.com/errata/RHSA-2026:37436 
                        │     │                  ├ [42] : https://access.redhat.com/errata/RHSA-2026:38995 
                        │     │                  ├ [43] : https://access.redhat.com/errata/RHSA-2026:39005 
                        │     │                  ├ [44] : https://access.redhat.com/errata/RHSA-2026:39573 
                        │     │                  ├ [45] : https://access.redhat.com/errata/RHSA-2026:39879 
                        │     │                  ├ [46] : https://access.redhat.com/errata/RHSA-2026:40118 
                        │     │                  ├ [47] : https://access.redhat.com/errata/RHSA-2026:40262 
                        │     │                  ├ [48] : https://access.redhat.com/errata/RHSA-2026:40945 
                        │     │                  ├ [49] : https://access.redhat.com/errata/RHSA-2026:41019 
                        │     │                  ├ [50] : https://access.redhat.com/errata/RHSA-2026:41030 
                        │     │                  ├ [51] : https://access.redhat.com/errata/RHSA-2026:41031 
                        │     │                  ├ [52] : https://access.redhat.com/errata/RHSA-2026:41036 
                        │     │                  ├ [53] : https://access.redhat.com/errata/RHSA-2026:41055 
                        │     │                  ├ [54] : https://access.redhat.com/errata/RHSA-2026:41066 
                        │     │                  ├ [55] : https://access.redhat.com/errata/RHSA-2026:41928 
                        │     │                  ├ [56] : https://access.redhat.com/errata/RHSA-2026:41930 
                        │     │                  ├ [57] : https://access.redhat.com/errata/RHSA-2026:42043 
                        │     │                  ├ [58] : https://access.redhat.com/errata/RHSA-2026:42047 
                        │     │                  ├ [59] : https://access.redhat.com/errata/RHSA-2026:42048 
                        │     │                  ├ [60] : https://access.redhat.com/errata/RHSA-2026:42049 
                        │     │                  ├ [61] : https://access.redhat.com/errata/RHSA-2026:42050 
                        │     │                  ├ [62] : https://access.redhat.com/errata/RHSA-2026:42051 
                        │     │                  ├ [63] : https://access.redhat.com/errata/RHSA-2026:42078 
                        │     │                  ├ [64] : https://access.redhat.com/errata/RHSA-2026:42079 
                        │     │                  ├ [65] : https://access.redhat.com/errata/RHSA-2026:42080 
                        │     │                  ├ [66] : https://access.redhat.com/errata/RHSA-2026:42082 
                        │     │                  ├ [67] : https://access.redhat.com/errata/RHSA-2026:42132 
                        │     │                  ├ [68] : https://access.redhat.com/errata/RHSA-2026:42142 
                        │     │                  ├ [69] : https://access.redhat.com/errata/RHSA-2026:42146 
                        │     │                  ├ [70] : https://access.redhat.com/errata/RHSA-2026:42150 
                        │     │                  ├ [71] : https://access.redhat.com/errata/RHSA-2026:42151 
                        │     │                  ├ [72] : https://access.redhat.com/errata/RHSA-2026:42240 
                        │     │                  ├ [73] : https://access.redhat.com/errata/RHSA-2026:42644 
                        │     │                  ├ [74] : https://access.redhat.com/errata/RHSA-2026:42796 
                        │     │                  ├ [75] : https://access.redhat.com/errata/RHSA-2026:42852 
                        │     │                  ├ [76] : https://access.redhat.com/errata/RHSA-2026:43038 
                        │     │                  ├ [77] : https://access.redhat.com/errata/RHSA-2026:43052 
                        │     │                  ├ [78] : https://access.redhat.com/errata/RHSA-2026:43692 
                        │     │                  ├ [79] : https://access.redhat.com/errata/RHSA-2026:44622 
                        │     │                  ├ [80] : https://access.redhat.com/errata/RHSA-2026:44624 
                        │     │                  ├ [81] : https://access.redhat.com/errata/RHSA-2026:46395 
                        │     │                  ├ [82] : https://access.redhat.com/errata/RHSA-2026:47149 
                        │     │                  ├ [83] : https://access.redhat.com/errata/RHSA-2026:47735 
                        │     │                  ├ [84] : https://access.redhat.com/errata/RHSA-2026:47737 
                        │     │                  ├ [85] : https://access.redhat.com/errata/RHSA-2026:47952 
                        │     │                  ├ [86] : https://access.redhat.com/errata/RHSA-2026:49702 
                        │     │                  ├ [87] : https://access.redhat.com/errata/RHSA-2026:49712 
                        │     │                  ├ [88] : https://access.redhat.com/errata/RHSA-2026:50300 
                        │     │                  ├ [89] : https://access.redhat.com/errata/RHSA-2026:50843 
                        │     │                  ├ [90] : https://access.redhat.com/errata/RHSA-2026:51033 
                        │     │                  ├ [91] : https://access.redhat.com/errata/RHSA-2026:51112 
                        │     │                  ├ [92] : https://access.redhat.com/errata/RHSA-2026:51187 
                        │     │                  ├ [93] : https://access.redhat.com/errata/RHSA-2026:51194 
                        │     │                  ├ [94] : https://access.redhat.com/errata/RHSA-2026:51341 
                        │     │                  ├ [95] : https://access.redhat.com/errata/RHSA-2026:52826 
                        │     │                  ├ [96] : https://access.redhat.com/errata/RHSA-2026:53374 
                        │     │                  ├ [97] : https://access.redhat.com/errata/RHSA-2026:53412 
                        │     │                  ├ [98] : https://access.redhat.com/errata/RHSA-2026:53413 
                        │     │                  ├ [99] : https://access.redhat.com/errata/RHSA-2026:53415 
                        │     │                  ├ [100]: https://access.redhat.com/errata/RHSA-2026:53530 
                        │     │                  ├ [101]: https://access.redhat.com/errata/RHSA-2026:54191 
                        │     │                  ├ [102]: https://access.redhat.com/errata/RHSA-2026:54274 
                        │     │                  ├ [103]: https://access.redhat.com/errata/RHSA-2026:54283 
                        │     │                  ├ [104]: https://access.redhat.com/errata/RHSA-2026:54284 
                        │     │                  ├ [105]: https://access.redhat.com/errata/RHSA-2026:54285 
                        │     │                  ├ [106]: https://access.redhat.com/errata/RHSA-2026:54286 
                        │     │                  ├ [107]: https://access.redhat.com/errata/RHSA-2026:54287 
                        │     │                  ├ [108]: https://access.redhat.com/errata/RHSA-2026:54395 
                        │     │                  ├ [109]: https://access.redhat.com/errata/RHSA-2026:54401 
                        │     │                  ├ [110]: https://access.redhat.com/errata/RHSA-2026:54435 
                        │     │                  ├ [111]: https://access.redhat.com/errata/RHSA-2026:54441 
                        │     │                  ├ [112]: https://access.redhat.com/errata/RHSA-2026:54531 
                        │     │                  ├ [113]: https://access.redhat.com/errata/RHSA-2026:54580 
                        │     │                  ├ [114]: https://access.redhat.com/errata/RHSA-2026:54757 
                        │     │                  ├ [115]: https://access.redhat.com/errata/RHSA-2026:56143 
                        │     │                  ├ [116]: https://access.redhat.com/errata/RHSA-2026:56223 
                        │     │                  ├ [117]: https://access.redhat.com/errata/RHSA-2026:56340 
                        │     │                  ├ [118]: https://access.redhat.com/errata/RHSA-2026:56431 
                        │     │                  ├ [119]: https://access.redhat.com/errata/RHSA-2026:57194 
                        │     │                  ├ [120]: https://access.redhat.com/errata/RHSA-2026:57541 
                        │     │                  ├ [121]: https://access.redhat.com/errata/RHSA-2026:57649 
                        │     │                  ├ [122]: https://access.redhat.com/errata/RHSA-2026:57845 
                        │     │                  ├ [123]: https://access.redhat.com/errata/RHSA-2026:59546 
                        │     │                  ├ [124]: https://access.redhat.com/errata/RHSA-2026:59549 
                        │     │                  ├ [125]: https://access.redhat.com/errata/RHSA-2026:59562 
                        │     │                  ├ [126]: https://access.redhat.com/errata/RHSA-2026:60315 
                        │     │                  ├ [127]: https://access.redhat.com/errata/RHSA-2026:60354 
                        │     │                  ├ [128]: https://access.redhat.com/errata/RHSA-2026:60387 
                        │     │                  ├ [129]: https://access.redhat.com/errata/RHSA-2026:60520 
                        │     │                  ├ [130]: https://access.redhat.com/errata/RHSA-2026:61245 
                        │     │                  ├ [131]: https://access.redhat.com/errata/RHSA-2026:61253 
                        │     │                  ├ [132]: https://access.redhat.com/security/cve/CVE-2026-39821 
                        │     │                  ├ [133]: https://bugzilla.redhat.com/2480756 
                        │     │                  ├ [134]: https://bugzilla.redhat.com/2484207 
                        │     │                  ├ [135]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [136]: https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
                        │     │                  ├ [137]: https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
                        │     │                  ├ [138]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [139]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-27145 
                        │     │                  ├ [140]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-39821 
                        │     │                  ├ [141]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-39822 
                        │     │                  ├ [142]: https://errata.almalinux.org/10/ALSA-2026-46395.html 
                        │     │                  ├ [143]: https://errata.rockylinux.org/RLSA-2026:38995 
                        │     │                  ├ [144]: https://github.com/golang/go/issues/78760 
                        │     │                  ├ [145]: https://go.dev/cl/767220 
                        │     │                  ├ [146]: https://go.dev/issue/78760 
                        │     │                  ├ [147]: https://groups.google.com/g/golang-announce/c/94pEorn
                        │     │                  │        pRlI 
                        │     │                  ├ [148]: https://groups.google.com/g/golang-announce/c/iI-mYSI
                        │     │                  │        0lu8 
                        │     │                  ├ [149]: https://linux.oracle.com/cve/CVE-2026-39821.html 
                        │     │                  ├ [150]: https://linux.oracle.com/errata/ELSA-2026-46395.html 
                        │     │                  ├ [151]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
                        │     │                  ├ [152]: https://pkg.go.dev/vuln/GO-2026-5026 
                        │     │                  ├ [153]: https://security.access.redhat.com/data/csaf/v2/vex/2
                        │     │                  │        026/cve-2026-39821.json 
                        │     │                  ├ [154]: https://ubuntu.com/security/notices/USN-8416-1 
                        │     │                  ╰ [155]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
                        │     ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
                        │     ╰ LastModifiedDate: 2026-08-31T13:18:06.777Z 
                        ├ [2] ╭ VulnerabilityID : CVE-2026-46600 
                        │     ├ VendorIDs        ─ [0]: GO-2026-5942 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:139726845f7aac493770c5e10263df61da539dd7fc53208bd0c6ee
                        │     │                   b379b3ccff 
                        │     ├ Title           : golang.org/x/net/dns/dnsmessage:
                        │     │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
                        │     │                   invalid DNS record parsing 
                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
                        │     │                   of a parameter value overflows the message buffer. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-125 
                        │     ├ VendorSeverity   ╭ azure  : 2 
                        │     │                  ├ bitnami: 3 
                        │     │                  ╰ redhat : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46600 
                        │     │                  ├ [1]: https://go.dev/cl/786345 
                        │     │                  ├ [2]: https://go.dev/issue/79795 
                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/94pEornpRlI 
                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-46600 
                        │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5942 
                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-46600 
                        │     ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
                        │     ╰ LastModifiedDate: 2026-08-14T16:16:55.673Z 
                        ├ [3] ╭ VulnerabilityID : CVE-2026-56853 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6089 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:c98cbd831fa54427a2d1ddae9294fdb06f9c5e2e0f7c990cfc55c7
                        │     │                   78284d91f1 
                        │     ├ Title           : net/http: golang: Go net/http: Unencrypted HTTP/2 connections
                        │     │                    vulnerable to Denial of Service 
                        │     ├ Description     : When a server is configured to support unencrypted HTTP/2, it
                        │     │                    reads a few bytes from each new connection to see if they
                        │     │                   contain the HTTP/2 client preface. ReadHeaderTimeout is
                        │     │                   unexpectedly not being applied when doing this. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-770 
                        │     ├ VendorSeverity   ╭ alma       : 3 
                        │     │                  ├ amazon     : 3 
                        │     │                  ├ bitnami    : 3 
                        │     │                  ├ oracle-oval: 3 
                        │     │                  ├ redhat     : 3 
                        │     │                  ╰ rocky      : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:60305 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:60306 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56853 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [22]: https://errata.almalinux.org/10/ALSA-2026-60306.html 
                        │     │                  ├ [23]: https://errata.rockylinux.org/RLSA-2026:60305 
                        │     │                  ├ [24]: https://go.dev/cl/795540 
                        │     │                  ├ [25]: https://go.dev/issue/80205 
                        │     │                  ├ [26]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-56853.html 
                        │     │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-60306-0.html 
                        │     │                  ├ [29]: https://nvd.nist.gov/vuln/detail/CVE-2026-56853 
                        │     │                  ├ [30]: https://pkg.go.dev/vuln/GO-2026-6089 
                        │     │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-56853 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
                        │     ╰ LastModifiedDate: 2026-08-14T16:16:57.21Z 
                        ├ [4] ╭ VulnerabilityID : CVE-2026-56858 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6091 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:2e6bff83ab29a9a8d5f0c11469e81d5500764f3409f574785d376a
                        │     │                   89b36783ce 
                        │     ├ Title           : html/template: golang: Go html/template: Cross-Site Scripting
                        │     │                    via pathological input 
                        │     ├ Description     : Previously, pathological inputs could close an unescaped '/'
                        │     │                   early, allowing for attack-controlled data to inject
                        │     │                   arbitrary content, potentially leading to XSS. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-79 
                        │     ├ VendorSeverity   ╭ alma       : 3 
                        │     │                  ├ amazon     : 3 
                        │     │                  ├ bitnami    : 2 
                        │     │                  ├ oracle-oval: 3 
                        │     │                  ├ redhat     : 3 
                        │     │                  ╰ rocky      : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
                        │     │                  │         │           /A:N 
                        │     │                  │         ╰ V3Score : 6.1 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
                        │     │                            │           /A:N 
                        │     │                            ╰ V3Score : 8.1 
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:60305 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:60306 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56858 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [22]: https://errata.almalinux.org/10/ALSA-2026-60306.html 
                        │     │                  ├ [23]: https://errata.rockylinux.org/RLSA-2026:60305 
                        │     │                  ├ [24]: https://go.dev/cl/807100 
                        │     │                  ├ [25]: https://go.dev/issue/80435 
                        │     │                  ├ [26]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-56858.html 
                        │     │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-60306-0.html 
                        │     │                  ├ [29]: https://nvd.nist.gov/vuln/detail/CVE-2026-56858 
                        │     │                  ├ [30]: https://pkg.go.dev/vuln/GO-2026-6091 
                        │     │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-56858 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
                        │     ╰ LastModifiedDate: 2026-08-14T16:16:57.367Z 
                        ├ [5] ╭ VulnerabilityID : CVE-2026-56859 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6088 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:025a21b2968a147ba28017b173f8263a355d965c7a12b3e3a9a90c
                        │     │                   b21a4f5847 
                        │     ├ Title           : encoding/xml: golang: Go: Denial of Service via XML decoding
                        │     │                   recursion depth issue 
                        │     ├ Description     : Previously, DecodeElement would reset the depth counter
                        │     │                   causing it to never fire; this could lead to stack
                        │     │                   exhaustion. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-770 
                        │     ├ VendorSeverity   ╭ alma       : 3 
                        │     │                  ├ amazon     : 3 
                        │     │                  ├ bitnami    : 3 
                        │     │                  ├ oracle-oval: 3 
                        │     │                  ├ redhat     : 3 
                        │     │                  ╰ rocky      : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 7.5 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:60305 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:60306 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56859 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [22]: https://errata.almalinux.org/10/ALSA-2026-60306.html 
                        │     │                  ├ [23]: https://errata.rockylinux.org/RLSA-2026:60305 
                        │     │                  ├ [24]: https://go.dev/cl/803320 
                        │     │                  ├ [25]: https://go.dev/issue/80481 
                        │     │                  ├ [26]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-56859.html 
                        │     │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-60306-0.html 
                        │     │                  ├ [29]: https://nvd.nist.gov/vuln/detail/CVE-2026-56859 
                        │     │                  ├ [30]: https://pkg.go.dev/vuln/GO-2026-6088 
                        │     │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-56859 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
                        │     ╰ LastModifiedDate: 2026-08-14T16:16:57.523Z 
                        ├ [6] ╭ VulnerabilityID : CVE-2026-56860 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6218 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                        │     │                  │         fe65d81e84be3a93f6d 
                        │     │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                        │     │                            00395b7ced286b86c9e 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:4cafbbb7ff9ac666d0e76d954986c07246ecc8a85fb1d98c4456a0
                        │     │                   05de4165ed 
                        │     ├ Title           : net/url: golang: golang net/url: Denial of Service from
                        │     │                   quadratic complexity in path resolution 
                        │     ├ Description     : Previously, resolving relative paths containing parent
                        │     │                   directory ('..') segments performed string conversions and
                        │     │                   buffer rewrites on each step, resulting in quadratic time
                        │     │                   complexity and high memory allocation overhead. Now, path
                        │     │                   resolution operates on a byte buffer using index-based
                        │     │                   backtracking for '..' segments, eliminating the quadratic
                        │     │                   time complexity and significantly reducing memory
                        │     │                   allocations. 
                        │     ├ Severity        : HIGH 
                        │     ├ CweIDs           ─ [0]: CWE-407 
                        │     ├ VendorSeverity   ╭ alma       : 3 
                        │     │                  ├ amazon     : 3 
                        │     │                  ├ bitnami    : 2 
                        │     │                  ├ oracle-oval: 3 
                        │     │                  ├ redhat     : 3 
                        │     │                  ╰ rocky      : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 5.9 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:60305 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:60306 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56860 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [22]: https://errata.almalinux.org/10/ALSA-2026-60306.html 
                        │     │                  ├ [23]: https://errata.rockylinux.org/RLSA-2026:60305 
                        │     │                  ├ [24]: https://go.dev/cl/803681 
                        │     │                  ├ [25]: https://go.dev/issue/80494 
                        │     │                  ├ [26]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-56860.html 
                        │     │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-60306-0.html 
                        │     │                  ├ [29]: https://nvd.nist.gov/vuln/detail/CVE-2026-56860 
                        │     │                  ├ [30]: https://pkg.go.dev/vuln/GO-2026-6218 
                        │     │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-56860 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
                        │     ╰ LastModifiedDate: 2026-08-14T17:19:13.91Z 
                        ╰ [7] ╭ VulnerabilityID : CVE-2026-56862 
                              ├ VendorIDs        ─ [0]: GO-2026-6090 
                              ├ PkgID           : stdlib@v1.26.5 
                              ├ PkgName         : stdlib 
                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                              │                  ╰ UID : 26d7064c5de1c97a 
                              ├ InstalledVersion: v1.26.5 
                              ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                              ├ Status          : fixed 
                              ├ Layer            ╭ Digest: sha256:1a68c327f00534595cdb596f1385006b90a1205334a8e
                              │                  │         fe65d81e84be3a93f6d 
                              │                  ╰ DiffID: sha256:45898791d2454206c6a7c15062ccf6c3763b3aaf41349
                              │                            00395b7ced286b86c9e 
                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
                              ├ DataSource       ╭ ID  : govulndb 
                              │                  ├ Name: The Go Vulnerability Database 
                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
                              ├ Fingerprint     : sha256:458c55cd4c1be7a19862efb7d6ff551f7f69ea9be6febbb81e9b8b
                              │                   7fc731ee0d 
                              ├ Title           : crypto/tls: golang: Golang crypto/tls: Denial of Service via
                              │                   indefinite KeyUpdate messages 
                              ├ Description     : Handshake messages, such as KeyUpdate, are always considered
                              │                   as state-advancing, regardless of whether a handshake has
                              │                   been completed or not. As a result, a malicious client can
                              │                   keep sending KeyUpdate messages to force the server to keep
                              │                   performing key derivation operations indefinitely. 
                              ├ Severity        : HIGH 
                              ├ CweIDs           ─ [0]: CWE-770 
                              ├ VendorSeverity   ╭ alma       : 3 
                              │                  ├ amazon     : 3 
                              │                  ├ bitnami    : 3 
                              │                  ├ oracle-oval: 3 
                              │                  ├ redhat     : 3 
                              │                  ╰ rocky      : 3 
                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                              │                  │         │           /A:H 
                              │                  │         ╰ V3Score : 7.5 
                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                              │                            │           /A:H 
                              │                            ╰ V3Score : 7.5 
                              ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:60305 
                              │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:60306 
                              │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56862 
                              │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                              │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                              │                  ├ [5] : https://bugzilla.redhat.com/2515827 
                              │                  ├ [6] : https://bugzilla.redhat.com/2515838 
                              │                  ├ [7] : https://bugzilla.redhat.com/2515839 
                              │                  ├ [8] : https://bugzilla.redhat.com/2515840 
                              │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                              │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                              │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                              │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                              │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                              │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                              │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
                              │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-33818 
                              │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56853 
                              │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56858 
                              │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56859 
                              │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56860 
                              │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56862 
                              │                  ├ [22]: https://errata.almalinux.org/10/ALSA-2026-60306.html 
                              │                  ├ [23]: https://errata.rockylinux.org/RLSA-2026:60305 
                              │                  ├ [24]: https://go.dev/cl/804261 
                              │                  ├ [25]: https://go.dev/issue/80528 
                              │                  ├ [26]: https://groups.google.com/g/golang-announce/c/94pEornp
                              │                  │       RlI 
                              │                  ├ [27]: https://linux.oracle.com/cve/CVE-2026-56862.html 
                              │                  ├ [28]: https://linux.oracle.com/errata/ELSA-2026-60306-0.html 
                              │                  ├ [29]: https://nvd.nist.gov/vuln/detail/CVE-2026-56862 
                              │                  ├ [30]: https://pkg.go.dev/vuln/GO-2026-6090 
                              │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-56862 
                              ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
                              ╰ LastModifiedDate: 2026-08-14T16:16:57.717Z 
```
