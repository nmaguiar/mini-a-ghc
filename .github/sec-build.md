```yaml
╭ [0] ╭ Target         : nmaguiar/mini-a-ghc:build (ubuntu 26.04) 
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
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3bb33a650cbb96e6ac624073a5d97ad1a405ee6b8df91f967e74
│                       │       │                   731bac116ad0 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [1]   ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 35a8976635e225e2 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:46d8c3fe35a1e093443edb05491b248342df259c8ee31ba13edb
│                       │       │                   73300fcb784d 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [2]   ╭ VulnerabilityID : CVE-2026-11856 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 314af518b9d82421 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11856 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:96d2327ed96c7b02bf26ca35d254715a0652ee7bde8b9be03891
│                       │       │                   26581b8f07e1 
│                       │       ├ Title           : Successfully using libcurl to do a transfer to a specific
│                       │       │                   HTTP origin  ... 
│                       │       ├ Description     : Successfully using libcurl to do a transfer to a specific
│                       │       │                   HTTP origin
│                       │       │                   (`hostA`) with **Digest** authentication and then changing
│                       │       │                   the origin to a
│                       │       │                   different one (`hostB`) for a second transfer, reusing the
│                       │       │                   same handle, makes
│                       │       │                   libcurl wrongly pass on the  `Authorization:` header field
│                       │       │                   meant for `hostA`,
│                       │       │                   to `hostB`. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11856.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11856.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11856.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3793260 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11856 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.973Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:54.983Z 
│                       ├ [3]   ╭ VulnerabilityID : CVE-2026-10536 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 314af518b9d82421 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10536 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:740bf81388523d5ae64bba9c9e12fee102f8fb2c92102237f41f
│                       │       │                   91e457d8ef3f 
│                       │       ├ Title           : A use-after-free vulnerability exists in libcurl when an
│                       │       │                   application c ... 
│                       │       ├ Description     : A use-after-free vulnerability exists in libcurl when an
│                       │       │                   application
│                       │       │                   configures an HTTP/2 stream-dependency tree via
│                       │       │                   `CURLOPT_STREAM_DEPENDS` or
│                       │       │                   `CURLOPT_STREAM_DEPENDS_E`, subsequently invokes
│                       │       │                   `curl_easy_reset()`, and
│                       │       │                   finally terminates the handle with `curl_easy_cleanup()`.
│                       │       │                   During this final
│                       │       │                   cleanup phase, libcurl attempts to access and modify an
│                       │       │                   internal structure
│                       │       │                   that was already freed during the reset operation. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-10536.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-10536.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-10536.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3751697 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-10536 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.563Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:54.473Z 
│                       ├ [4]   ╭ VulnerabilityID : CVE-2026-11352 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 314af518b9d82421 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:26a9a4f7c2e643aa35d982c9879c73779b265045bdb52738a467
│                       │       │                   e2ac9ef5b2b3 
│                       │       ├ Title           : An issue in curl\u2019s QUIC UDP receive function allows a
│                       │       │                   malicious H ... 
│                       │       ├ Description     : An issue in curl’s QUIC UDP receive function allows a
│                       │       │                   malicious HTTP/3 server
│                       │       │                   to trigger a remote denial of service against a curl or
│                       │       │                   libcurl client.
│                       │       │                   Because the helper function discards zero-length UDP
│                       │       │                   datagrams before counting
│                       │       │                   them toward the per-call packet budget, a connected QUIC
│                       │       │                   peer can continuously
│                       │       │                   stream empty datagrams to indefinitely stall the client. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11352.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11352.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11352.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3783438 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11352 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.693Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:54.843Z 
│                       ├ [5]   ╭ VulnerabilityID : CVE-2026-11564 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 314af518b9d82421 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11564 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:32d74c21a71f7b44d88eba5ba9103535edc26ec841b0098cfb80
│                       │       │                   b7f32253a5fd 
│                       │       ├ Title           : libcurl keeps previously used connections in a connection
│                       │       │                   pool for sub ... 
│                       │       ├ Description     : libcurl keeps previously used connections in a connection
│                       │       │                   pool for subsequent
│                       │       │                   transfers to reuse if one of them matches the setup.
│                       │       │                   
│                       │       │                   An easy handle that first uses default native CA trust can
│                       │       │                   continue trusting
│                       │       │                   the native platform store after the application switches
│                       │       │                   that same handle to
│                       │       │                   custom CA material for a later transfer. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11564.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11564.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11564.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3788984 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11564 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.79Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T18:20:47.007Z 
│                       ├ [6]   ╭ VulnerabilityID : CVE-2026-11586 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 314af518b9d82421 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11586 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ef4b57ac1831f8947605cced30e92f9d00efca43b127dac9e7f7
│                       │       │                   e26ed7fdc23f 
│                       │       ├ Title           : By default, curl automatically responds to WebSocket PING
│                       │       │                   frames. Beca ... 
│                       │       ├ Description     : By default, curl automatically responds to WebSocket PING
│                       │       │                   frames. Because curl
│                       │       │                   lacks an upper bound on memory allocation for
│                       │       │                   unacknowledged frames, a
│                       │       │                   malicious server can exhaust all available memory by
│                       │       │                   flooding curl with rapid,
│                       │       │                   sequential PING messages. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11586.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11586.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11586.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3788931 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11586 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.883Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T18:20:47.007Z 
│                       ├ [7]   ╭ VulnerabilityID : CVE-2026-12064 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 314af518b9d82421 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-12064 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8c7c11512d838e8711de79c39d884cec38a60baffbef2b59a7e2
│                       │       │                   95f14d7815ab 
│                       │       ├ Title           : When a user invokes curl using a schemeless URL combined
│                       │       │                   with `--proto ... 
│                       │       ├ Description     : When a user invokes curl using a schemeless URL combined
│                       │       │                   with
│                       │       │                   `--proto-default` sftp (or scp), a disconnect occurs
│                       │       │                   between the tool layer
│                       │       │                   and libcurl. The tool layer incorrectly infers the URL
│                       │       │                   scheme, which
│                       │       │                   erroneously bypasses the initialization of critical SSH
│                       │       │                   security options like
│                       │       │                   CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256 and
│                       │       │                   CURLOPT_SSH_KNOWNHOSTS. Conversely, the
│                       │       │                   libcurl runtime successfully honors
│                       │       │                   CURLOPT_DEFAULT_PROTOCOL and establishes
│                       │       │                   the connection via SFTP/SCP as specified. Because the tool
│                       │       │                   layer skipped the
│                       │       │                   security configuration, these SSH host verification options
│                       │       │                    are silently
│                       │       │                   omitted, causing curl to connect to an unverified SSH
│                       │       │                   remote host without
│                       │       │                   throwing an error. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-12064.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-12064.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-12064.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3797526 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-12064 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:24.217Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:55.27Z 
│                       ├ [8]   ╭ VulnerabilityID : CVE-2026-41991 
│                       │       ├ PkgID           : gzip@1.14-1~exp2ubuntu1 
│                       │       ├ PkgName         : gzip 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gzip@1.14-1~exp2ubuntu1?arch=amd64&di
│                       │       │                  │       stro=ubuntu-26.04 
│                       │       │                  ╰ UID : a87afd116e85de52 
│                       │       ├ InstalledVersion: 1.14-1~exp2ubuntu1 
│                       │       ├ FixedVersion    : 1.14-1~exp2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41991 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:78e20b544237dcd4f219bab7b3c49bf00ba33cc8b8cdd593c39e
│                       │       │                   4418fa39f3d1 
│                       │       ├ Title           : gzip: gzip: Arbitrary file overwrite via insecure temporary
│                       │       │                    file handling in gzexe utility 
│                       │       ├ Description     : GNU gzip contains a vulnerability in the gzexe utility
│                       │       │                   related to insecure temporary file handling. When the
│                       │       │                   mktemp utility is not available in the user’s PATH, gzexe
│                       │       │                   falls back to constructing a temporary file path based
│                       │       │                   solely on the process ID (PID). This predictable filename
│                       │       │                   is created without exclusive access or existence checks.
│                       │       │                   A local attacker can pre‑create the predicted temporary
│                       │       │                   file path as a symbolic link pointing to an arbitrary file
│                       │       │                   writable by the victim. When gzexe runs, it follows the
│                       │       │                   symlink and overwrites the target file, resulting in a
│                       │       │                   time‑of‑check to time‑of‑use (TOCTOU) condition that allows
│                       │       │                    arbitrary file overwrite.
│                       │       │                   
│                       │       │                   This issue has been fixed in the commit
│                       │       │                   4e6f8b24ab823146ab8776f0b7fe486ab34d4269 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-377 
│                       │       ├ VendorSeverity   ╭ nvd   : 2 
│                       │       │                  ├ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:
│                       │       │                  │        │           H/A:N 
│                       │       │                  │        ╰ V3Score : 4.7 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 6 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41991 
│                       │       │                  ├ [1]: https://cert.pl/en/posts/2026/04/CVE-2026-41991/ 
│                       │       │                  ├ [2]: https://cgit.git.savannah.gnu.org/cgit/gzip.git/commi
│                       │       │                  │      t/?id=4e6f8b24ab823146ab8776f0b7fe486ab34d4269 
│                       │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41991 
│                       │       │                  ├ [4]: https://ubuntu.com/security/notices/USN-8512-1 
│                       │       │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-41991 
│                       │       │                  ╰ [6]: https://www.gnu.org/software/gzip/ 
│                       │       ├ PublishedDate   : 2026-06-29T12:16:29.77Z 
│                       │       ╰ LastModifiedDate: 2026-07-01T14:02:24.45Z 
│                       ├ [9]   ╭ VulnerabilityID : CVE-2026-41992 
│                       │       ├ PkgID           : gzip@1.14-1~exp2ubuntu1 
│                       │       ├ PkgName         : gzip 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/gzip@1.14-1~exp2ubuntu1?arch=amd64&di
│                       │       │                  │       stro=ubuntu-26.04 
│                       │       │                  ╰ UID : a87afd116e85de52 
│                       │       ├ InstalledVersion: 1.14-1~exp2ubuntu1 
│                       │       ├ FixedVersion    : 1.14-1~exp2ubuntu1.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41992 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:23a9719e371e01cdd7b9ad8344d10c19dc483387866ea66dd79f
│                       │       │                   304d8ead31d5 
│                       │       ├ Title           : GNU gzip contains a global buffer overflow vulnerability in
│                       │       │                    the LZH de ... 
│                       │       ├ Description     : GNU gzip contains a global buffer overflow vulnerability in
│                       │       │                    the LZH decompression logic caused by improper reuse of
│                       │       │                   shared global state between different decompression formats
│                       │       │                    within a single execution. GNU gzip maintains a global
│                       │       │                   array that is shared across the LZ77, LZW, and LZH
│                       │       │                   decompression routines and is not reinitialized between
│                       │       │                   files processed in the same invocation.
│                       │       │                   By decompressing a specially crafted LZW file followed by a
│                       │       │                    specially crafted LZH file in a single gzip -d command, an
│                       │       │                    attacker can poison the shared global state and
│                       │       │                   subsequently trigger an out‑of‑bounds read in the LZH
│                       │       │                   decoder. The LZH decompression logic follows stale values
│                       │       │                   left in the shared array, causing reads past the end of the
│                       │       │                    allocated global buffer.
│                       │       │                   
│                       │       │                   This issue has been fixed in the commit
│                       │       │                   63dbf6b3b9e6e781df1a6a64e609b10e23969681 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-126 
│                       │       ├ VendorSeverity   ╭ nvd   : 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N 
│                       │       │                        ╰ V3Score : 7.5 
│                       │       ├ References       ╭ [0]: https://cert.pl/en/posts/2026/04/CVE-2026-41991/ 
│                       │       │                  ├ [1]: https://cgit.git.savannah.gnu.org/cgit/gzip.git/commi
│                       │       │                  │      t/?id=63dbf6b3b9e6e781df1a6a64e609b10e23969681 
│                       │       │                  ├ [2]: https://ubuntu.com/security/notices/USN-8512-1 
│                       │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-41992 
│                       │       │                  ╰ [4]: https://www.gnu.org/software/gzip/ 
│                       │       ├ PublishedDate   : 2026-06-29T12:16:29.94Z 
│                       │       ╰ LastModifiedDate: 2026-07-01T14:02:20.173Z 
│                       ├ [10]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0316dc884e93081bab15c17f9324e79a2f8f9c852580f16044d6
│                       │       │                   1a190c3c45f3 
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
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8d75813fa701a85a2041f62f83407be67c4b8c893420def6a809
│                       │       │                   3134fcb510e5 
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
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f29165b4ffb1f1787d7f3916067cce4f0ae15b02e6b95b710e6d
│                       │       │                   082d338d5f8b 
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
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6106f13ba89e5898ac27ac8515133c4cf84e79b7362745a3df3e
│                       │       │                   0bd7b2d7cda5 
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
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7aef3bcfa024fb994bccd7caa8074dd881d9664cd37886b0dff3
│                       │       │                   5e304f7c1135 
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
│                       ├ [15]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f63a0a78e3cac3a3 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9de7057c5adb7c01fd5c1f69a0e4ee9d57fdbbfd81cf773f59be
│                       │       │                   36a4962d0523 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [16]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f63a0a78e3cac3a3 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:093d8c8f47a785dce4f7a69e0650427dbd8549005b2006392447
│                       │       │                   d4383bca33ab 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [17]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c25749f7410d19f935b13663b8067fd0953301203f2f2bae38d8
│                       │       │                   e1e2ceef4539 
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
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20594 
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
│                       │       │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-20594.html 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:55:54.12Z 
│                       ├ [18]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:790283f6261870b060818a3c4332abcfa1aa895f67259de678a9
│                       │       │                   e7ba40ab6bec 
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
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
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
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4437.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-20597.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │       │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.227Z 
│                       ├ [19]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:76d6cebea85f46c19abbf1f6f0b38d615d5a0db5fc0cccaf561c
│                       │       │                   58985b180b3a 
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
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
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
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4438.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-20597.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │       │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.367Z 
│                       ├ [20]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:65eefead3c7eea8164aa55a132d053e16ffb710c39cad0ffc191
│                       │       │                   6e35350c58fa 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:01.13Z 
│                       ├ [21]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:726213f0b2011654b24e3fe873baa0a174d290ccc05003a8934d
│                       │       │                   b4154b57ea77 
│                       │       ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                       │       │                   read via crafted DNS response 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.0.1 to version
│                       │       │                   2.43 fail to validate the RDATA content against the RDATA
│                       │       │                   length in a DNS response when processing A6, CERT, LOC,
│                       │       │                   TKEY or TSIG records, which may allow an attacker to craft
│                       │       │                   a DNS response, causing a target application to crash or
│                       │       │                   read uninitialized memory.
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
│                       │       ╰ LastModifiedDate: 2026-06-19T21:17:02.62Z 
│                       ├ [22]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e87d2c3a84a851c40f8ac34fed0f6f164abbe585600a9afc31e5
│                       │       │                   c3912029829f 
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
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20594 
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
│                       │       │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-20594.html 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:55:54.12Z 
│                       ├ [23]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5d70229aaa7d5e24de577d67ed115657b7522b162520ee02b1c0
│                       │       │                   fb2ac99d6bff 
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
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
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
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4437.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-20597.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │       │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.227Z 
│                       ├ [24]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8d8e95326542f0710b1f0725b5273e3534d3bb7f1ea0262ab6b1
│                       │       │                   9b4f39ca5123 
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
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
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
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4438.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-20597.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │       │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.367Z 
│                       ├ [25]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4c6cc75d573993d5d3f7ef4bc7ad9010daaeec35612899ba70b1
│                       │       │                   5fd95c5c550b 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:01.13Z 
│                       ├ [26]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6bdaf52e844bc6bf2715704fbb457fdbbdd2e554a732552f4954
│                       │       │                   6a7cdadd3e02 
│                       │       ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                       │       │                   read via crafted DNS response 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.0.1 to version
│                       │       │                   2.43 fail to validate the RDATA content against the RDATA
│                       │       │                   length in a DNS response when processing A6, CERT, LOC,
│                       │       │                   TKEY or TSIG records, which may allow an attacker to craft
│                       │       │                   a DNS response, causing a target application to crash or
│                       │       │                   read uninitialized memory.
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
│                       │       ╰ LastModifiedDate: 2026-06-19T21:17:02.62Z 
│                       ├ [27]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2c5cb59c1eb7955df3e741aa6a13320797ac6d3cb3e81506f787
│                       │       │                   099a68560356 
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
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20594 
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
│                       │       │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-20594.html 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:55:54.12Z 
│                       ├ [28]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f760b920fd3e484037a313d21cba4379beb9c9135e1d49e997f9
│                       │       │                   55c8d5f01d60 
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
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
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
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4437.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-20597.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                       │       │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.227Z 
│                       ├ [29]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:64e823006ba14cfae39cd981a5cf29bd27d13967dc33f9d63795
│                       │       │                   19dca090749c 
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
│                       │       ├ VendorSeverity   ╭ alma       : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ oracle-oval: 2 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 1 
│                       │       │                  ├ rocky      : 2 
│                       │       │                  ╰ ubuntu     : 2 
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
│                       │       │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4438.html 
│                       │       │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-20597.html 
│                       │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                       │       │                  ├ [15]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                       │       │                  ├ [16]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                       │       │                  ╰ [17]: https://www.openwall.com/lists/oss-security/2026/03/
│                       │       │                          23/2 
│                       │       ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.367Z 
│                       ├ [30]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7cf8e81b577a9dd4f2401ee9a150e5ed0da88660463cacbfdb76
│                       │       │                   7720a993edcb 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:01.13Z 
│                       ├ [31]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:057039a193418e0191266f248f9745f4c9f071860659abedcf8b
│                       │       │                   ae63fd621a10 
│                       │       ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                       │       │                   read via crafted DNS response 
│                       │       ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                       │       │                   fp_nquery in the GNU C Library version 2.0.1 to version
│                       │       │                   2.43 fail to validate the RDATA content against the RDATA
│                       │       │                   length in a DNS response when processing A6, CERT, LOC,
│                       │       │                   TKEY or TSIG records, which may allow an attacker to craft
│                       │       │                   a DNS response, causing a target application to crash or
│                       │       │                   read uninitialized memory.
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
│                       │       ╰ LastModifiedDate: 2026-06-19T21:17:02.62Z 
│                       ├ [32]  ╭ VulnerabilityID : CVE-2026-11856 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fc536f6734a16a42 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11856 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f1fab81f261fcc71de939b211a290d57c6054e92276a9e45b109
│                       │       │                   c4d43095a40e 
│                       │       ├ Title           : Successfully using libcurl to do a transfer to a specific
│                       │       │                   HTTP origin  ... 
│                       │       ├ Description     : Successfully using libcurl to do a transfer to a specific
│                       │       │                   HTTP origin
│                       │       │                   (`hostA`) with **Digest** authentication and then changing
│                       │       │                   the origin to a
│                       │       │                   different one (`hostB`) for a second transfer, reusing the
│                       │       │                   same handle, makes
│                       │       │                   libcurl wrongly pass on the  `Authorization:` header field
│                       │       │                   meant for `hostA`,
│                       │       │                   to `hostB`. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11856.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11856.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11856.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3793260 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11856 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.973Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:54.983Z 
│                       ├ [33]  ╭ VulnerabilityID : CVE-2026-10536 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fc536f6734a16a42 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10536 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2330bb175fabf334af51090cccaafb26ad43cff87c81f9550748
│                       │       │                   6ca7e2a44594 
│                       │       ├ Title           : A use-after-free vulnerability exists in libcurl when an
│                       │       │                   application c ... 
│                       │       ├ Description     : A use-after-free vulnerability exists in libcurl when an
│                       │       │                   application
│                       │       │                   configures an HTTP/2 stream-dependency tree via
│                       │       │                   `CURLOPT_STREAM_DEPENDS` or
│                       │       │                   `CURLOPT_STREAM_DEPENDS_E`, subsequently invokes
│                       │       │                   `curl_easy_reset()`, and
│                       │       │                   finally terminates the handle with `curl_easy_cleanup()`.
│                       │       │                   During this final
│                       │       │                   cleanup phase, libcurl attempts to access and modify an
│                       │       │                   internal structure
│                       │       │                   that was already freed during the reset operation. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-10536.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-10536.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-10536.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3751697 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-10536 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.563Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:54.473Z 
│                       ├ [34]  ╭ VulnerabilityID : CVE-2026-11352 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fc536f6734a16a42 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3e0e696984f016617d392e91179dbabd2cb9b313e6acc077c075
│                       │       │                   b1c44eab5be9 
│                       │       ├ Title           : An issue in curl\u2019s QUIC UDP receive function allows a
│                       │       │                   malicious H ... 
│                       │       ├ Description     : An issue in curl’s QUIC UDP receive function allows a
│                       │       │                   malicious HTTP/3 server
│                       │       │                   to trigger a remote denial of service against a curl or
│                       │       │                   libcurl client.
│                       │       │                   Because the helper function discards zero-length UDP
│                       │       │                   datagrams before counting
│                       │       │                   them toward the per-call packet budget, a connected QUIC
│                       │       │                   peer can continuously
│                       │       │                   stream empty datagrams to indefinitely stall the client. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11352.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11352.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11352.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3783438 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11352 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.693Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:54.843Z 
│                       ├ [35]  ╭ VulnerabilityID : CVE-2026-11564 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fc536f6734a16a42 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11564 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9e30dc26bf8a5a919fbccf3ecb0dc3b65ced15d031f0143dde5d
│                       │       │                   9283876a1c51 
│                       │       ├ Title           : libcurl keeps previously used connections in a connection
│                       │       │                   pool for sub ... 
│                       │       ├ Description     : libcurl keeps previously used connections in a connection
│                       │       │                   pool for subsequent
│                       │       │                   transfers to reuse if one of them matches the setup.
│                       │       │                   
│                       │       │                   An easy handle that first uses default native CA trust can
│                       │       │                   continue trusting
│                       │       │                   the native platform store after the application switches
│                       │       │                   that same handle to
│                       │       │                   custom CA material for a later transfer. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11564.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11564.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11564.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3788984 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11564 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.79Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T18:20:47.007Z 
│                       ├ [36]  ╭ VulnerabilityID : CVE-2026-11586 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fc536f6734a16a42 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11586 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7ee86227bed87e76f87c9051f6581516d70ebea909789cce458c
│                       │       │                   58be7e9cc7e7 
│                       │       ├ Title           : By default, curl automatically responds to WebSocket PING
│                       │       │                   frames. Beca ... 
│                       │       ├ Description     : By default, curl automatically responds to WebSocket PING
│                       │       │                   frames. Because curl
│                       │       │                   lacks an upper bound on memory allocation for
│                       │       │                   unacknowledged frames, a
│                       │       │                   malicious server can exhaust all available memory by
│                       │       │                   flooding curl with rapid,
│                       │       │                   sequential PING messages. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11586.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-11586.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-11586.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3788931 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-11586 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:23.883Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T18:20:47.007Z 
│                       ├ [37]  ╭ VulnerabilityID : CVE-2026-12064 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.2 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : fc536f6734a16a42 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-12064 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2872d627e95d6352e4d686bafb82b16f66e3f17d75e18187bac3
│                       │       │                   d4f2e2eb680c 
│                       │       ├ Title           : When a user invokes curl using a schemeless URL combined
│                       │       │                   with `--proto ... 
│                       │       ├ Description     : When a user invokes curl using a schemeless URL combined
│                       │       │                   with
│                       │       │                   `--proto-default` sftp (or scp), a disconnect occurs
│                       │       │                   between the tool layer
│                       │       │                   and libcurl. The tool layer incorrectly infers the URL
│                       │       │                   scheme, which
│                       │       │                   erroneously bypasses the initialization of critical SSH
│                       │       │                   security options like
│                       │       │                   CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256 and
│                       │       │                   CURLOPT_SSH_KNOWNHOSTS. Conversely, the
│                       │       │                   libcurl runtime successfully honors
│                       │       │                   CURLOPT_DEFAULT_PROTOCOL and establishes
│                       │       │                   the connection via SFTP/SCP as specified. Because the tool
│                       │       │                   layer skipped the
│                       │       │                   security configuration, these SSH host verification options
│                       │       │                    are silently
│                       │       │                   omitted, causing curl to connect to an unverified SSH
│                       │       │                   remote host without
│                       │       │                   throwing an error. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ├ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-12064.md 
│                       │       │                  ├ [1]: https://curl.se/docs/CVE-2026-12064.html 
│                       │       │                  ├ [2]: https://curl.se/docs/CVE-2026-12064.json 
│                       │       │                  ├ [3]: https://hackerone.com/reports/3797526 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-12064 
│                       │       ├ PublishedDate   : 2026-07-03T07:16:24.217Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T19:16:55.27Z 
│                       ├ [38]  ╭ VulnerabilityID : CVE-2025-66382 
│                       │       ├ PkgID           : libexpat1@2.7.4-1 
│                       │       ├ PkgName         : libexpat1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : c17b9d4b5a8b1286 
│                       │       ├ InstalledVersion: 2.7.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b54b240bb6612f7731612366cc411f667492087f2ea07652ac00
│                       │       │                   1f86105f91db 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T09:56:45.24Z 
│                       ├ [39]  ╭ VulnerabilityID : CVE-2024-2236 
│                       │       ├ PkgID           : libgcrypt20@1.12.0-2ubuntu1 
│                       │       ├ PkgName         : libgcrypt20 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c975856993003ac6 
│                       │       ├ InstalledVersion: 1.12.0-2ubuntu1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:21e16eacf61eb529a5d7174667b5cc6568dcb8d4607787dc89f6
│                       │       │                   b3a58cae30f7 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T07:24:06.083Z 
│                       ├ [40]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ddfad06fd1da19880294f1e6a48cf68fbef39a287a7cd7adb105
│                       │       │                   1e5820a093c1 
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
│                       ├ [41]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:cc3dcb67bf457e8b17ec6393163725917bf0f5b1348225bfb4b7
│                       │       │                   1f277565d59a 
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
│                       ├ [42]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bb5ee642e08f4e6202aeca93cc6cd1ce72b193189f74a808e320
│                       │       │                   a29ec57bd705 
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
│                       ├ [43]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:25be7928d976b4230109b1629b43d2dc7d07f1164b22cc91c036
│                       │       │                   4d306dbb26a7 
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
│                       ├ [44]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5816fcc5e050802bcd1be3efff1724cb386f9098e7de1709dc6a
│                       │       │                   d5dc2c9d9103 
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
│                       ├ [45]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ee0638a59a092c7e 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:87f62dec661cffc0eb3f3ad7ff362028b61bd9c4c455f6d4e780
│                       │       │                   50d4e8cb99b0 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [46]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ee0638a59a092c7e 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:61f229433aedd1a076ca60c7f979c57addbf28490901c2238a03
│                       │       │                   b5302604e104 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [47]  ╭ VulnerabilityID : CVE-2026-13757 
│                       │       ├ PkgID           : libp11-kit0@0.26.2-2 
│                       │       ├ PkgName         : libp11-kit0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distr
│                       │       │                  │       o=ubuntu-26.04 
│                       │       │                  ╰ UID : f30da36e7f9e8d5a 
│                       │       ├ InstalledVersion: 0.26.2-2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f2c2530d3e54add5a6cbe01016fc9088326d765f18d98eba5a04
│                       │       │                   b6d03ec02154 
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
│                       │       ├ VendorSeverity   ╭ redhat: 2 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                       │       │                           │           N/A:H 
│                       │       │                           ╰ V3Score : 6.2 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-13757 
│                       │       │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                       │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                       │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                       │       ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                       │       ╰ LastModifiedDate: 2026-07-01T15:16:30.19Z 
│                       ├ [48]  ╭ VulnerabilityID : CVE-2026-1502 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1502 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d031d61e0935461c74247a0ebd9795d10f4967534cd6f2114ca5
│                       │       │                   11cd0a0d4dcf 
│                       │       ├ Title           : python: Python: HTTP header injection via CR/LF in proxy
│                       │       │                   tunnel headers 
│                       │       ├ Description     : CR/LF bytes were not rejected by HTTP client proxy tunnel
│                       │       │                   headers or host. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-93 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:P/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 4.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       1/4 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-1502 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/05ed7ce7ae9
│                       │       │                  │       e17c23a04085b2539fe6d6d3cef69 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/56b7100b04e
│                       │       │                  │       44ea27989242b176beb8f016b2c53 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/58703ec1bdd
│                       │       │                  │       1eb075e8b01a0c427683ce594dd3e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/9e071c9b28c
│                       │       │                  │       17f347f81b388a003d4eeb3c7a8dd 
│                       │       │                  ├ [45]: https://github.com/python/cpython/commit/b1cf9016335
│                       │       │                  │       cb637c5a425032e8274a224f4b2ed 
│                       │       │                  ├ [46]: https://github.com/python/cpython/commit/c00c386faa5
│                       │       │                  │       79ad71196d33408644478488e43ec 
│                       │       │                  ├ [47]: https://github.com/python/cpython/issues/146211 
│                       │       │                  ├ [48]: https://github.com/python/cpython/pull/146212 
│                       │       │                  ├ [49]: https://linux.oracle.com/cve/CVE-2026-1502.html 
│                       │       │                  ├ [50]: https://linux.oracle.com/errata/ELSA-2026-19177.html 
│                       │       │                  ├ [51]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/2IVPAEQWUJBCTQZEJEVTYCIKSMQPGR
│                       │       │                  │       Z3/ 
│                       │       │                  ├ [52]: https://nvd.nist.gov/vuln/detail/CVE-2026-1502 
│                       │       │                  ├ [53]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [54]: https://www.cve.org/CVERecord?id=CVE-2026-1502 
│                       │       ├ PublishedDate   : 2026-04-10T18:16:40.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:48.007Z 
│                       ├ [49]  ╭ VulnerabilityID : CVE-2026-3276 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3276 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2dfe509535fa7c79c3adfd38368d08b12343ffef400d48278d78
│                       │       │                   5d317141eec7 
│                       │       ├ Title           : python: Python unicodedata: Denial of Service due to
│                       │       │                   excessive CPU consumption 
│                       │       ├ Description     : unicodedata.normalize() can take excessive CPU time when
│                       │       │                   processing
│                       │       │                   specially crafted Unicode input containing long runs of
│                       │       │                   combining characters
│                       │       │                   with alternating Canonical Combining Class values.
│                       │       │                   This affects all normalization forms. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-407 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:L/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:L 
│                       │       │                            ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       3/15 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-3276 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/6b505d1f41f
│                       │       │                  │       8f3ea0fe5a4786d3a8fff1875cfc0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/90748760d38
│                       │       │                  │       ca3ac5fc6788a69becab905c95598 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/991224b1e83
│                       │       │                  │       11c85f198f6dd8208bf8cff7fc26f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/ba785b88add
│                       │       │                  │       96acbf403d65cb157fb2743a33a32 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/c5512bd7c1d
│                       │       │                  │       c28055660565275012766941d3066 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149079 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149080 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/PP5HB4K7727OBBM76KA2ILID76K3OZ
│                       │       │                  │       GZ/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-3276 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-3276 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          03/15 
│                       │       ├ PublishedDate   : 2026-06-03T16:16:29.253Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:19.58Z 
│                       ├ [50]  ╭ VulnerabilityID : CVE-2026-4786 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4786 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3280538553ea384161921245e92bf6b4e6ecfdc7079e145383bf
│                       │       │                   2967c64b86db 
│                       │       ├ Title           : python: cpython: Python: Arbitrary code execution via
│                       │       │                   command injection in webbrowser.open() API 
│                       │       ├ Description     : Mitgation of CVE-2026-4519 was incomplete. If the URL
│                       │       │                   contained "%action" the mitigation could be bypassed for
│                       │       │                   certain browser types the "webbrowser.open()" API could
│                       │       │                   have commands injected into the underlying shell. See
│                       │       │                   CVE-2026-4519 for details. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-77 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19589 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:22144 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:28247 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:35838 
│                       │       │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [46]: https://access.redhat.com/security/cve/CVE-2026-4786 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [52]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [53]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [54]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [55]: https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [56]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [57]: https://github.com/python/cpython/commit/28b4ad38067
│                       │       │                  │       bbdad34edfcd03ad2de5f06387e53 
│                       │       │                  ├ [58]: https://github.com/python/cpython/commit/c5767a72838
│                       │       │                  │       a8dda9d6dc5d3558075b055c56bca 
│                       │       │                  ├ [59]: https://github.com/python/cpython/commit/d22922c8a79
│                       │       │                  │       58353689dc4763dd72da2dea03fff 
│                       │       │                  ├ [60]: https://github.com/python/cpython/commit/d6d68494be7
│                       │       │                  │       0bdbda20f89f83801ba52ec37daa4 
│                       │       │                  ├ [61]: https://github.com/python/cpython/commit/f4654824ae0
│                       │       │                  │       850ac87227fb270f9057477946769 
│                       │       │                  ├ [62]: https://github.com/python/cpython/issues/148169 
│                       │       │                  ├ [63]: https://github.com/python/cpython/pull/148170 
│                       │       │                  ├ [64]: https://linux.oracle.com/cve/CVE-2026-4786.html 
│                       │       │                  ├ [65]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [66]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/JQDUNJVB4AQNTJECSUKOBDU3XCJIPS
│                       │       │                  │       E5/ 
│                       │       │                  ├ [67]: https://nvd.nist.gov/vuln/detail/CVE-2026-4786 
│                       │       │                  ├ [68]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-4786.json 
│                       │       │                  ├ [69]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [70]: https://www.cve.org/CVERecord?id=CVE-2026-4786 
│                       │       ├ PublishedDate   : 2026-04-13T22:16:30.413Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T13:17:02.897Z 
│                       ├ [51]  ╭ VulnerabilityID : CVE-2026-5713 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5713 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7be00442039d2a39008e9ccb8314c7216648555245469ab4e570
│                       │       │                   1717c3c29d9d 
│                       │       ├ Title           : python: Python: Information disclosure and arbitrary code
│                       │       │                   execution via remote debugging with a malicious process. 
│                       │       ├ Description     : The "profiling.sampling" module (Python 3.15+) and "asyncio
│                       │       │                    introspection capabilities" (3.14+, "python -m asyncio ps"
│                       │       │                    and "python -m asyncio pstree") features could be used to
│                       │       │                   read and write addresses in a privileged process if that
│                       │       │                   process connected to a malicious or "infected" Python
│                       │       │                   process via the remote debugging feature. This
│                       │       │                   vulnerability requires persistently and repeatedly
│                       │       │                   connecting to the process to be exploited, even after the
│                       │       │                   connecting process crashes with high likelihood due to
│                       │       │                   ASLR. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-121 
│                       │       │                  ╰ [1]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:P/PR:H/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-5713 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2431367 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2458239 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2431367 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2458239 
│                       │       │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0865 
│                       │       │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5713 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [30]: https://errata.almalinux.org/10/ALSA-2026-19019.html 
│                       │       │                  ├ [31]: https://errata.rockylinux.org/RLSA-2026:19176 
│                       │       │                  ├ [32]: https://github.com/python/cpython/commit/289fd2c97a7
│                       │       │                  │       e5aecb8b69f94f5e838ccfeee7e67 
│                       │       │                  ├ [33]: https://github.com/python/cpython/commit/316f6265b7f
│                       │       │                  │       9ca4ffed5346b747475ef1943f35d 
│                       │       │                  ├ [34]: https://github.com/python/cpython/issues/148178 
│                       │       │                  ├ [35]: https://github.com/python/cpython/pull/148187 
│                       │       │                  ├ [36]: https://linux.oracle.com/cve/CVE-2026-5713.html 
│                       │       │                  ├ [37]: https://linux.oracle.com/errata/ELSA-2026-19176.html 
│                       │       │                  ├ [38]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/OG4RHARYSNIE22GGOMVMCRH76L5HKP
│                       │       │                  │       LM/ 
│                       │       │                  ├ [39]: https://nvd.nist.gov/vuln/detail/CVE-2026-5713 
│                       │       │                  ├ [40]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [41]: https://www.cve.org/CVERecord?id=CVE-2026-5713 
│                       │       ├ PublishedDate   : 2026-04-14T16:16:48.717Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:32.743Z 
│                       ├ [52]  ╭ VulnerabilityID : CVE-2026-6019 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6019 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:35dc1a61f053c50bbf1cbdff95636538b7887bdb31c83f859555
│                       │       │                   23907ecf6b27 
│                       │       ├ Title           : python: Python: Cross-Site Scripting (XSS) vulnerability in
│                       │       │                    http.cookies module 
│                       │       ├ Description     : http.cookies.Morsel.js_output() returns an inline <script>
│                       │       │                   snippet and only escapes " for JavaScript string context.
│                       │       │                   It does not neutralize the HTML parser-sensitive sequence
│                       │       │                   </script> inside the generated script element. Mitigation
│                       │       │                   base64-encodes the cookie value to disallow escaping using
│                       │       │                   cookie value. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-150 
│                       │       │                  ╰ [1]: CWE-116 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 1 
│                       │       │                  ├ nvd        : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:N/VC:
│                       │       │                  │         │            L/VI:L/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 2.1 
│                       │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 6.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6019 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2460869 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6019 
│                       │       │                  ├ [8] : https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:28247 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3c59b8b53fc
│                       │       │                  │       75c7f9578d16fb8201ceb43e8f76c 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/76b3923d688
│                       │       │                  │       c0efc580658476c5f525ec8735104 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/f795e042043
│                       │       │                  │       dfe26c42e1971d4502c1cdc4c65b8 
│                       │       │                  ├ [13]: https://github.com/python/cpython/issues/90309 
│                       │       │                  ├ [14]: https://github.com/python/cpython/pull/148848 
│                       │       │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-6019.html 
│                       │       │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [17]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/IVNWGV2BBNC3RHQAFS22UP4DY56SAX
│                       │       │                  │       X3/ 
│                       │       │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6019 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-6019 
│                       │       ├ PublishedDate   : 2026-04-22T20:16:42.617Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:00:10.56Z 
│                       ├ [53]  ╭ VulnerabilityID : CVE-2026-6100 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6100 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:472ef8cc228b8ffdebdfe23c481dd356d5e66e14c4d5be30c564
│                       │       │                   a57dc423f69d 
│                       │       ├ Title           : python: Python: Arbitrary code execution or information
│                       │       │                   disclosure via use-after-free in decompression modules 
│                       │       ├ Description     : Use-after-free (UAF) was possible in the
│                       │       │                   `lzma.LZMADecompressor`, `bz2.BZ2Decompressor`, and
│                       │       │                   `gzip.GzipFile` when a memory allocation fails with a
│                       │       │                   `MemoryError` and the decompression instance is re-used.
│                       │       │                   This scenario can be triggered if the process is under
│                       │       │                   memory pressure. The fix cleans up the dangling pointer in
│                       │       │                   this specific error condition.
│                       │       │                   
│                       │       │                   The vulnerability is only present if the program re-uses
│                       │       │                   decompressor instances across multiple decompression calls
│                       │       │                   even after a `MemoryError` is raised during decompression.
│                       │       │                   Using the helper functions to one-shot decompress data such
│                       │       │                    as `lzma.decompress()`, `bz2.decompress()`,
│                       │       │                   `gzip.decompress()`, and `zlib.decompress()` are not
│                       │       │                   affected as a new decompressor instance is used per call.
│                       │       │                   If the decompressor instance is not re-used after an error
│                       │       │                   condition, this usage is similarly not vulnerable. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-416 
│                       │       │                  ├ [1]: CWE-787 
│                       │       │                  ╰ [2]: CWE-825 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 9.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :H/A:H 
│                       │       │                            ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       3/10 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [42]: https://access.redhat.com/security/cve/CVE-2026-6100 
│                       │       │                  ├ [43]: https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [44]: https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [45]: https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [46]: https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [52]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [53]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [54]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [55]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [56]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [57]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [58]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [59]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [60]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [61]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [62]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [63]: https://github.com/python/cpython/commit/47128e64f98
│                       │       │                  │       c3a20271138a98c2922bea2a3ee0e 
│                       │       │                  ├ [64]: https://github.com/python/cpython/commit/6a5f79c8d7b
│                       │       │                  │       bf22b083b240910c7a8781a59437d 
│                       │       │                  ├ [65]: https://github.com/python/cpython/commit/8fc66aef6d7
│                       │       │                  │       b3ae58f43f5c66f9366cc8cbbfcd2 
│                       │       │                  ├ [66]: https://github.com/python/cpython/commit/c3cf71c3366
│                       │       │                  │       fe49acb776a639405c0eea6169c20 
│                       │       │                  ├ [67]: https://github.com/python/cpython/commit/e20c6c9667c
│                       │       │                  │       99ecaab96e1a2b3767082841ffc8b 
│                       │       │                  ├ [68]: https://github.com/python/cpython/issues/148395 
│                       │       │                  ├ [69]: https://github.com/python/cpython/pull/148396 
│                       │       │                  ├ [70]: https://linux.oracle.com/cve/CVE-2026-6100.html 
│                       │       │                  ├ [71]: https://linux.oracle.com/errata/ELSA-2026-19216.html 
│                       │       │                  ├ [72]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/HTWB2Z6KT5QQX4RYEZAFININDHNOSI
│                       │       │                  │       F3/ 
│                       │       │                  ├ [73]: https://nvd.nist.gov/vuln/detail/CVE-2026-6100 
│                       │       │                  ├ [74]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-6100.json 
│                       │       │                  ├ [75]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [76]: https://www.cve.org/CVERecord?id=CVE-2026-6100 
│                       │       ├ PublishedDate   : 2026-04-13T18:16:31.297Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T03:21:11.023Z 
│                       ├ [54]  ╭ VulnerabilityID : CVE-2026-7774 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7774 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2e031436f6501fdaabd796e28b2c9eccc17c2b798e37ff347921
│                       │       │                   4061ccb2debc 
│                       │       ├ Title           : python: CPython: Python tarfile: Arbitrary file write via
│                       │       │                   crafted link entries 
│                       │       ├ Description     : tarfile.data_filter could be bypassed using crafted link
│                       │       │                   entries, including symlinks with empty or directory-like
│                       │       │                   names, to redirect later archive members outside the
│                       │       │                   intended extraction directory. This allowed a malicious tar
│                       │       │                    archive to cause tarfile.extractall() to write files
│                       │       │                   outside the destination directory, subject to the
│                       │       │                   permissions of the extracting process. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:A/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.9 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       4/9 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7774 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/0478bd83d82
│                       │       │                  │       b255e0f29f613367a59d261e7eaa2 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/0d28f5e46e1
│                       │       │                  │       51718972dfabd91205444d0037b6d 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/578411982c1
│                       │       │                  │       6f753f4893532510099ef665117da 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/5cf47a248c3
│                       │       │                  │       5c375d610b87b2f72fd1ed454b558 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/74cca9a92fb
│                       │       │                  │       7d653e404843a56b8bdc7b0afdbbf 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149486 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149487 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/4FU62L2M6RMMHT2QPGQNPEHHUND7CE
│                       │       │                  │       X5/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-7774 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-7774 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          04/9 
│                       │       ├ PublishedDate   : 2026-06-04T16:16:42.103Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:02:56.613Z 
│                       ├ [55]  ╭ VulnerabilityID : CVE-2026-8328 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8328 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ea6f6712331cfb4421d224d41c9c268194f92e542dafb668c993
│                       │       │                   993f49b5784a 
│                       │       ├ Title           : The ftpcp() function in Lib/ftplib.py was not updated when 
│                       │       │                    CVE-2021-4 ... 
│                       │       ├ Description     : The ftpcp() function in Lib/ftplib.py was not updated when
│                       │       │                   
│                       │       │                   CVE-2021-4189 was fixed. While makepasv() was patched to
│                       │       │                   replace 
│                       │       │                   server-supplied PASV host addresses with the actual peer
│                       │       │                   address 
│                       │       │                   (getpeername()[0]), ftpcp() still calls parse227() directly
│                       │       │                    and passes 
│                       │       │                   the raw attacker-controllable IP address and port to
│                       │       │                   target.sendport(). This patch is related to
│                       │       │                   CVE-2021-4189. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-918 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ─ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                            │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                            ╰ V40Score : 5.9 
│                       │       ├ References       ╭ [0] : https://github.com/python/cpython/commit/2bbcf3fb7a4
│                       │       │                  │       20a05605576c0f9468d4675381b5f 
│                       │       │                  ├ [1] : https://github.com/python/cpython/commit/5dadc64673c
│                       │       │                  │       e875ebfb24163907777dae0f6ca06 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/7d95a1dc738
│                       │       │                  │       2b55cba7fdd6a110336077584a4f0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/bb3446dda6c
│                       │       │                  │       49b32e67c11dbbbf221b40be00763 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/c88704431ea
│                       │       │                  │       3248ca769384c13856330976fac1d 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/eac4fe3b2c7
│                       │       │                  │       7693790a5ef7dfab127c1fee81bf9 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/ef12d0dc824
│                       │       │                  │       baccf737bba1458e5eed3d1e0fceb 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/87451 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149648 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/ITF2BAPBQEPYK3LDMPRSY435JGNHYN
│                       │       │                  │       DP/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-8328 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-8328 
│                       │       ├ PublishedDate   : 2026-05-13T21:16:50.167Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:56.797Z 
│                       ├ [56]  ╭ VulnerabilityID : CVE-2026-9669 
│                       │       ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                       │       │                  │       md64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : c0091a523a4a100d 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9669 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:01b2f2fbaefe7c997ab8db595d16b178aaa314f0f97fa2eb8c1f
│                       │       │                   836c9b641173 
│                       │       ├ Title           : python: Python: Denial of Service via out-of-bounds write
│                       │       │                   in BZ2 decompression 
│                       │       ├ Description     : bz2.BZ2Decompressor objects could be reused after a
│                       │       │                   decompression error. If an application caught the resulting
│                       │       │                    OSError and retried with the same decompressor, crafted
│                       │       │                   input could cause the decompressor to resume from an
│                       │       │                   invalid internal state and perform out-of-bounds writes to
│                       │       │                   a stack buffer. This could crash the process when
│                       │       │                   processing untrusted data. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-121 
│                       │       ├ VendorSeverity   ╭ bitnami: 3 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:H/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 8.2 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:H 
│                       │       │                            ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       8/17 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9669 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/157a5df8cb5
│                       │       │                  │       d82b33f918a7489e72ce95ceb12b6 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/5755d0f0839
│                       │       │                  │       49ff3c5bf3a37e673e24e306b036e 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/619a12b2e54
│                       │       │                  │       5391dc436b3af79dda22337382a6f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/d3ca26983df
│                       │       │                  │       bccdf609f24ff5877dc3118e4702d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/issues/150599 
│                       │       │                  ├ [7] : https://github.com/python/cpython/pull/150600 
│                       │       │                  ├ [8] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/DBJZETMGUIFK7DVUWMOXHD3Z6IX2QP
│                       │       │                  │       SX/ 
│                       │       │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-9669 
│                       │       │                  ├ [10]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-9669 
│                       │       ├ PublishedDate   : 2026-06-08T23:17:25.17Z 
│                       │       ╰ LastModifiedDate: 2026-06-23T18:18:11.127Z 
│                       ├ [57]  ╭ VulnerabilityID : CVE-2026-1502 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1502 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2e3564f4bdad78dea4da80c5bba5ef523636147aaad0e5940f9f
│                       │       │                   12c0041ccb9a 
│                       │       ├ Title           : python: Python: HTTP header injection via CR/LF in proxy
│                       │       │                   tunnel headers 
│                       │       ├ Description     : CR/LF bytes were not rejected by HTTP client proxy tunnel
│                       │       │                   headers or host. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-93 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:P/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 4.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       1/4 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-1502 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/05ed7ce7ae9
│                       │       │                  │       e17c23a04085b2539fe6d6d3cef69 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/56b7100b04e
│                       │       │                  │       44ea27989242b176beb8f016b2c53 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/58703ec1bdd
│                       │       │                  │       1eb075e8b01a0c427683ce594dd3e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/9e071c9b28c
│                       │       │                  │       17f347f81b388a003d4eeb3c7a8dd 
│                       │       │                  ├ [45]: https://github.com/python/cpython/commit/b1cf9016335
│                       │       │                  │       cb637c5a425032e8274a224f4b2ed 
│                       │       │                  ├ [46]: https://github.com/python/cpython/commit/c00c386faa5
│                       │       │                  │       79ad71196d33408644478488e43ec 
│                       │       │                  ├ [47]: https://github.com/python/cpython/issues/146211 
│                       │       │                  ├ [48]: https://github.com/python/cpython/pull/146212 
│                       │       │                  ├ [49]: https://linux.oracle.com/cve/CVE-2026-1502.html 
│                       │       │                  ├ [50]: https://linux.oracle.com/errata/ELSA-2026-19177.html 
│                       │       │                  ├ [51]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/2IVPAEQWUJBCTQZEJEVTYCIKSMQPGR
│                       │       │                  │       Z3/ 
│                       │       │                  ├ [52]: https://nvd.nist.gov/vuln/detail/CVE-2026-1502 
│                       │       │                  ├ [53]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [54]: https://www.cve.org/CVERecord?id=CVE-2026-1502 
│                       │       ├ PublishedDate   : 2026-04-10T18:16:40.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:48.007Z 
│                       ├ [58]  ╭ VulnerabilityID : CVE-2026-3276 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3276 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4af95b33ff593c6872c67f67c330c9ee455a90b829753d60fc93
│                       │       │                   688bc8b01fd9 
│                       │       ├ Title           : python: Python unicodedata: Denial of Service due to
│                       │       │                   excessive CPU consumption 
│                       │       ├ Description     : unicodedata.normalize() can take excessive CPU time when
│                       │       │                   processing
│                       │       │                   specially crafted Unicode input containing long runs of
│                       │       │                   combining characters
│                       │       │                   with alternating Canonical Combining Class values.
│                       │       │                   This affects all normalization forms. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-407 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:L/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:L 
│                       │       │                            ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       3/15 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-3276 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/6b505d1f41f
│                       │       │                  │       8f3ea0fe5a4786d3a8fff1875cfc0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/90748760d38
│                       │       │                  │       ca3ac5fc6788a69becab905c95598 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/991224b1e83
│                       │       │                  │       11c85f198f6dd8208bf8cff7fc26f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/ba785b88add
│                       │       │                  │       96acbf403d65cb157fb2743a33a32 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/c5512bd7c1d
│                       │       │                  │       c28055660565275012766941d3066 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149079 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149080 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/PP5HB4K7727OBBM76KA2ILID76K3OZ
│                       │       │                  │       GZ/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-3276 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-3276 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          03/15 
│                       │       ├ PublishedDate   : 2026-06-03T16:16:29.253Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:19.58Z 
│                       ├ [59]  ╭ VulnerabilityID : CVE-2026-4786 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4786 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:34d6a12dde5f6fa0f3f5a34a7319d36ca0c43fcbd443b0ba6e20
│                       │       │                   f5c6f09e834d 
│                       │       ├ Title           : python: cpython: Python: Arbitrary code execution via
│                       │       │                   command injection in webbrowser.open() API 
│                       │       ├ Description     : Mitgation of CVE-2026-4519 was incomplete. If the URL
│                       │       │                   contained "%action" the mitigation could be bypassed for
│                       │       │                   certain browser types the "webbrowser.open()" API could
│                       │       │                   have commands injected into the underlying shell. See
│                       │       │                   CVE-2026-4519 for details. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-77 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19589 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:22144 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:28247 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:35838 
│                       │       │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [46]: https://access.redhat.com/security/cve/CVE-2026-4786 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [52]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [53]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [54]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [55]: https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [56]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [57]: https://github.com/python/cpython/commit/28b4ad38067
│                       │       │                  │       bbdad34edfcd03ad2de5f06387e53 
│                       │       │                  ├ [58]: https://github.com/python/cpython/commit/c5767a72838
│                       │       │                  │       a8dda9d6dc5d3558075b055c56bca 
│                       │       │                  ├ [59]: https://github.com/python/cpython/commit/d22922c8a79
│                       │       │                  │       58353689dc4763dd72da2dea03fff 
│                       │       │                  ├ [60]: https://github.com/python/cpython/commit/d6d68494be7
│                       │       │                  │       0bdbda20f89f83801ba52ec37daa4 
│                       │       │                  ├ [61]: https://github.com/python/cpython/commit/f4654824ae0
│                       │       │                  │       850ac87227fb270f9057477946769 
│                       │       │                  ├ [62]: https://github.com/python/cpython/issues/148169 
│                       │       │                  ├ [63]: https://github.com/python/cpython/pull/148170 
│                       │       │                  ├ [64]: https://linux.oracle.com/cve/CVE-2026-4786.html 
│                       │       │                  ├ [65]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [66]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/JQDUNJVB4AQNTJECSUKOBDU3XCJIPS
│                       │       │                  │       E5/ 
│                       │       │                  ├ [67]: https://nvd.nist.gov/vuln/detail/CVE-2026-4786 
│                       │       │                  ├ [68]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-4786.json 
│                       │       │                  ├ [69]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [70]: https://www.cve.org/CVERecord?id=CVE-2026-4786 
│                       │       ├ PublishedDate   : 2026-04-13T22:16:30.413Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T13:17:02.897Z 
│                       ├ [60]  ╭ VulnerabilityID : CVE-2026-5713 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5713 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b1ba57b788c223f9ec8bf25443c22fdede6204e75751c6395837
│                       │       │                   6081b70d3118 
│                       │       ├ Title           : python: Python: Information disclosure and arbitrary code
│                       │       │                   execution via remote debugging with a malicious process. 
│                       │       ├ Description     : The "profiling.sampling" module (Python 3.15+) and "asyncio
│                       │       │                    introspection capabilities" (3.14+, "python -m asyncio ps"
│                       │       │                    and "python -m asyncio pstree") features could be used to
│                       │       │                   read and write addresses in a privileged process if that
│                       │       │                   process connected to a malicious or "infected" Python
│                       │       │                   process via the remote debugging feature. This
│                       │       │                   vulnerability requires persistently and repeatedly
│                       │       │                   connecting to the process to be exploited, even after the
│                       │       │                   connecting process crashes with high likelihood due to
│                       │       │                   ASLR. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-121 
│                       │       │                  ╰ [1]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:P/PR:H/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-5713 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2431367 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2458239 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2431367 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2458239 
│                       │       │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0865 
│                       │       │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5713 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [30]: https://errata.almalinux.org/10/ALSA-2026-19019.html 
│                       │       │                  ├ [31]: https://errata.rockylinux.org/RLSA-2026:19176 
│                       │       │                  ├ [32]: https://github.com/python/cpython/commit/289fd2c97a7
│                       │       │                  │       e5aecb8b69f94f5e838ccfeee7e67 
│                       │       │                  ├ [33]: https://github.com/python/cpython/commit/316f6265b7f
│                       │       │                  │       9ca4ffed5346b747475ef1943f35d 
│                       │       │                  ├ [34]: https://github.com/python/cpython/issues/148178 
│                       │       │                  ├ [35]: https://github.com/python/cpython/pull/148187 
│                       │       │                  ├ [36]: https://linux.oracle.com/cve/CVE-2026-5713.html 
│                       │       │                  ├ [37]: https://linux.oracle.com/errata/ELSA-2026-19176.html 
│                       │       │                  ├ [38]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/OG4RHARYSNIE22GGOMVMCRH76L5HKP
│                       │       │                  │       LM/ 
│                       │       │                  ├ [39]: https://nvd.nist.gov/vuln/detail/CVE-2026-5713 
│                       │       │                  ├ [40]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [41]: https://www.cve.org/CVERecord?id=CVE-2026-5713 
│                       │       ├ PublishedDate   : 2026-04-14T16:16:48.717Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:32.743Z 
│                       ├ [61]  ╭ VulnerabilityID : CVE-2026-6019 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6019 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c3026cb5d16ec2bcb75c27e6dac147fcfb301beac9469adccb6b
│                       │       │                   4dd4a5832999 
│                       │       ├ Title           : python: Python: Cross-Site Scripting (XSS) vulnerability in
│                       │       │                    http.cookies module 
│                       │       ├ Description     : http.cookies.Morsel.js_output() returns an inline <script>
│                       │       │                   snippet and only escapes " for JavaScript string context.
│                       │       │                   It does not neutralize the HTML parser-sensitive sequence
│                       │       │                   </script> inside the generated script element. Mitigation
│                       │       │                   base64-encodes the cookie value to disallow escaping using
│                       │       │                   cookie value. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-150 
│                       │       │                  ╰ [1]: CWE-116 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 1 
│                       │       │                  ├ nvd        : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:N/VC:
│                       │       │                  │         │            L/VI:L/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 2.1 
│                       │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 6.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6019 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2460869 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6019 
│                       │       │                  ├ [8] : https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:28247 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3c59b8b53fc
│                       │       │                  │       75c7f9578d16fb8201ceb43e8f76c 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/76b3923d688
│                       │       │                  │       c0efc580658476c5f525ec8735104 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/f795e042043
│                       │       │                  │       dfe26c42e1971d4502c1cdc4c65b8 
│                       │       │                  ├ [13]: https://github.com/python/cpython/issues/90309 
│                       │       │                  ├ [14]: https://github.com/python/cpython/pull/148848 
│                       │       │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-6019.html 
│                       │       │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [17]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/IVNWGV2BBNC3RHQAFS22UP4DY56SAX
│                       │       │                  │       X3/ 
│                       │       │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6019 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-6019 
│                       │       ├ PublishedDate   : 2026-04-22T20:16:42.617Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:00:10.56Z 
│                       ├ [62]  ╭ VulnerabilityID : CVE-2026-6100 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6100 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a840a5490d9a52f08e2fc8623b524fd0e911b1a7f18bbcec3512
│                       │       │                   f62be1ef8e3d 
│                       │       ├ Title           : python: Python: Arbitrary code execution or information
│                       │       │                   disclosure via use-after-free in decompression modules 
│                       │       ├ Description     : Use-after-free (UAF) was possible in the
│                       │       │                   `lzma.LZMADecompressor`, `bz2.BZ2Decompressor`, and
│                       │       │                   `gzip.GzipFile` when a memory allocation fails with a
│                       │       │                   `MemoryError` and the decompression instance is re-used.
│                       │       │                   This scenario can be triggered if the process is under
│                       │       │                   memory pressure. The fix cleans up the dangling pointer in
│                       │       │                   this specific error condition.
│                       │       │                   
│                       │       │                   The vulnerability is only present if the program re-uses
│                       │       │                   decompressor instances across multiple decompression calls
│                       │       │                   even after a `MemoryError` is raised during decompression.
│                       │       │                   Using the helper functions to one-shot decompress data such
│                       │       │                    as `lzma.decompress()`, `bz2.decompress()`,
│                       │       │                   `gzip.decompress()`, and `zlib.decompress()` are not
│                       │       │                   affected as a new decompressor instance is used per call.
│                       │       │                   If the decompressor instance is not re-used after an error
│                       │       │                   condition, this usage is similarly not vulnerable. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-416 
│                       │       │                  ├ [1]: CWE-787 
│                       │       │                  ╰ [2]: CWE-825 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 9.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :H/A:H 
│                       │       │                            ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       3/10 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [42]: https://access.redhat.com/security/cve/CVE-2026-6100 
│                       │       │                  ├ [43]: https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [44]: https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [45]: https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [46]: https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [52]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [53]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [54]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [55]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [56]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [57]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [58]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [59]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [60]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [61]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [62]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [63]: https://github.com/python/cpython/commit/47128e64f98
│                       │       │                  │       c3a20271138a98c2922bea2a3ee0e 
│                       │       │                  ├ [64]: https://github.com/python/cpython/commit/6a5f79c8d7b
│                       │       │                  │       bf22b083b240910c7a8781a59437d 
│                       │       │                  ├ [65]: https://github.com/python/cpython/commit/8fc66aef6d7
│                       │       │                  │       b3ae58f43f5c66f9366cc8cbbfcd2 
│                       │       │                  ├ [66]: https://github.com/python/cpython/commit/c3cf71c3366
│                       │       │                  │       fe49acb776a639405c0eea6169c20 
│                       │       │                  ├ [67]: https://github.com/python/cpython/commit/e20c6c9667c
│                       │       │                  │       99ecaab96e1a2b3767082841ffc8b 
│                       │       │                  ├ [68]: https://github.com/python/cpython/issues/148395 
│                       │       │                  ├ [69]: https://github.com/python/cpython/pull/148396 
│                       │       │                  ├ [70]: https://linux.oracle.com/cve/CVE-2026-6100.html 
│                       │       │                  ├ [71]: https://linux.oracle.com/errata/ELSA-2026-19216.html 
│                       │       │                  ├ [72]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/HTWB2Z6KT5QQX4RYEZAFININDHNOSI
│                       │       │                  │       F3/ 
│                       │       │                  ├ [73]: https://nvd.nist.gov/vuln/detail/CVE-2026-6100 
│                       │       │                  ├ [74]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-6100.json 
│                       │       │                  ├ [75]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [76]: https://www.cve.org/CVERecord?id=CVE-2026-6100 
│                       │       ├ PublishedDate   : 2026-04-13T18:16:31.297Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T03:21:11.023Z 
│                       ├ [63]  ╭ VulnerabilityID : CVE-2026-7774 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7774 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:22fc560e905bd527c58fa4cdf2a2744718c62d5fa462661103e9
│                       │       │                   1f2d401f9d30 
│                       │       ├ Title           : python: CPython: Python tarfile: Arbitrary file write via
│                       │       │                   crafted link entries 
│                       │       ├ Description     : tarfile.data_filter could be bypassed using crafted link
│                       │       │                   entries, including symlinks with empty or directory-like
│                       │       │                   names, to redirect later archive members outside the
│                       │       │                   intended extraction directory. This allowed a malicious tar
│                       │       │                    archive to cause tarfile.extractall() to write files
│                       │       │                   outside the destination directory, subject to the
│                       │       │                   permissions of the extracting process. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:A/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.9 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       4/9 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7774 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/0478bd83d82
│                       │       │                  │       b255e0f29f613367a59d261e7eaa2 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/0d28f5e46e1
│                       │       │                  │       51718972dfabd91205444d0037b6d 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/578411982c1
│                       │       │                  │       6f753f4893532510099ef665117da 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/5cf47a248c3
│                       │       │                  │       5c375d610b87b2f72fd1ed454b558 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/74cca9a92fb
│                       │       │                  │       7d653e404843a56b8bdc7b0afdbbf 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149486 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149487 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/4FU62L2M6RMMHT2QPGQNPEHHUND7CE
│                       │       │                  │       X5/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-7774 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-7774 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          04/9 
│                       │       ├ PublishedDate   : 2026-06-04T16:16:42.103Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:02:56.613Z 
│                       ├ [64]  ╭ VulnerabilityID : CVE-2026-8328 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8328 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:de7d9c8432f806dce5e29e502897b59a46c0193771d77e2ea795
│                       │       │                   086c25d4cc86 
│                       │       ├ Title           : The ftpcp() function in Lib/ftplib.py was not updated when 
│                       │       │                    CVE-2021-4 ... 
│                       │       ├ Description     : The ftpcp() function in Lib/ftplib.py was not updated when
│                       │       │                   
│                       │       │                   CVE-2021-4189 was fixed. While makepasv() was patched to
│                       │       │                   replace 
│                       │       │                   server-supplied PASV host addresses with the actual peer
│                       │       │                   address 
│                       │       │                   (getpeername()[0]), ftpcp() still calls parse227() directly
│                       │       │                    and passes 
│                       │       │                   the raw attacker-controllable IP address and port to
│                       │       │                   target.sendport(). This patch is related to
│                       │       │                   CVE-2021-4189. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-918 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ─ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                            │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                            ╰ V40Score : 5.9 
│                       │       ├ References       ╭ [0] : https://github.com/python/cpython/commit/2bbcf3fb7a4
│                       │       │                  │       20a05605576c0f9468d4675381b5f 
│                       │       │                  ├ [1] : https://github.com/python/cpython/commit/5dadc64673c
│                       │       │                  │       e875ebfb24163907777dae0f6ca06 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/7d95a1dc738
│                       │       │                  │       2b55cba7fdd6a110336077584a4f0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/bb3446dda6c
│                       │       │                  │       49b32e67c11dbbbf221b40be00763 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/c88704431ea
│                       │       │                  │       3248ca769384c13856330976fac1d 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/eac4fe3b2c7
│                       │       │                  │       7693790a5ef7dfab127c1fee81bf9 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/ef12d0dc824
│                       │       │                  │       baccf737bba1458e5eed3d1e0fceb 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/87451 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149648 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/ITF2BAPBQEPYK3LDMPRSY435JGNHYN
│                       │       │                  │       DP/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-8328 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-8328 
│                       │       ├ PublishedDate   : 2026-05-13T21:16:50.167Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:56.797Z 
│                       ├ [65]  ╭ VulnerabilityID : CVE-2026-9669 
│                       │       ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                       │       ├ PkgName         : libpython3.14-stdlib 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 8841f0bbc38a028c 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9669 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b1da784631650026f6af6edb481a7b0220060995a2b289822530
│                       │       │                   d81d481b0e57 
│                       │       ├ Title           : python: Python: Denial of Service via out-of-bounds write
│                       │       │                   in BZ2 decompression 
│                       │       ├ Description     : bz2.BZ2Decompressor objects could be reused after a
│                       │       │                   decompression error. If an application caught the resulting
│                       │       │                    OSError and retried with the same decompressor, crafted
│                       │       │                   input could cause the decompressor to resume from an
│                       │       │                   invalid internal state and perform out-of-bounds writes to
│                       │       │                   a stack buffer. This could crash the process when
│                       │       │                   processing untrusted data. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-121 
│                       │       ├ VendorSeverity   ╭ bitnami: 3 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:H/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 8.2 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:H 
│                       │       │                            ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       8/17 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9669 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/157a5df8cb5
│                       │       │                  │       d82b33f918a7489e72ce95ceb12b6 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/5755d0f0839
│                       │       │                  │       49ff3c5bf3a37e673e24e306b036e 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/619a12b2e54
│                       │       │                  │       5391dc436b3af79dda22337382a6f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/d3ca26983df
│                       │       │                  │       bccdf609f24ff5877dc3118e4702d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/issues/150599 
│                       │       │                  ├ [7] : https://github.com/python/cpython/pull/150600 
│                       │       │                  ├ [8] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/DBJZETMGUIFK7DVUWMOXHD3Z6IX2QP
│                       │       │                  │       SX/ 
│                       │       │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-9669 
│                       │       │                  ├ [10]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-9669 
│                       │       ├ PublishedDate   : 2026-06-08T23:17:25.17Z 
│                       │       ╰ LastModifiedDate: 2026-06-23T18:18:11.127Z 
│                       ├ [66]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ff5e7b67d2385233 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ef54634e9b16aa0237e877c962a7656b4c6ea13b1287c5af1a2a
│                       │       │                   bb625f454fa5 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [67]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ff5e7b67d2385233 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:399fa59534626ee49853c701b5470246d60bd1579395e85777ad
│                       │       │                   43716738c96a 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [68]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                       │       ├ PkgName         : libsystemd0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 68ed9dc5cf416dae 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b2aa4a4def5219d7dfe04b514097ac39e43dfceae59e7c4e64c4
│                       │       │                   3872470d6024 
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
│                       ├ [69]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libudev1@259.5-0ubuntu3 
│                       │       ├ PkgName         : libudev1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                       │       │                  │       stro=ubuntu-26.04 
│                       │       │                  ╰ UID : 419f3d2219f938db 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c1141c6f398f518c43579cca2e13f271a1d10c4693ec34d361bc
│                       │       │                   a7b5442faee4 
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
│                       ├ [70]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 41d4afb2fde363cf 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f5c50fd42fbbf5d0a0459e908c8daadd37682e34f4ddad97fd55
│                       │       │                   87af293a20e5 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [71]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 41d4afb2fde363cf 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d57c3e886c1bc715e580041bd3cbac6f31efb7a5bd41de62fc17
│                       │       │                   1ca0fe30829a 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [72]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e1bfbadc9113c00a 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6f2f8c7bd92e7bccc202280de30b3fcbf1882067601ae8e7c91f
│                       │       │                   2a0f750ac9b3 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [73]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e1bfbadc9113c00a 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dca291ec7a0f3b508221f06255b948f08f90b651035556614482
│                       │       │                   3bccbd8b98b3 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [74]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : login.defs 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : eaf648d5e4e975f7 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2f63e28ed6053e1d961e1a59c1e8363fccfe2badb1fb3895ccc6
│                       │       │                   cf9eadf5d444 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [75]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a4558f1949e85795bbc7ca8a71157863523b8b4039a054a92fdf
│                       │       │                   3c5e6daea7a9 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [76]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dd1e04ec1bb2a60e3fd6bb768ed24366d2e36780a201e696bcc3
│                       │       │                   86c762b6cba5 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ├ [77]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : passwd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e6ebfac85406f0d5 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ecd2dbb8ccd166308d48129d6fe3bea01fc427205f71318f405f
│                       │       │                   a06681b43f0a 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                       ├ [78]  ╭ VulnerabilityID : CVE-2026-1502 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1502 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f1e5d70f39c9b60553cfaca1ca41927261c1aa538d454cd21003
│                       │       │                   fa2ba22e6146 
│                       │       ├ Title           : python: Python: HTTP header injection via CR/LF in proxy
│                       │       │                   tunnel headers 
│                       │       ├ Description     : CR/LF bytes were not rejected by HTTP client proxy tunnel
│                       │       │                   headers or host. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-93 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:P/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 4.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       1/4 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-1502 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/05ed7ce7ae9
│                       │       │                  │       e17c23a04085b2539fe6d6d3cef69 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/56b7100b04e
│                       │       │                  │       44ea27989242b176beb8f016b2c53 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/58703ec1bdd
│                       │       │                  │       1eb075e8b01a0c427683ce594dd3e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/9e071c9b28c
│                       │       │                  │       17f347f81b388a003d4eeb3c7a8dd 
│                       │       │                  ├ [45]: https://github.com/python/cpython/commit/b1cf9016335
│                       │       │                  │       cb637c5a425032e8274a224f4b2ed 
│                       │       │                  ├ [46]: https://github.com/python/cpython/commit/c00c386faa5
│                       │       │                  │       79ad71196d33408644478488e43ec 
│                       │       │                  ├ [47]: https://github.com/python/cpython/issues/146211 
│                       │       │                  ├ [48]: https://github.com/python/cpython/pull/146212 
│                       │       │                  ├ [49]: https://linux.oracle.com/cve/CVE-2026-1502.html 
│                       │       │                  ├ [50]: https://linux.oracle.com/errata/ELSA-2026-19177.html 
│                       │       │                  ├ [51]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/2IVPAEQWUJBCTQZEJEVTYCIKSMQPGR
│                       │       │                  │       Z3/ 
│                       │       │                  ├ [52]: https://nvd.nist.gov/vuln/detail/CVE-2026-1502 
│                       │       │                  ├ [53]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [54]: https://www.cve.org/CVERecord?id=CVE-2026-1502 
│                       │       ├ PublishedDate   : 2026-04-10T18:16:40.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:48.007Z 
│                       ├ [79]  ╭ VulnerabilityID : CVE-2026-3276 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3276 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e1d6e62efe8d7de15ffda11a8f005c7a5421afc8ee3b92f4eec7
│                       │       │                   11fd93dab050 
│                       │       ├ Title           : python: Python unicodedata: Denial of Service due to
│                       │       │                   excessive CPU consumption 
│                       │       ├ Description     : unicodedata.normalize() can take excessive CPU time when
│                       │       │                   processing
│                       │       │                   specially crafted Unicode input containing long runs of
│                       │       │                   combining characters
│                       │       │                   with alternating Canonical Combining Class values.
│                       │       │                   This affects all normalization forms. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-407 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:L/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:L 
│                       │       │                            ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       3/15 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-3276 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/6b505d1f41f
│                       │       │                  │       8f3ea0fe5a4786d3a8fff1875cfc0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/90748760d38
│                       │       │                  │       ca3ac5fc6788a69becab905c95598 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/991224b1e83
│                       │       │                  │       11c85f198f6dd8208bf8cff7fc26f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/ba785b88add
│                       │       │                  │       96acbf403d65cb157fb2743a33a32 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/c5512bd7c1d
│                       │       │                  │       c28055660565275012766941d3066 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149079 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149080 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/PP5HB4K7727OBBM76KA2ILID76K3OZ
│                       │       │                  │       GZ/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-3276 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-3276 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          03/15 
│                       │       ├ PublishedDate   : 2026-06-03T16:16:29.253Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:19.58Z 
│                       ├ [80]  ╭ VulnerabilityID : CVE-2026-4786 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4786 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:edc41b80bef8b851661b3df0f45f8b4f813cee9ccb3ba8108208
│                       │       │                   efac9709a768 
│                       │       ├ Title           : python: cpython: Python: Arbitrary code execution via
│                       │       │                   command injection in webbrowser.open() API 
│                       │       ├ Description     : Mitgation of CVE-2026-4519 was incomplete. If the URL
│                       │       │                   contained "%action" the mitigation could be bypassed for
│                       │       │                   certain browser types the "webbrowser.open()" API could
│                       │       │                   have commands injected into the underlying shell. See
│                       │       │                   CVE-2026-4519 for details. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-77 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19589 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:22144 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:28247 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:35838 
│                       │       │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [46]: https://access.redhat.com/security/cve/CVE-2026-4786 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [52]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [53]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [54]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [55]: https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [56]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [57]: https://github.com/python/cpython/commit/28b4ad38067
│                       │       │                  │       bbdad34edfcd03ad2de5f06387e53 
│                       │       │                  ├ [58]: https://github.com/python/cpython/commit/c5767a72838
│                       │       │                  │       a8dda9d6dc5d3558075b055c56bca 
│                       │       │                  ├ [59]: https://github.com/python/cpython/commit/d22922c8a79
│                       │       │                  │       58353689dc4763dd72da2dea03fff 
│                       │       │                  ├ [60]: https://github.com/python/cpython/commit/d6d68494be7
│                       │       │                  │       0bdbda20f89f83801ba52ec37daa4 
│                       │       │                  ├ [61]: https://github.com/python/cpython/commit/f4654824ae0
│                       │       │                  │       850ac87227fb270f9057477946769 
│                       │       │                  ├ [62]: https://github.com/python/cpython/issues/148169 
│                       │       │                  ├ [63]: https://github.com/python/cpython/pull/148170 
│                       │       │                  ├ [64]: https://linux.oracle.com/cve/CVE-2026-4786.html 
│                       │       │                  ├ [65]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [66]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/JQDUNJVB4AQNTJECSUKOBDU3XCJIPS
│                       │       │                  │       E5/ 
│                       │       │                  ├ [67]: https://nvd.nist.gov/vuln/detail/CVE-2026-4786 
│                       │       │                  ├ [68]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-4786.json 
│                       │       │                  ├ [69]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [70]: https://www.cve.org/CVERecord?id=CVE-2026-4786 
│                       │       ├ PublishedDate   : 2026-04-13T22:16:30.413Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T13:17:02.897Z 
│                       ├ [81]  ╭ VulnerabilityID : CVE-2026-5713 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5713 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b54503e9ca5408a34f2cbd4d07aa0d4f8fdf34aa257ef0ef23d7
│                       │       │                   4140a78fa7ea 
│                       │       ├ Title           : python: Python: Information disclosure and arbitrary code
│                       │       │                   execution via remote debugging with a malicious process. 
│                       │       ├ Description     : The "profiling.sampling" module (Python 3.15+) and "asyncio
│                       │       │                    introspection capabilities" (3.14+, "python -m asyncio ps"
│                       │       │                    and "python -m asyncio pstree") features could be used to
│                       │       │                   read and write addresses in a privileged process if that
│                       │       │                   process connected to a malicious or "infected" Python
│                       │       │                   process via the remote debugging feature. This
│                       │       │                   vulnerability requires persistently and repeatedly
│                       │       │                   connecting to the process to be exploited, even after the
│                       │       │                   connecting process crashes with high likelihood due to
│                       │       │                   ASLR. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-121 
│                       │       │                  ╰ [1]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:P/PR:H/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-5713 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2431367 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2458239 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2431367 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2458239 
│                       │       │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0865 
│                       │       │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5713 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [30]: https://errata.almalinux.org/10/ALSA-2026-19019.html 
│                       │       │                  ├ [31]: https://errata.rockylinux.org/RLSA-2026:19176 
│                       │       │                  ├ [32]: https://github.com/python/cpython/commit/289fd2c97a7
│                       │       │                  │       e5aecb8b69f94f5e838ccfeee7e67 
│                       │       │                  ├ [33]: https://github.com/python/cpython/commit/316f6265b7f
│                       │       │                  │       9ca4ffed5346b747475ef1943f35d 
│                       │       │                  ├ [34]: https://github.com/python/cpython/issues/148178 
│                       │       │                  ├ [35]: https://github.com/python/cpython/pull/148187 
│                       │       │                  ├ [36]: https://linux.oracle.com/cve/CVE-2026-5713.html 
│                       │       │                  ├ [37]: https://linux.oracle.com/errata/ELSA-2026-19176.html 
│                       │       │                  ├ [38]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/OG4RHARYSNIE22GGOMVMCRH76L5HKP
│                       │       │                  │       LM/ 
│                       │       │                  ├ [39]: https://nvd.nist.gov/vuln/detail/CVE-2026-5713 
│                       │       │                  ├ [40]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [41]: https://www.cve.org/CVERecord?id=CVE-2026-5713 
│                       │       ├ PublishedDate   : 2026-04-14T16:16:48.717Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:32.743Z 
│                       ├ [82]  ╭ VulnerabilityID : CVE-2026-6019 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6019 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9981bce303d07d32f3681f536514b17fbbd3d69e2166ef17892a
│                       │       │                   d85e53a6328b 
│                       │       ├ Title           : python: Python: Cross-Site Scripting (XSS) vulnerability in
│                       │       │                    http.cookies module 
│                       │       ├ Description     : http.cookies.Morsel.js_output() returns an inline <script>
│                       │       │                   snippet and only escapes " for JavaScript string context.
│                       │       │                   It does not neutralize the HTML parser-sensitive sequence
│                       │       │                   </script> inside the generated script element. Mitigation
│                       │       │                   base64-encodes the cookie value to disallow escaping using
│                       │       │                   cookie value. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-150 
│                       │       │                  ╰ [1]: CWE-116 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 1 
│                       │       │                  ├ nvd        : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:N/VC:
│                       │       │                  │         │            L/VI:L/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 2.1 
│                       │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 6.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6019 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2460869 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6019 
│                       │       │                  ├ [8] : https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:28247 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3c59b8b53fc
│                       │       │                  │       75c7f9578d16fb8201ceb43e8f76c 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/76b3923d688
│                       │       │                  │       c0efc580658476c5f525ec8735104 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/f795e042043
│                       │       │                  │       dfe26c42e1971d4502c1cdc4c65b8 
│                       │       │                  ├ [13]: https://github.com/python/cpython/issues/90309 
│                       │       │                  ├ [14]: https://github.com/python/cpython/pull/148848 
│                       │       │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-6019.html 
│                       │       │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [17]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/IVNWGV2BBNC3RHQAFS22UP4DY56SAX
│                       │       │                  │       X3/ 
│                       │       │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6019 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-6019 
│                       │       ├ PublishedDate   : 2026-04-22T20:16:42.617Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:00:10.56Z 
│                       ├ [83]  ╭ VulnerabilityID : CVE-2026-6100 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6100 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:414ccec3317b82a3113afdb53f2c9eebd009b945ec61491cfbe5
│                       │       │                   5096c1cc5a27 
│                       │       ├ Title           : python: Python: Arbitrary code execution or information
│                       │       │                   disclosure via use-after-free in decompression modules 
│                       │       ├ Description     : Use-after-free (UAF) was possible in the
│                       │       │                   `lzma.LZMADecompressor`, `bz2.BZ2Decompressor`, and
│                       │       │                   `gzip.GzipFile` when a memory allocation fails with a
│                       │       │                   `MemoryError` and the decompression instance is re-used.
│                       │       │                   This scenario can be triggered if the process is under
│                       │       │                   memory pressure. The fix cleans up the dangling pointer in
│                       │       │                   this specific error condition.
│                       │       │                   
│                       │       │                   The vulnerability is only present if the program re-uses
│                       │       │                   decompressor instances across multiple decompression calls
│                       │       │                   even after a `MemoryError` is raised during decompression.
│                       │       │                   Using the helper functions to one-shot decompress data such
│                       │       │                    as `lzma.decompress()`, `bz2.decompress()`,
│                       │       │                   `gzip.decompress()`, and `zlib.decompress()` are not
│                       │       │                   affected as a new decompressor instance is used per call.
│                       │       │                   If the decompressor instance is not re-used after an error
│                       │       │                   condition, this usage is similarly not vulnerable. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-416 
│                       │       │                  ├ [1]: CWE-787 
│                       │       │                  ╰ [2]: CWE-825 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 9.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :H/A:H 
│                       │       │                            ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       3/10 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [42]: https://access.redhat.com/security/cve/CVE-2026-6100 
│                       │       │                  ├ [43]: https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [44]: https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [45]: https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [46]: https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [52]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [53]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [54]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [55]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [56]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [57]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [58]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [59]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [60]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [61]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [62]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [63]: https://github.com/python/cpython/commit/47128e64f98
│                       │       │                  │       c3a20271138a98c2922bea2a3ee0e 
│                       │       │                  ├ [64]: https://github.com/python/cpython/commit/6a5f79c8d7b
│                       │       │                  │       bf22b083b240910c7a8781a59437d 
│                       │       │                  ├ [65]: https://github.com/python/cpython/commit/8fc66aef6d7
│                       │       │                  │       b3ae58f43f5c66f9366cc8cbbfcd2 
│                       │       │                  ├ [66]: https://github.com/python/cpython/commit/c3cf71c3366
│                       │       │                  │       fe49acb776a639405c0eea6169c20 
│                       │       │                  ├ [67]: https://github.com/python/cpython/commit/e20c6c9667c
│                       │       │                  │       99ecaab96e1a2b3767082841ffc8b 
│                       │       │                  ├ [68]: https://github.com/python/cpython/issues/148395 
│                       │       │                  ├ [69]: https://github.com/python/cpython/pull/148396 
│                       │       │                  ├ [70]: https://linux.oracle.com/cve/CVE-2026-6100.html 
│                       │       │                  ├ [71]: https://linux.oracle.com/errata/ELSA-2026-19216.html 
│                       │       │                  ├ [72]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/HTWB2Z6KT5QQX4RYEZAFININDHNOSI
│                       │       │                  │       F3/ 
│                       │       │                  ├ [73]: https://nvd.nist.gov/vuln/detail/CVE-2026-6100 
│                       │       │                  ├ [74]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-6100.json 
│                       │       │                  ├ [75]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [76]: https://www.cve.org/CVERecord?id=CVE-2026-6100 
│                       │       ├ PublishedDate   : 2026-04-13T18:16:31.297Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T03:21:11.023Z 
│                       ├ [84]  ╭ VulnerabilityID : CVE-2026-7774 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7774 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bde45d94f6cd09b2d5e89119e68144ff639b7769783e017e2d7b
│                       │       │                   89a0c6ed01af 
│                       │       ├ Title           : python: CPython: Python tarfile: Arbitrary file write via
│                       │       │                   crafted link entries 
│                       │       ├ Description     : tarfile.data_filter could be bypassed using crafted link
│                       │       │                   entries, including symlinks with empty or directory-like
│                       │       │                   names, to redirect later archive members outside the
│                       │       │                   intended extraction directory. This allowed a malicious tar
│                       │       │                    archive to cause tarfile.extractall() to write files
│                       │       │                   outside the destination directory, subject to the
│                       │       │                   permissions of the extracting process. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:A/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.9 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       4/9 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7774 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/0478bd83d82
│                       │       │                  │       b255e0f29f613367a59d261e7eaa2 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/0d28f5e46e1
│                       │       │                  │       51718972dfabd91205444d0037b6d 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/578411982c1
│                       │       │                  │       6f753f4893532510099ef665117da 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/5cf47a248c3
│                       │       │                  │       5c375d610b87b2f72fd1ed454b558 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/74cca9a92fb
│                       │       │                  │       7d653e404843a56b8bdc7b0afdbbf 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149486 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149487 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/4FU62L2M6RMMHT2QPGQNPEHHUND7CE
│                       │       │                  │       X5/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-7774 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-7774 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          04/9 
│                       │       ├ PublishedDate   : 2026-06-04T16:16:42.103Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:02:56.613Z 
│                       ├ [85]  ╭ VulnerabilityID : CVE-2026-8328 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8328 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7e3ad2d36f6a64b1e65174ffa154aa43b9320d6db36e4ccb3eb7
│                       │       │                   c348128b5b8c 
│                       │       ├ Title           : The ftpcp() function in Lib/ftplib.py was not updated when 
│                       │       │                    CVE-2021-4 ... 
│                       │       ├ Description     : The ftpcp() function in Lib/ftplib.py was not updated when
│                       │       │                   
│                       │       │                   CVE-2021-4189 was fixed. While makepasv() was patched to
│                       │       │                   replace 
│                       │       │                   server-supplied PASV host addresses with the actual peer
│                       │       │                   address 
│                       │       │                   (getpeername()[0]), ftpcp() still calls parse227() directly
│                       │       │                    and passes 
│                       │       │                   the raw attacker-controllable IP address and port to
│                       │       │                   target.sendport(). This patch is related to
│                       │       │                   CVE-2021-4189. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-918 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ─ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                            │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                            ╰ V40Score : 5.9 
│                       │       ├ References       ╭ [0] : https://github.com/python/cpython/commit/2bbcf3fb7a4
│                       │       │                  │       20a05605576c0f9468d4675381b5f 
│                       │       │                  ├ [1] : https://github.com/python/cpython/commit/5dadc64673c
│                       │       │                  │       e875ebfb24163907777dae0f6ca06 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/7d95a1dc738
│                       │       │                  │       2b55cba7fdd6a110336077584a4f0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/bb3446dda6c
│                       │       │                  │       49b32e67c11dbbbf221b40be00763 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/c88704431ea
│                       │       │                  │       3248ca769384c13856330976fac1d 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/eac4fe3b2c7
│                       │       │                  │       7693790a5ef7dfab127c1fee81bf9 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/ef12d0dc824
│                       │       │                  │       baccf737bba1458e5eed3d1e0fceb 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/87451 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149648 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/ITF2BAPBQEPYK3LDMPRSY435JGNHYN
│                       │       │                  │       DP/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-8328 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-8328 
│                       │       ├ PublishedDate   : 2026-05-13T21:16:50.167Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:56.797Z 
│                       ├ [86]  ╭ VulnerabilityID : CVE-2026-9669 
│                       │       ├ PkgID           : python3.14@3.14.4-1 
│                       │       ├ PkgName         : python3.14 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : 5c38e5558a798bb7 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9669 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9ee5531a195921cc058fe22f9d552beb76dfb80dfeea0a9a46a4
│                       │       │                   243e166f8d74 
│                       │       ├ Title           : python: Python: Denial of Service via out-of-bounds write
│                       │       │                   in BZ2 decompression 
│                       │       ├ Description     : bz2.BZ2Decompressor objects could be reused after a
│                       │       │                   decompression error. If an application caught the resulting
│                       │       │                    OSError and retried with the same decompressor, crafted
│                       │       │                   input could cause the decompressor to resume from an
│                       │       │                   invalid internal state and perform out-of-bounds writes to
│                       │       │                   a stack buffer. This could crash the process when
│                       │       │                   processing untrusted data. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-121 
│                       │       ├ VendorSeverity   ╭ bitnami: 3 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:H/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 8.2 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:H 
│                       │       │                            ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       8/17 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9669 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/157a5df8cb5
│                       │       │                  │       d82b33f918a7489e72ce95ceb12b6 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/5755d0f0839
│                       │       │                  │       49ff3c5bf3a37e673e24e306b036e 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/619a12b2e54
│                       │       │                  │       5391dc436b3af79dda22337382a6f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/d3ca26983df
│                       │       │                  │       bccdf609f24ff5877dc3118e4702d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/issues/150599 
│                       │       │                  ├ [7] : https://github.com/python/cpython/pull/150600 
│                       │       │                  ├ [8] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/DBJZETMGUIFK7DVUWMOXHD3Z6IX2QP
│                       │       │                  │       SX/ 
│                       │       │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-9669 
│                       │       │                  ├ [10]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-9669 
│                       │       ├ PublishedDate   : 2026-06-08T23:17:25.17Z 
│                       │       ╰ LastModifiedDate: 2026-06-23T18:18:11.127Z 
│                       ├ [87]  ╭ VulnerabilityID : CVE-2026-1502 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1502 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f6dffeebd3952aae6b11a00639846f6bc9cdabc98ca6e3f927b2
│                       │       │                   fe9c9510ab9d 
│                       │       ├ Title           : python: Python: HTTP header injection via CR/LF in proxy
│                       │       │                   tunnel headers 
│                       │       ├ Description     : CR/LF bytes were not rejected by HTTP client proxy tunnel
│                       │       │                   headers or host. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-93 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ azure      : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:P/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 4.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       1/4 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-1502 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-13837 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-15282 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-59375 
│                       │       │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       025-6075 
│                       │       │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0672 
│                       │       │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                       │       │                  ├ [41]: https://github.com/python/cpython/commit/05ed7ce7ae9
│                       │       │                  │       e17c23a04085b2539fe6d6d3cef69 
│                       │       │                  ├ [42]: https://github.com/python/cpython/commit/56b7100b04e
│                       │       │                  │       44ea27989242b176beb8f016b2c53 
│                       │       │                  ├ [43]: https://github.com/python/cpython/commit/58703ec1bdd
│                       │       │                  │       1eb075e8b01a0c427683ce594dd3e 
│                       │       │                  ├ [44]: https://github.com/python/cpython/commit/9e071c9b28c
│                       │       │                  │       17f347f81b388a003d4eeb3c7a8dd 
│                       │       │                  ├ [45]: https://github.com/python/cpython/commit/b1cf9016335
│                       │       │                  │       cb637c5a425032e8274a224f4b2ed 
│                       │       │                  ├ [46]: https://github.com/python/cpython/commit/c00c386faa5
│                       │       │                  │       79ad71196d33408644478488e43ec 
│                       │       │                  ├ [47]: https://github.com/python/cpython/issues/146211 
│                       │       │                  ├ [48]: https://github.com/python/cpython/pull/146212 
│                       │       │                  ├ [49]: https://linux.oracle.com/cve/CVE-2026-1502.html 
│                       │       │                  ├ [50]: https://linux.oracle.com/errata/ELSA-2026-19177.html 
│                       │       │                  ├ [51]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/2IVPAEQWUJBCTQZEJEVTYCIKSMQPGR
│                       │       │                  │       Z3/ 
│                       │       │                  ├ [52]: https://nvd.nist.gov/vuln/detail/CVE-2026-1502 
│                       │       │                  ├ [53]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [54]: https://www.cve.org/CVERecord?id=CVE-2026-1502 
│                       │       ├ PublishedDate   : 2026-04-10T18:16:40.97Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:48.007Z 
│                       ├ [88]  ╭ VulnerabilityID : CVE-2026-3276 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3276 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bb98a19dc0e3b4f252305ae2ca653e6cbc9dc51e03d4fbd351d8
│                       │       │                   9ce449c1b518 
│                       │       ├ Title           : python: Python unicodedata: Denial of Service due to
│                       │       │                   excessive CPU consumption 
│                       │       ├ Description     : unicodedata.normalize() can take excessive CPU time when
│                       │       │                   processing
│                       │       │                   specially crafted Unicode input containing long runs of
│                       │       │                   combining characters
│                       │       │                   with alternating Canonical Combining Class values.
│                       │       │                   This affects all normalization forms. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-407 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:L/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:L 
│                       │       │                            ╰ V3Score : 5.3 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       3/15 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-3276 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/6b505d1f41f
│                       │       │                  │       8f3ea0fe5a4786d3a8fff1875cfc0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/90748760d38
│                       │       │                  │       ca3ac5fc6788a69becab905c95598 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/991224b1e83
│                       │       │                  │       11c85f198f6dd8208bf8cff7fc26f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/ba785b88add
│                       │       │                  │       96acbf403d65cb157fb2743a33a32 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/c5512bd7c1d
│                       │       │                  │       c28055660565275012766941d3066 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149079 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149080 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/PP5HB4K7727OBBM76KA2ILID76K3OZ
│                       │       │                  │       GZ/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-3276 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-3276 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          03/15 
│                       │       ├ PublishedDate   : 2026-06-03T16:16:29.253Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:19.58Z 
│                       ├ [89]  ╭ VulnerabilityID : CVE-2026-4786 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4786 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0949dfeea3f457372cba036669b11439fa5b540938b5c0324a5f
│                       │       │                   42b1e66c8bf6 
│                       │       ├ Title           : python: cpython: Python: Arbitrary code execution via
│                       │       │                   command injection in webbrowser.open() API 
│                       │       ├ Description     : Mitgation of CVE-2026-4519 was incomplete. If the URL
│                       │       │                   contained "%action" the mitigation could be bypassed for
│                       │       │                   certain browser types the "webbrowser.open()" API could
│                       │       │                   have commands injected into the underlying shell. See
│                       │       │                   CVE-2026-4519 for details. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-77 
│                       │       │                  ╰ [1]: CWE-88 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 3 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 7 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:L 
│                       │       │                            ╰ V3Score : 7.1 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19589 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:22144 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:28247 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:35838 
│                       │       │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [46]: https://access.redhat.com/security/cve/CVE-2026-4786 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [52]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [53]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [54]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [55]: https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [56]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [57]: https://github.com/python/cpython/commit/28b4ad38067
│                       │       │                  │       bbdad34edfcd03ad2de5f06387e53 
│                       │       │                  ├ [58]: https://github.com/python/cpython/commit/c5767a72838
│                       │       │                  │       a8dda9d6dc5d3558075b055c56bca 
│                       │       │                  ├ [59]: https://github.com/python/cpython/commit/d22922c8a79
│                       │       │                  │       58353689dc4763dd72da2dea03fff 
│                       │       │                  ├ [60]: https://github.com/python/cpython/commit/d6d68494be7
│                       │       │                  │       0bdbda20f89f83801ba52ec37daa4 
│                       │       │                  ├ [61]: https://github.com/python/cpython/commit/f4654824ae0
│                       │       │                  │       850ac87227fb270f9057477946769 
│                       │       │                  ├ [62]: https://github.com/python/cpython/issues/148169 
│                       │       │                  ├ [63]: https://github.com/python/cpython/pull/148170 
│                       │       │                  ├ [64]: https://linux.oracle.com/cve/CVE-2026-4786.html 
│                       │       │                  ├ [65]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [66]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/JQDUNJVB4AQNTJECSUKOBDU3XCJIPS
│                       │       │                  │       E5/ 
│                       │       │                  ├ [67]: https://nvd.nist.gov/vuln/detail/CVE-2026-4786 
│                       │       │                  ├ [68]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-4786.json 
│                       │       │                  ├ [69]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [70]: https://www.cve.org/CVERecord?id=CVE-2026-4786 
│                       │       ├ PublishedDate   : 2026-04-13T22:16:30.413Z 
│                       │       ╰ LastModifiedDate: 2026-07-06T13:17:02.897Z 
│                       ├ [90]  ╭ VulnerabilityID : CVE-2026-5713 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5713 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:76f12870b8fc63a543de21f1df2342439afe73ab798c20ba665e
│                       │       │                   91bc2b24429c 
│                       │       ├ Title           : python: Python: Information disclosure and arbitrary code
│                       │       │                   execution via remote debugging with a malicious process. 
│                       │       ├ Description     : The "profiling.sampling" module (Python 3.15+) and "asyncio
│                       │       │                    introspection capabilities" (3.14+, "python -m asyncio ps"
│                       │       │                    and "python -m asyncio pstree") features could be used to
│                       │       │                   read and write addresses in a privileged process if that
│                       │       │                   process connected to a malicious or "infected" Python
│                       │       │                   process via the remote debugging feature. This
│                       │       │                   vulnerability requires persistently and repeatedly
│                       │       │                   connecting to the process to be exploited, even after the
│                       │       │                   connecting process crashes with high likelihood due to
│                       │       │                   ASLR. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-121 
│                       │       │                  ╰ [1]: CWE-125 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:P/PR:H/UI:A/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 5.3 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       5/6 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-5713 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2431367 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [6] : https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [7] : https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [8] : https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [9] : https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [10]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [11]: https://bugzilla.redhat.com/2458239 
│                       │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2431367 
│                       │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                       │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                       │       │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                       │       │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                       │       │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2458239 
│                       │       │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-0865 
│                       │       │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-1502 
│                       │       │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-2297 
│                       │       │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-3644 
│                       │       │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4224 
│                       │       │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-5713 
│                       │       │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [30]: https://errata.almalinux.org/10/ALSA-2026-19019.html 
│                       │       │                  ├ [31]: https://errata.rockylinux.org/RLSA-2026:19176 
│                       │       │                  ├ [32]: https://github.com/python/cpython/commit/289fd2c97a7
│                       │       │                  │       e5aecb8b69f94f5e838ccfeee7e67 
│                       │       │                  ├ [33]: https://github.com/python/cpython/commit/316f6265b7f
│                       │       │                  │       9ca4ffed5346b747475ef1943f35d 
│                       │       │                  ├ [34]: https://github.com/python/cpython/issues/148178 
│                       │       │                  ├ [35]: https://github.com/python/cpython/pull/148187 
│                       │       │                  ├ [36]: https://linux.oracle.com/cve/CVE-2026-5713.html 
│                       │       │                  ├ [37]: https://linux.oracle.com/errata/ELSA-2026-19176.html 
│                       │       │                  ├ [38]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/OG4RHARYSNIE22GGOMVMCRH76L5HKP
│                       │       │                  │       LM/ 
│                       │       │                  ├ [39]: https://nvd.nist.gov/vuln/detail/CVE-2026-5713 
│                       │       │                  ├ [40]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [41]: https://www.cve.org/CVERecord?id=CVE-2026-5713 
│                       │       ├ PublishedDate   : 2026-04-14T16:16:48.717Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:59:32.743Z 
│                       ├ [91]  ╭ VulnerabilityID : CVE-2026-6019 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6019 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:71c6da0228b704ff5a51f74f28f18c6bc2129a6aad799abb55ef
│                       │       │                   052dc6ceb405 
│                       │       ├ Title           : python: Python: Cross-Site Scripting (XSS) vulnerability in
│                       │       │                    http.cookies module 
│                       │       ├ Description     : http.cookies.Morsel.js_output() returns an inline <script>
│                       │       │                   snippet and only escapes " for JavaScript string context.
│                       │       │                   It does not neutralize the HTML parser-sensitive sequence
│                       │       │                   </script> inside the generated script element. Mitigation
│                       │       │                   base64-encodes the cookie value to disallow escaping using
│                       │       │                   cookie value. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-150 
│                       │       │                  ╰ [1]: CWE-116 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 2 
│                       │       │                  ├ bitnami    : 1 
│                       │       │                  ├ nvd        : 2 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 2 
│                       │       │                  ├ redhat     : 2 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:H/UI:N/VC:
│                       │       │                  │         │            L/VI:L/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 2.1 
│                       │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                       │       │                  │         │           :L/A:N 
│                       │       │                  │         ╰ V3Score : 6.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.8 
│                       │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:28581 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-6019 
│                       │       │                  ├ [2] : https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [3] : https://bugzilla.redhat.com/2460869 
│                       │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2460869 
│                       │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6019 
│                       │       │                  ├ [8] : https://errata.almalinux.org/10/ALSA-2026-28581.html 
│                       │       │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:28247 
│                       │       │                  ├ [10]: https://github.com/python/cpython/commit/3c59b8b53fc
│                       │       │                  │       75c7f9578d16fb8201ceb43e8f76c 
│                       │       │                  ├ [11]: https://github.com/python/cpython/commit/76b3923d688
│                       │       │                  │       c0efc580658476c5f525ec8735104 
│                       │       │                  ├ [12]: https://github.com/python/cpython/commit/f795e042043
│                       │       │                  │       dfe26c42e1971d4502c1cdc4c65b8 
│                       │       │                  ├ [13]: https://github.com/python/cpython/issues/90309 
│                       │       │                  ├ [14]: https://github.com/python/cpython/pull/148848 
│                       │       │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-6019.html 
│                       │       │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-28247.html 
│                       │       │                  ├ [17]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/IVNWGV2BBNC3RHQAFS22UP4DY56SAX
│                       │       │                  │       X3/ 
│                       │       │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-6019 
│                       │       │                  ├ [19]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-6019 
│                       │       ├ PublishedDate   : 2026-04-22T20:16:42.617Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:00:10.56Z 
│                       ├ [92]  ╭ VulnerabilityID : CVE-2026-6100 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6100 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0b772a9d812e938ab6e80d34660987ddd7ec94d267dacba67218
│                       │       │                   de7e63e5e8a2 
│                       │       ├ Title           : python: Python: Arbitrary code execution or information
│                       │       │                   disclosure via use-after-free in decompression modules 
│                       │       ├ Description     : Use-after-free (UAF) was possible in the
│                       │       │                   `lzma.LZMADecompressor`, `bz2.BZ2Decompressor`, and
│                       │       │                   `gzip.GzipFile` when a memory allocation fails with a
│                       │       │                   `MemoryError` and the decompression instance is re-used.
│                       │       │                   This scenario can be triggered if the process is under
│                       │       │                   memory pressure. The fix cleans up the dangling pointer in
│                       │       │                   this specific error condition.
│                       │       │                   
│                       │       │                   The vulnerability is only present if the program re-uses
│                       │       │                   decompressor instances across multiple decompression calls
│                       │       │                   even after a `MemoryError` is raised during decompression.
│                       │       │                   Using the helper functions to one-shot decompress data such
│                       │       │                    as `lzma.decompress()`, `bz2.decompress()`,
│                       │       │                   `gzip.decompress()`, and `zlib.decompress()` are not
│                       │       │                   affected as a new decompressor instance is used per call.
│                       │       │                   If the decompressor instance is not re-used after an error
│                       │       │                   condition, this usage is similarly not vulnerable. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ╭ [0]: CWE-416 
│                       │       │                  ├ [1]: CWE-787 
│                       │       │                  ╰ [2]: CWE-825 
│                       │       ├ VendorSeverity   ╭ alma       : 3 
│                       │       │                  ├ amazon     : 3 
│                       │       │                  ├ bitnami    : 4 
│                       │       │                  ├ oracle-oval: 3 
│                       │       │                  ├ photon     : 3 
│                       │       │                  ├ redhat     : 3 
│                       │       │                  ├ rocky      : 3 
│                       │       │                  ╰ ubuntu     : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            H/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 9.1 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                       │       │                            │           :H/A:H 
│                       │       │                            ╰ V3Score : 8.1 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/04/1
│                       │       │                  │       3/10 
│                       │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10117 
│                       │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:10140 
│                       │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:10141 
│                       │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:10711 
│                       │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:10745 
│                       │       │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:10774 
│                       │       │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:10949 
│                       │       │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:10950 
│                       │       │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:11062 
│                       │       │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:11077 
│                       │       │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:11768 
│                       │       │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:13692 
│                       │       │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:13812 
│                       │       │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:14652 
│                       │       │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:14653 
│                       │       │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:14656 
│                       │       │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:16699 
│                       │       │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:17525 
│                       │       │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:17619 
│                       │       │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:19019 
│                       │       │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:19064 
│                       │       │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:19175 
│                       │       │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:19176 
│                       │       │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:19177 
│                       │       │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:19216 
│                       │       │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:19549 
│                       │       │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:19570 
│                       │       │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:19571 
│                       │       │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:19576 
│                       │       │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:19590 
│                       │       │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:21275 
│                       │       │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:21682 
│                       │       │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:25096 
│                       │       │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:26187 
│                       │       │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:30078 
│                       │       │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:30087 
│                       │       │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:30088 
│                       │       │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:30089 
│                       │       │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:8822 
│                       │       │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:8824 
│                       │       │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:9228 
│                       │       │                  ├ [42]: https://access.redhat.com/security/cve/CVE-2026-6100 
│                       │       │                  ├ [43]: https://bugzilla.redhat.com/2395108 
│                       │       │                  ├ [44]: https://bugzilla.redhat.com/2408891 
│                       │       │                  ├ [45]: https://bugzilla.redhat.com/2418084 
│                       │       │                  ├ [46]: https://bugzilla.redhat.com/2431366 
│                       │       │                  ├ [47]: https://bugzilla.redhat.com/2431374 
│                       │       │                  ├ [48]: https://bugzilla.redhat.com/2444691 
│                       │       │                  ├ [49]: https://bugzilla.redhat.com/2448168 
│                       │       │                  ├ [50]: https://bugzilla.redhat.com/2448181 
│                       │       │                  ├ [51]: https://bugzilla.redhat.com/2449649 
│                       │       │                  ├ [52]: https://bugzilla.redhat.com/2457409 
│                       │       │                  ├ [53]: https://bugzilla.redhat.com/2457932 
│                       │       │                  ├ [54]: https://bugzilla.redhat.com/2458049 
│                       │       │                  ├ [55]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                       │       │                  ├ [56]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                       │       │                  ├ [57]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                       │       │                  ├ [58]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4519 
│                       │       │                  ├ [59]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-4786 
│                       │       │                  ├ [60]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                       │       │                  │       026-6100 
│                       │       │                  ├ [61]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                       │       │                  ├ [62]: https://errata.rockylinux.org/RLSA-2026:19216 
│                       │       │                  ├ [63]: https://github.com/python/cpython/commit/47128e64f98
│                       │       │                  │       c3a20271138a98c2922bea2a3ee0e 
│                       │       │                  ├ [64]: https://github.com/python/cpython/commit/6a5f79c8d7b
│                       │       │                  │       bf22b083b240910c7a8781a59437d 
│                       │       │                  ├ [65]: https://github.com/python/cpython/commit/8fc66aef6d7
│                       │       │                  │       b3ae58f43f5c66f9366cc8cbbfcd2 
│                       │       │                  ├ [66]: https://github.com/python/cpython/commit/c3cf71c3366
│                       │       │                  │       fe49acb776a639405c0eea6169c20 
│                       │       │                  ├ [67]: https://github.com/python/cpython/commit/e20c6c9667c
│                       │       │                  │       99ecaab96e1a2b3767082841ffc8b 
│                       │       │                  ├ [68]: https://github.com/python/cpython/issues/148395 
│                       │       │                  ├ [69]: https://github.com/python/cpython/pull/148396 
│                       │       │                  ├ [70]: https://linux.oracle.com/cve/CVE-2026-6100.html 
│                       │       │                  ├ [71]: https://linux.oracle.com/errata/ELSA-2026-19216.html 
│                       │       │                  ├ [72]: https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/HTWB2Z6KT5QQX4RYEZAFININDHNOSI
│                       │       │                  │       F3/ 
│                       │       │                  ├ [73]: https://nvd.nist.gov/vuln/detail/CVE-2026-6100 
│                       │       │                  ├ [74]: https://security.access.redhat.com/data/csaf/v2/vex/
│                       │       │                  │       2026/cve-2026-6100.json 
│                       │       │                  ├ [75]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [76]: https://www.cve.org/CVERecord?id=CVE-2026-6100 
│                       │       ├ PublishedDate   : 2026-04-13T18:16:31.297Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T03:21:11.023Z 
│                       ├ [93]  ╭ VulnerabilityID : CVE-2026-7774 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-7774 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d1d13e9962040f4ca2e18a545c9e13fca4ec72f1d9691ce706da
│                       │       │                   80eb04a2b2b4 
│                       │       ├ Title           : python: CPython: Python tarfile: Arbitrary file write via
│                       │       │                   crafted link entries 
│                       │       ├ Description     : tarfile.data_filter could be bypassed using crafted link
│                       │       │                   entries, including symlinks with empty or directory-like
│                       │       │                   names, to redirect later archive members outside the
│                       │       │                   intended extraction directory. This allowed a malicious tar
│                       │       │                    archive to cause tarfile.extractall() to write files
│                       │       │                   outside the destination directory, subject to the
│                       │       │                   permissions of the extracting process. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-22 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:A/VC:
│                       │       │                  │         │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 6.9 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                       │       │                            │           :H/A:N 
│                       │       │                            ╰ V3Score : 6.5 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       4/9 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-7774 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/0478bd83d82
│                       │       │                  │       b255e0f29f613367a59d261e7eaa2 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/0d28f5e46e1
│                       │       │                  │       51718972dfabd91205444d0037b6d 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/578411982c1
│                       │       │                  │       6f753f4893532510099ef665117da 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/5cf47a248c3
│                       │       │                  │       5c375d610b87b2f72fd1ed454b558 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/74cca9a92fb
│                       │       │                  │       7d653e404843a56b8bdc7b0afdbbf 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/149486 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149487 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/4FU62L2M6RMMHT2QPGQNPEHHUND7CE
│                       │       │                  │       X5/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-7774 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ├ [12]: https://www.cve.org/CVERecord?id=CVE-2026-7774 
│                       │       │                  ╰ [13]: https://www.openwall.com/lists/oss-security/2026/06/
│                       │       │                          04/9 
│                       │       ├ PublishedDate   : 2026-06-04T16:16:42.103Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:02:56.613Z 
│                       ├ [94]  ╭ VulnerabilityID : CVE-2026-8328 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8328 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d503771cefc39c0a9cd54d0752c7b572db6522d145554b833c2a
│                       │       │                   00d860df356e 
│                       │       ├ Title           : The ftpcp() function in Lib/ftplib.py was not updated when 
│                       │       │                    CVE-2021-4 ... 
│                       │       ├ Description     : The ftpcp() function in Lib/ftplib.py was not updated when
│                       │       │                   
│                       │       │                   CVE-2021-4189 was fixed. While makepasv() was patched to
│                       │       │                   replace 
│                       │       │                   server-supplied PASV host addresses with the actual peer
│                       │       │                   address 
│                       │       │                   (getpeername()[0]), ftpcp() still calls parse227() directly
│                       │       │                    and passes 
│                       │       │                   the raw attacker-controllable IP address and port to
│                       │       │                   target.sendport(). This patch is related to
│                       │       │                   CVE-2021-4189. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-918 
│                       │       ├ VendorSeverity   ╭ bitnami: 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ─ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:A/VC:
│                       │       │                            │            N/VI:H/VA:N/SC:N/SI:N/SA:N 
│                       │       │                            ╰ V40Score : 5.9 
│                       │       ├ References       ╭ [0] : https://github.com/python/cpython/commit/2bbcf3fb7a4
│                       │       │                  │       20a05605576c0f9468d4675381b5f 
│                       │       │                  ├ [1] : https://github.com/python/cpython/commit/5dadc64673c
│                       │       │                  │       e875ebfb24163907777dae0f6ca06 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/7d95a1dc738
│                       │       │                  │       2b55cba7fdd6a110336077584a4f0 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/bb3446dda6c
│                       │       │                  │       49b32e67c11dbbbf221b40be00763 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/c88704431ea
│                       │       │                  │       3248ca769384c13856330976fac1d 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/eac4fe3b2c7
│                       │       │                  │       7693790a5ef7dfab127c1fee81bf9 
│                       │       │                  ├ [6] : https://github.com/python/cpython/commit/ef12d0dc824
│                       │       │                  │       baccf737bba1458e5eed3d1e0fceb 
│                       │       │                  ├ [7] : https://github.com/python/cpython/issues/87451 
│                       │       │                  ├ [8] : https://github.com/python/cpython/pull/149648 
│                       │       │                  ├ [9] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/ITF2BAPBQEPYK3LDMPRSY435JGNHYN
│                       │       │                  │       DP/ 
│                       │       │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-8328 
│                       │       │                  ├ [11]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-8328 
│                       │       ├ PublishedDate   : 2026-05-13T21:16:50.167Z 
│                       │       ╰ LastModifiedDate: 2026-06-30T16:16:56.797Z 
│                       ├ [95]  ╭ VulnerabilityID : CVE-2026-9669 
│                       │       ├ PkgID           : python3.14-minimal@3.14.4-1 
│                       │       ├ PkgName         : python3.14-minimal 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                       │       │                  │       4&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : da8e2190347b7c6 
│                       │       ├ InstalledVersion: 3.14.4-1 
│                       │       ├ FixedVersion    : 3.14.4-1ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9669 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6c4c42b01fb726b1ceb7bd5b1fd4f3fc4f4afe1e94ad8245e851
│                       │       │                   dfc329a38e83 
│                       │       ├ Title           : python: Python: Denial of Service via out-of-bounds write
│                       │       │                   in BZ2 decompression 
│                       │       ├ Description     : bz2.BZ2Decompressor objects could be reused after a
│                       │       │                   decompression error. If an application caught the resulting
│                       │       │                    OSError and retried with the same decompressor, crafted
│                       │       │                   input could cause the decompressor to resume from an
│                       │       │                   invalid internal state and perform out-of-bounds writes to
│                       │       │                   a stack buffer. This could crash the process when
│                       │       │                   processing untrusted data. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-121 
│                       │       ├ VendorSeverity   ╭ bitnami: 3 
│                       │       │                  ├ redhat : 2 
│                       │       │                  ╰ ubuntu : 2 
│                       │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:P/PR:N/UI:N/VC:
│                       │       │                  │         │            N/VI:N/VA:H/SC:N/SI:N/SA:N 
│                       │       │                  │         ╰ V40Score : 8.2 
│                       │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                       │       │                            │           :N/A:H 
│                       │       │                            ╰ V3Score : 5.9 
│                       │       ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/06/0
│                       │       │                  │       8/17 
│                       │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-9669 
│                       │       │                  ├ [2] : https://github.com/python/cpython/commit/157a5df8cb5
│                       │       │                  │       d82b33f918a7489e72ce95ceb12b6 
│                       │       │                  ├ [3] : https://github.com/python/cpython/commit/5755d0f0839
│                       │       │                  │       49ff3c5bf3a37e673e24e306b036e 
│                       │       │                  ├ [4] : https://github.com/python/cpython/commit/619a12b2e54
│                       │       │                  │       5391dc436b3af79dda22337382a6f 
│                       │       │                  ├ [5] : https://github.com/python/cpython/commit/d3ca26983df
│                       │       │                  │       bccdf609f24ff5877dc3118e4702d 
│                       │       │                  ├ [6] : https://github.com/python/cpython/issues/150599 
│                       │       │                  ├ [7] : https://github.com/python/cpython/pull/150600 
│                       │       │                  ├ [8] : https://mail.python.org/archives/list/security-annou
│                       │       │                  │       nce@python.org/thread/DBJZETMGUIFK7DVUWMOXHD3Z6IX2QP
│                       │       │                  │       SX/ 
│                       │       │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-9669 
│                       │       │                  ├ [10]: https://ubuntu.com/security/notices/USN-8509-1 
│                       │       │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-9669 
│                       │       ├ PublishedDate   : 2026-06-08T23:17:25.17Z 
│                       │       ╰ LastModifiedDate: 2026-06-23T18:18:11.127Z 
│                       ├ [96]  ╭ VulnerabilityID : CVE-2026-35341 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a6685ea85d4bee05392cd583fa219394c29a8123915bec1bd190
│                       │       │                   28238bca4b92 
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
│                       ├ [97]  ╭ VulnerabilityID : CVE-2026-35344 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:07069f215836f9c8977224f47bce6fb5507df362fca34f97da52
│                       │       │                   94abc2338200 
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
│                       ├ [98]  ╭ VulnerabilityID : CVE-2026-35345 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:43eea0562f0074beb7bf7367c7c5c94fbb75c1db2387f050ec3f
│                       │       │                   d6ede8e6564b 
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
│                       ├ [99]  ╭ VulnerabilityID : CVE-2026-35348 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:42ea812431046574538b75d4d30b0c9df34550aedfc73e52d3a8
│                       │       │                   7df9f63ce89f 
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
│                       ├ [100] ╭ VulnerabilityID : CVE-2026-35350 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f86df3b3b5e1eedc516bd8f6d6ee6fdbe0346344b16a5d83b2a3
│                       │       │                   89333fc5eb5d 
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
│                       ├ [101] ╭ VulnerabilityID : CVE-2026-35351 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:470fb92a568b1f7b99ed36b5fbb3f540089510f155b1597ef3b2
│                       │       │                   f92fcee93565 
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
│                       ├ [102] ╭ VulnerabilityID : CVE-2026-35352 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:08947c01b07e5bb1ebd851e91736ceed98bf04dcc7efe66b1f5b
│                       │       │                   73a8bb4758a0 
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
│                       ├ [103] ╭ VulnerabilityID : CVE-2026-35354 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:12448125f197fa1e461d37932e398b6baed0b1b1a016b0fdd5a6
│                       │       │                   d212a85c3eb7 
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
│                       ├ [104] ╭ VulnerabilityID : CVE-2026-35357 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:66e5b178a9fe8dad745db2cc22df8de026f19282610f9acd510d
│                       │       │                   f06b22faef64 
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
│                       ├ [105] ╭ VulnerabilityID : CVE-2026-35359 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b18c8dbb93c014ab12f253d9d42ca7620c53e44d6bdad2fc7f54
│                       │       │                   1f1ee27711f9 
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
│                       ├ [106] ╭ VulnerabilityID : CVE-2026-35360 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4424d1b3a3a8d2a1d562a88ccafdc9da4b84a4306ae98b0f3e7f
│                       │       │                   2d7d70fccfa6 
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
│                       ├ [107] ╭ VulnerabilityID : CVE-2026-35363 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1beb4a8b0099c8c31fd797c18477f09c9bb252c98161d730bfb9
│                       │       │                   05f0f977c4b9 
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
│                       ├ [108] ╭ VulnerabilityID : CVE-2026-35364 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c1ce66fbd5714f1de23a824274904f67c8f866d8b6182a64ce2b
│                       │       │                   347c76d2d181 
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
│                       ├ [109] ╭ VulnerabilityID : CVE-2026-35367 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:824dd577202c9d376c9d212d978c1bb3834909e14e454840016d
│                       │       │                   aae9c676e1a7 
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
│                       ├ [110] ╭ VulnerabilityID : CVE-2026-35368 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a2d97d4f62532508b72a15c527ea276256161e1523ebcd48bb44
│                       │       │                   50b673e8d31b 
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
│                       ├ [111] ╭ VulnerabilityID : CVE-2026-35370 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8e356a0a3e73fcce9fd2694ed495820fc551f4d45002835c5495
│                       │       │                   24e483f58a2a 
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
│                       ├ [112] ╭ VulnerabilityID : CVE-2026-35371 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b157856890b7561f0d43523d953c1dd3339f946bce9ab2825e09
│                       │       │                   fcee8d6ace4b 
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
│                       ├ [113] ╭ VulnerabilityID : CVE-2026-35373 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2ca05cf6f5a36e013fbc138a2ddfa317406153f5b7b0bc3de981
│                       │       │                   41e6eccc7737 
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
│                       ├ [114] ╭ VulnerabilityID : CVE-2026-35374 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bbf9a2c4ada5777c3819da0e29222d9cebc92518944dab46597b
│                       │       │                   f5905761e103 
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
│                       ├ [115] ╭ VulnerabilityID : CVE-2026-35377 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1745a8b71a31bd75d1627d08ac79870d93f12e31c661e538bd24
│                       │       │                   76e7ac90f4d4 
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
│                       ├ [116] ╭ VulnerabilityID : CVE-2025-45582 
│                       │       ├ PkgID           : tar@1.35+dfsg-4ubuntu0.1 
│                       │       ├ PkgName         : tar 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.1?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f7a1a3cfff00b5cd 
│                       │       ├ InstalledVersion: 1.35+dfsg-4ubuntu0.1 
│                       │       ├ FixedVersion    : 1.35+dfsg-4ubuntu0.2 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3031790614086ab35c6276dd8437ca3643dd8798f27a9b1f19cb
│                       │       │                   4d260879f659 
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
│                       │       │                  ├ [13]: https://ubuntu.com/security/notices/USN-8510-1 
│                       │       │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2025-45582 
│                       │       │                  ├ [15]: https://www.gnu.org/software/tar/ 
│                       │       │                  ├ [16]: https://www.gnu.org/software/tar/manual/html_node/In
│                       │       │                  │       tegrity.html 
│                       │       │                  ├ [17]: https://www.gnu.org/software/tar/manual/html_node/In
│                       │       │                  │       tegrity.html#Integrity 
│                       │       │                  ╰ [18]: https://www.gnu.org/software/tar/manual/html_node/Se
│                       │       │                          curity-rules-of-thumb.html 
│                       │       ├ PublishedDate   : 2025-07-11T17:15:37.183Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T09:25:34.87Z 
│                       ├ [117] ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ffcaa06507e426f7c9be81cde2c03a3b546393b45107b188370c
│                       │       │                   8347669db8fd 
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
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                       │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [118] ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                       │       │                  │         8afb7b978173c12b34a64 
│                       │       │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                       │       │                            9e717da85e7ebdd721598 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c5a8cd5db829de81aeff84624937cd9fa7f43b095d5378662d2a
│                       │       │                   4e70de0853a3 
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
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                       │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                       ╰ [119] ╭ VulnerabilityID : CVE-2026-27171 
│                               ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ PkgName         : zlib1g 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu
│                               │                  │       3?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                               │                  ╰ UID : f9537564bd1f9cb2 
│                               ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e
│                               │                  │         8afb7b978173c12b34a64 
│                               │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b91090
│                               │                            9e717da85e7ebdd721598 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:18853eb292f41e16fd3f6e7e766e480f16639dc607c0e86dbeea
│                               │                   a6d42df17215 
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
│                               │                  ├ julia      : 1 
│                               │                  ├ nvd        : 2 
│                               │                  ├ photon     : 2 
│                               │                  ├ redhat     : 1 
│                               │                  ╰ ubuntu     : 1 
│                               ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                               │                  │        │           N/A:L 
│                               │                  │        ╰ V3Score : 2.9 
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
├ [1] ╭ Target         : Java 
│     ├ Class          : lang-pkgs 
│     ├ Type           : jar 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-54512 
│                       │     ├ VendorIDs        ─ [0]: GHSA-j3rv-43j4-c7qm 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : bdedb7f4f2b3e6f5 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.18.8, 3.1.4, 2.21.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                       │     │                  │         fb7b978173c12b34a64 
│                       │     │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                       │     │                            717da85e7ebdd721598 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54512 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:91466d7a78637aa2689cb1982bbbd8472dff1839a98b5535d44a2f
│                       │     │                   c8b938d15d 
│                       │     ├ Title           : jackson-databind: jackson-databind: Arbitrary code execution
│                       │     │                   via PolymorphicTypeValidator bypass 
│                       │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionality and tree-model for Jackson Data Processor. From
│                       │     │                    2.10.0 until 2.18.8, 2.21.4, and 3.1.4, jackson-databind's
│                       │     │                   PolymorphicTypeValidator (PTV) is the primary safety
│                       │     │                   mechanism guarding polymorphic deserialization. When
│                       │     │                   polymorphic typing is enabled and a type identifier contains
│                       │     │                   generic parameters (i.e. the type ID string contains <),
│                       │     │                   DatabindContext._resolveAndValidateGeneric() validates only
│                       │     │                   the raw container class name (the substring before <) against
│                       │     │                    the configured PTV. If the container type is approved, the
│                       │     │                   method parses the full canonical type string via
│                       │     │                   TypeFactory.constructFromCanonical() and returns the fully
│                       │     │                   parameterized type without ever validating the nested type
│                       │     │                   arguments against the PTV. The nested type arguments are then
│                       │     │                    resolved, instantiated, and populated as beans during
│                       │     │                   deserialization. An attacker who controls the type ID can
│                       │     │                   therefore place a denied class as a generic type parameter of
│                       │     │                    an allowed container — for example
│                       │     │                   java.util.ArrayList<com.evil.Gadget> when only
│                       │     │                   java.util.ArrayList is allow-listed. The container passes the
│                       │     │                    PTV check; com.evil.Gadget is loaded via Class.forName(name,
│                       │     │                    true, loader), instantiated, and its properties are set from
│                       │     │                    attacker-controlled JSON. This completely bypasses an
│                       │     │                   explicitly configured PTV allow-list. This vulnerability is
│                       │     │                   fixed in 2.18.8, 2.21.4, and 3.1.4. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ╭ [0]: CWE-184 
│                       │     │                  ╰ [1]: CWE-502 
│                       │     ├ VendorSeverity   ╭ ghsa  : 3 
│                       │     │                  ╰ redhat: 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 8.1 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 8.1 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54512 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/43
│                       │     │                  │      4d6c511de7fdd9872f29157aafb6162d12d8d5 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/issues/5988 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-j3rv-43j4-c7qm 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54512 
│                       │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-54512 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.203Z 
│                       │     ╰ LastModifiedDate: 2026-06-27T21:01:36.47Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2026-54513 
│                       │     ├ VendorIDs        ─ [0]: GHSA-rmj7-2vxq-3g9f 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : bdedb7f4f2b3e6f5 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.18.8, 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                       │     │                  │         fb7b978173c12b34a64 
│                       │     │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                       │     │                            717da85e7ebdd721598 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54513 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:92feb8e51ab35640d0594bb8b83b02f13caa676f8c4fdb23b61035
│                       │     │                   0e54c70810 
│                       │     ├ Title           : jackson-databind: Jackson-databind: Security bypass allows
│                       │     │                   arbitrary code execution 
│                       │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionality and tree-model for Jackson Data Processor. From
│                       │     │                    2.10.0 until 2.18.8, 2.21.4, and 3.1.4,
│                       │     │                   BasicPolymorphicTypeValidator.Builder.allowIfSubTypeIsArray()
│                       │     │                    allowlists any array type based only on clazz.isArray(),
│                       │     │                   without validating the array's component (element) type
│                       │     │                   against the configured allowlist. A PTV built with
│                       │     │                   allowIfSubTypeIsArray() plus an explicit concrete-type
│                       │     │                   allowlist therefore still permits EvilType[] even though
│                       │     │                   EvilType is not allowlisted. When Jackson deserializes the
│                       │     │                   elements and no per-element type IDs are present, it
│                       │     │                   instantiates the component type directly with no further PTV
│                       │     │                   check, bypassing the allowlist. This vulnerability is fixed
│                       │     │                   in 2.18.8, 2.21.4, and 3.1.4. 
│                       │     ├ Severity        : HIGH 
│                       │     ├ CweIDs           ─ [0]: CWE-184 
│                       │     ├ VendorSeverity   ╭ ghsa  : 3 
│                       │     │                  ╰ redhat: 3 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/
│                       │     │                  │        │           A:H 
│                       │     │                  │        ╰ V3Score : 8.1 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/
│                       │     │                           │           A:H 
│                       │     │                           ╰ V3Score : 8.1 
│                       │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-54513 
│                       │     │                  ├ [1] : https://bugzilla.redhat.com/show_bug.cgi?id=2492010 
│                       │     │                  ├ [2] : https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [3] : https://github.com/FasterXML/jackson-databind/commit/0
│                       │     │                  │       1d1692c8d0ed03e51a0e3c4f8a9e6908e4931e5 
│                       │     │                  ├ [4] : https://github.com/FasterXML/jackson-databind/commit/2
│                       │     │                  │       4529da29fdf46ff94ca38de9ebf31cd188f5e8e 
│                       │     │                  ├ [5] : https://github.com/FasterXML/jackson-databind/issues/5
│                       │     │                  │       981 
│                       │     │                  ├ [6] : https://github.com/FasterXML/jackson-databind/issues/5
│                       │     │                  │       983 
│                       │     │                  ├ [7] : https://github.com/FasterXML/jackson-databind/pull/5984 
│                       │     │                  ├ [8] : https://github.com/FasterXML/jackson-databind/security
│                       │     │                  │       /advisories/GHSA-rmj7-2vxq-3g9f 
│                       │     │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-54513 
│                       │     │                  ├ [10]: https://security.access.redhat.com/data/csaf/v2/vex/20
│                       │     │                  │       26/cve-2026-54513.json 
│                       │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-54513 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.333Z 
│                       │     ╰ LastModifiedDate: 2026-07-03T13:17:29.627Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2026-54514 
│                       │     ├ VendorIDs        ─ [0]: GHSA-hgj6-7826-r7m5 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : bdedb7f4f2b3e6f5 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.18.8, 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                       │     │                  │         fb7b978173c12b34a64 
│                       │     │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                       │     │                            717da85e7ebdd721598 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54514 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:b78ba0b392c77e44ed726737fd5fe6573420a39c2e9be390c26ac9
│                       │     │                   1b41fb9c55 
│                       │     ├ Title           : jackson-databind: jackson-databind: Information Disclosure
│                       │     │                   via Eager DNS Resolution 
│                       │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionality and tree-model for Jackson Data Processor. From
│                       │     │                    2.0.0 until 2.18.8, 2.21.4, and 3.1.4,
│                       │     │                   JDKFromStringDeserializer constructed InetSocketAddress with
│                       │     │                   new InetSocketAddress(host, port), which performs eager DNS
│                       │     │                   name resolution for hostname inputs at deserialization time.
│                       │     │                   An application that binds untrusted JSON into a type
│                       │     │                   containing an InetSocketAddress field issues an
│                       │     │                   attacker-chosen DNS query during readValue, before any
│                       │     │                   application-level validation or connect logic. The fix uses
│                       │     │                   InetSocketAddress.createUnresolved(host, port), deferring DNS
│                       │     │                    to an explicit connect. This vulnerability is fixed in
│                       │     │                   2.18.8, 2.21.4, and 3.1.4. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-918 
│                       │     ├ VendorSeverity   ╭ ghsa  : 2 
│                       │     │                  ╰ redhat: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 5.3 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54514 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/1f
│                       │     │                  │      5a1037b1e9e05920e755cb35f198bcd46667e4 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/pull/5951 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-hgj6-7826-r7m5 
│                       │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54514 
│                       │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-54514 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.467Z 
│                       │     ╰ LastModifiedDate: 2026-06-27T20:55:09.61Z 
│                       ├ [3] ╭ VulnerabilityID : CVE-2026-54515 
│                       │     ├ VendorIDs        ─ [0]: GHSA-5jmj-h7xm-6q6v 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : bdedb7f4f2b3e6f5 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 3.1.4, 2.18.9, 2.21.5, 2.22.1 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                       │     │                  │         fb7b978173c12b34a64 
│                       │     │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                       │     │                            717da85e7ebdd721598 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54515 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:8200abca30a11d0c9c717a6f195d3e72c7d79e9b34e6ad279499e5
│                       │     │                   f4127f3d5e 
│                       │     ├ Title           : jackson-databind: jackson-databind: Ignored properties can be
│                       │     │                    unexpectedly modified 
│                       │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionality and tree-model for Jackson Data Processor. From
│                       │     │                    2.8.0 until 2.18.9, 2.21.5, and 3.1.4, in
│                       │     │                   BeanDeserializerBase.createContextual(), per-property
│                       │     │                   @JsonIgnoreProperties exclusions are applied by
│                       │     │                   _handleByNameInclusion(), producing a contextual deserializer
│                       │     │                    whose BeanPropertyMap has the ignored properties removed.
│                       │     │                   The subsequent per-property case-insensitivity block
│                       │     │                   (triggered by
│                       │     │                   @JsonFormat(ACCEPT_CASE_INSENSITIVE_PROPERTIES)) rebuilds
│                       │     │                   from this._beanProperties (the original, unfiltered map)
│                       │     │                   instead of contextual._beanProperties, then overwrites the
│                       │     │                   filtered map — restoring every property
│                       │     │                   _handleByNameInclusion had just removed. The ignored property
│                       │     │                    becomes writable again. This vulnerability is fixed in
│                       │     │                   2.18.9, 2.21.5, and 3.1.4. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-915 
│                       │     ├ VendorSeverity   ╭ ghsa  : 2 
│                       │     │                  ╰ redhat: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 5.3 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54515 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/0e
│                       │     │                  │      1b0b211f7a53baa62ba2f4c9bd006c7bf4d5fa 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/issues/5962 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/issues/5964 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-5jmj-h7xm-6q6v 
│                       │     │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-54515 
│                       │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-54515 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.597Z 
│                       │     ╰ LastModifiedDate: 2026-06-29T13:38:59.057Z 
│                       ├ [4] ╭ VulnerabilityID : CVE-2026-54516 
│                       │     ├ VendorIDs        ─ [0]: GHSA-9fxm-vc8v-hj55 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : bdedb7f4f2b3e6f5 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                       │     │                  │         fb7b978173c12b34a64 
│                       │     │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                       │     │                            717da85e7ebdd721598 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54516 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:e27f1e4d0a84a2b4bb3cfc0a661ddcd2e9009743197867da593217
│                       │     │                   f192192d8e 
│                       │     ├ Title           : jackson-databind: jackson-databind: Security bypass due to
│                       │     │                   improper handling of renamed properties 
│                       │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionality and tree-model for Jackson Data Processor. From
│                       │     │                    2.21.0 until 2.21.4 and 3.1.4,
│                       │     │                   POJOPropertiesCollector._renameProperties() allows a property
│                       │     │                    with @JsonProperty("renamed") on the getter and @JsonIgnore
│                       │     │                   on the setter to be renamed rather than dropped. With
│                       │     │                   MapperFeature.INFER_PROPERTY_MUTATORS enabled (default), the
│                       │     │                   private backing field is retained; during deserialization
│                       │     │                   BeanDeserializerFactory.addBeanProps() sees hasField()==true,
│                       │     │                    builds a FieldProperty, and makes the backing field
│                       │     │                   writable. An attacker supplying the renamed JSON key writes
│                       │     │                   the backing field directly, bypassing the @JsonIgnore on the
│                       │     │                   setter. This vulnerability is fixed in 3.1.4. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-915 
│                       │     ├ VendorSeverity   ╭ ghsa  : 2 
│                       │     │                  ╰ redhat: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 5.3 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54516 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/c3
│                       │     │                  │      d56dd25d52319828147c5b9aeabf2d485c250a 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/e8
│                       │     │                  │      8cb17006b6af4883b973058f0bb6486e5074af 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5967 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/pull/5968 
│                       │     │                  ├ [6]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-9fxm-vc8v-hj55 
│                       │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-54516 
│                       │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54516 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.723Z 
│                       │     ╰ LastModifiedDate: 2026-06-27T20:52:12.103Z 
│                       ├ [5] ╭ VulnerabilityID : CVE-2026-54517 
│                       │     ├ VendorIDs        ─ [0]: GHSA-5hh8-q8hv-fr38 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : bdedb7f4f2b3e6f5 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                       │     │                  │         fb7b978173c12b34a64 
│                       │     │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                       │     │                            717da85e7ebdd721598 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54517 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:9b81cac1238cdd7348fc56d03cfd7c33d99ab037a25d9c46f42caa
│                       │     │                   eb95b7f6df 
│                       │     ├ Title           : jackson-databind: jackson-databind: Information disclosure
│                       │     │                   via improper JsonView filter application 
│                       │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionality and tree-model for Jackson Data Processor. From
│                       │     │                    2.21.0 until 2.21.4 and 3.1.4, in
│                       │     │                   BeanDeserializer._deserializeUsingPropertyBased, the
│                       │     │                   active-view (@JsonView) filter was applied only to creator
│                       │     │                   properties; the regular property-buffering branch performed
│                       │     │                   no prop.visibleInView(activeView) check. A change making
│                       │     │                   SetterlessProperty.isMerging() return true routed setterless
│                       │     │                   Collection/Map properties through this unguarded path, so a
│                       │     │                   setterless collection annotated with a restricted @JsonView
│                       │     │                   is populated from attacker JSON even when the active view
│                       │     │                   excludes it. This vulnerability is fixed in 2.21.4 and
│                       │     │                   3.1.4. 
│                       │     ├ Severity        : MEDIUM 
│                       │     ├ CweIDs           ─ [0]: CWE-863 
│                       │     ├ VendorSeverity   ╭ ghsa  : 2 
│                       │     │                  ╰ redhat: 2 
│                       │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/
│                       │     │                  │        │           A:N 
│                       │     │                  │        ╰ V3Score : 5.3 
│                       │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/
│                       │     │                           │           A:N 
│                       │     │                           ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54517 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/5b
│                       │     │                  │      f23edb4221f7dd2ec8e71ff6d26c61640f261d 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/94
│                       │     │                  │      c5d215b3af1505098c686405d9641f041a9962 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5969 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/pull/5970 
│                       │     │                  ├ [6]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-5hh8-q8hv-fr38 
│                       │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-54517 
│                       │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54517 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.853Z 
│                       │     ╰ LastModifiedDate: 2026-06-27T20:51:09.987Z 
│                       ╰ [6] ╭ VulnerabilityID : CVE-2026-54518 
│                             ├ VendorIDs        ─ [0]: GHSA-rcqc-6cw3-h962 
│                             ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                             ├ PkgPath         : openaf/openaf.jar 
│                             ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                             │                  │       2.21.3 
│                             │                  ╰ UID : bdedb7f4f2b3e6f5 
│                             ├ InstalledVersion: 2.21.3 
│                             ├ FixedVersion    : 2.21.4 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8a
│                             │                  │         fb7b978173c12b34a64 
│                             │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909e
│                             │                            717da85e7ebdd721598 
│                             ├ SeveritySource  : ghsa 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54518 
│                             ├ DataSource       ╭ ID  : ghsa 
│                             │                  ├ Name: GitHub Security Advisory Maven 
│                             │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                             │                          osystem%3Amaven 
│                             ├ Fingerprint     : sha256:6779f25b2b1ba0179b16879cd94f2dc65a99c9db964f1a328c0820
│                             │                   3a4bd81df4 
│                             ├ Title           : jackson-databind: jackson-databind: Information disclosure
│                             │                   and data manipulation via view-based access control bypass 
│                             ├ Description     : jackson-databind contains the general-purpose data-binding
│                             │                   functionality and tree-model for Jackson Data Processor. From
│                             │                    2.21.0 until 2.21.4 and 3.1.4,
│                             │                   UnwrappedPropertyHandler.processUnwrappedCreatorProperties()
│                             │                   replays buffered JSON into creator parameters but never
│                             │                   consults prop.visibleInView(activeView). The normal
│                             │                   property-based creator path gates creator properties on the
│                             │                   active view, but this unwrapped-creator replay path bypasses
│                             │                   that check, so a constructor parameter annotated with both
│                             │                   @JsonView(AdminView.class) and @JsonUnwrapped is populated
│                             │                   from attacker JSON even when a more restrictive view is
│                             │                   active. This vulnerability is fixed in 2.21.4 and 3.1.4. 
│                             ├ Severity        : MEDIUM 
│                             ├ CweIDs           ─ [0]: CWE-863 
│                             ├ VendorSeverity   ╭ ghsa  : 2 
│                             │                  ╰ redhat: 2 
│                             ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/
│                             │                  │        │           A:N 
│                             │                  │        ╰ V3Score : 6.5 
│                             │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/
│                             │                           │           A:N 
│                             │                           ╰ V3Score : 6.5 
│                             ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54518 
│                             │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                             │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/72
│                             │                  │      1fa07ebbd4aab4a659a1a68940878315c3e341 
│                             │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/d6
│                             │                  │      33bc038f200c1397c07f1a2b46f58e72c91eea 
│                             │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5971 
│                             │                  ├ [5]: https://github.com/FasterXML/jackson-databind/pull/5973 
│                             │                  ├ [6]: https://github.com/FasterXML/jackson-databind/security/
│                             │                  │      advisories/GHSA-rcqc-6cw3-h962 
│                             │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-54518 
│                             │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54518 
│                             ├ PublishedDate   : 2026-06-23T22:16:32.073Z 
│                             ╰ LastModifiedDate: 2026-06-27T20:49:30.977Z 
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
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:44e61bfe36df0aa89cce439803eac3dbec77be2a643d43f42041e
                        │      │                   f9f0558a367 
                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Arbitrary code
                        │      │                    execution via Cross-Site Scripting 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-1021 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ├ azure : 2 
                        │      │                  ╰ redhat: 3 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 8.1 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-25681 
                        │      │                  ├ [1]: https://go.dev/cl/781703 
                        │      │                  ├ [2]: https://go.dev/issue/79574 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-25681 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5029 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-25681 
                        │      ├ PublishedDate   : 2026-05-22T16:16:19.863Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.343Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-27136 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5030 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:8478b04164acf3c96799ec5d023622e6c54e6fe38d88950b4d8b4
                        │      │                   47687c61226 
                        │      ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
                        │      │                   Cross-Site Scripting via HTML parsing bypass 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-1021 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ├ azure : 2 
                        │      │                  ╰ redhat: 3 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 8.1 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27136 
                        │      │                  ├ [1]: https://go.dev/cl/781685 
                        │      │                  ├ [2]: https://go.dev/issue/79575 
                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27136 
                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5030 
                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-27136 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.087Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:26:43.803Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33814 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.53.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:ff335c5a6dcf468790768096c679f56a75a34d405f00efb495a78
                        │      │                   e355d83a1a3 
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
                        │      │                  ├ [7] : https://access.redhat.com/security/cve/CVE-2026-33814 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
                        │      │                  ├ [9] : https://github.com/golang/go/issues/78476 
                        │      │                  ├ [10]: https://go-review.googlesource.com/c/go/+/761581 
                        │      │                  ├ [11]: https://go-review.googlesource.com/c/net/+/761640 
                        │      │                  ├ [12]: https://go.dev/cl/761581 
                        │      │                  ├ [13]: https://go.dev/cl/761640 
                        │      │                  ├ [14]: https://go.dev/issue/78476 
                        │      │                  ├ [15]: https://groups.google.com/g/golang-announce/c/qcCIEXs
                        │      │                  │       o47M 
                        │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-33814.html 
                        │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
                        │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
                        │      │                  ├ [19]: https://pkg.go.dev/vuln/GO-2026-4918 
                        │      │                  ├ [20]: https://security.access.redhat.com/data/csaf/v2/vex/2
                        │      │                  │       026/cve-2026-33814.json 
                        │      │                  ├ [21]: https://ubuntu.com/security/notices/USN-8430-1 
                        │      │                  ├ [22]: https://ubuntu.com/security/notices/USN-8471-1 
                        │      │                  ├ [23]: https://ubuntu.com/security/notices/USN-8472-1 
                        │      │                  ├ [24]: https://ubuntu.com/security/notices/USN-8473-1 
                        │      │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
                        │      ╰ LastModifiedDate: 2026-07-06T13:16:39.617Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39821 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5026 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:1a0d1a57bc6cebb18034b071ad606d293000d02a741fc2f2cd26c
                        │      │                   5bf5e9a4699 
                        │      ├ Title           : golang.org/x/net/idna: golang: golang.org/x/net/idna:
                        │      │                   Privilege escalation via incorrect Punycode label
                        │      │                   processing 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:26546 
                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:26547 
                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:30650 
                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:30651 
                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:30853 
                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:30854 
                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:30855 
                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:33155 
                        │      │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:33160 
                        │      │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:33163 
                        │      │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:33173 
                        │      │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:33183 
                        │      │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:33524 
                        │      │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:33531 
                        │      │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:34342 
                        │      │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:34357 
                        │      │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:34359 
                        │      │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:34364 
                        │      │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:35826 
                        │      │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:35827 
                        │      │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:35828 
                        │      │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:35830 
                        │      │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:35831 
                        │      │                  ├ [25]: https://access.redhat.com/security/cve/CVE-2026-39821 
                        │      │                  ├ [26]: https://bugzilla.redhat.com/2480756 
                        │      │                  ├ [27]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-39821 
                        │      │                  ├ [29]: https://errata.almalinux.org/10/ALSA-2026-30855.html 
                        │      │                  ├ [30]: https://errata.rockylinux.org/RLSA-2026:30854 
                        │      │                  ├ [31]: https://github.com/golang/go/issues/78760 
                        │      │                  ├ [32]: https://go.dev/cl/767220 
                        │      │                  ├ [33]: https://go.dev/issue/78760 
                        │      │                  ├ [34]: https://groups.google.com/g/golang-announce/c/iI-mYSI
                        │      │                  │       0lu8 
                        │      │                  ├ [35]: https://linux.oracle.com/cve/CVE-2026-39821.html 
                        │      │                  ├ [36]: https://linux.oracle.com/errata/ELSA-2026-30854.html 
                        │      │                  ├ [37]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
                        │      │                  ├ [38]: https://pkg.go.dev/vuln/GO-2026-5026 
                        │      │                  ├ [39]: https://security.access.redhat.com/data/csaf/v2/vex/2
                        │      │                  │       026/cve-2026-39821.json 
                        │      │                  ├ [40]: https://ubuntu.com/security/notices/USN-8416-1 
                        │      │                  ╰ [41]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
                        │      ╰ LastModifiedDate: 2026-07-06T13:16:41.597Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-42502 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5027 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:0bee704f66813d4cd04e63a92f8cde8bb84f59d42de0ab35fe672
                        │      │                   1abc04835cb 
                        │      ├ Title           : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result  ... 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-1021 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ╰ azure : 2 
                        │      ├ References       ╭ [0]: https://go.dev/cl/781701 
                        │      │                  ├ [1]: https://go.dev/issue/79572 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42502 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5027 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.587Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.593Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2025-47911 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4440 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.45.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47911 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:394bc384052626b08b842f09c4c4c7f067ffc107406df11a18925
                        │      │                   cc1f0bb7d27 
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
                        ├ [6]  ╭ VulnerabilityID : CVE-2025-58190 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4441 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.45.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58190 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d5fe2cac720fb4f3aa8a4e1f84d2bf8da62cdc25ecd5697da377f
                        │      │                   38d7c07883b 
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
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-25680 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5028 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:c52069d80ad7ecb9e935f98023c2d0b5e79ec2b854eacef9806a6
                        │      │                   7e500116be2 
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
                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.14Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-42506 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5025 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:4c83e002fa3a74b00707c98f8c5e5e94f49b4121be5ec71397c5a
                        │      │                   40444e9533c 
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
                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.993Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-39824 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5024 
                        │      ├ PkgID           : golang.org/x/sys@v0.33.0 
                        │      ├ PkgName         : golang.org/x/sys 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.33.0 
                        │      │                  ╰ UID : a350d4cc028089d4 
                        │      ├ InstalledVersion: v0.33.0 
                        │      ├ FixedVersion    : 0.44.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:2760657e0ed7858611f47f8885a923b29ccdaefe7149aa6ec09c8
                        │      │                   708796abc4e 
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
                        │      ╰ LastModifiedDate: 2026-06-17T10:42:38.62Z 
                        ├ [10] ╭ VulnerabilityID : CVE-2026-27145 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
                        │      ├ PkgID           : stdlib@v1.26.3 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
                        │      │                  ╰ UID : 88b4097712908b9b 
                        │      ├ InstalledVersion: v1.26.3 
                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:92daaa83d81fe91bb7fa0f75a48567b3900d3587123794db5b11b
                        │      │                   a7ad289d7db 
                        │      ├ Title           : crypto/x509: golang: golang crypto/x509: Denial of Service
                        │      │                   via excessive processing of DNS SAN entries 
                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
                        │      │                   execute repeatedly on the same input hostname. With a large
                        │      │                   DNS SAN list, verification costs scaled quadratically based
                        │      │                   on the number of SAN entries multiplied by the hostname's
                        │      │                   label count. Because x509.Verify validates hostnames before
                        │      │                   building the certificate chain, this overhead occurred even
                        │      │                   for untrusted certificates. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-606 
                        │      ├ VendorSeverity   ╭ amazon : 3 
                        │      │                  ├ bitnami: 2 
                        │      │                  ╰ redhat : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           L/A:H 
                        │      │                  │         ╰ V3Score : 6.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:33574 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:34357 
                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:34359 
                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:35832 
                        │      │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-27145 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
                        │      │                  ├ [6] : https://go.dev/cl/783621 
                        │      │                  ├ [7] : https://go.dev/issue/79694 
                        │      │                  ├ [8] : https://groups.google.com/g/golang-announce/c/tKs3rmc
                        │      │                  │       BcKw 
                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
                        │      │                  ├ [10]: https://pkg.go.dev/vuln/GO-2026-5037 
                        │      │                  ├ [11]: https://security.access.redhat.com/data/csaf/v2/vex/2
                        │      │                  │       026/cve-2026-27145.json 
                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-27145 
                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
                        │      ╰ LastModifiedDate: 2026-07-06T13:16:35.233Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-42504 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
                        │      ├ PkgID           : stdlib@v1.26.3 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
                        │      │                  ╰ UID : 88b4097712908b9b 
                        │      ├ InstalledVersion: v1.26.3 
                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                        │      │                  │         afb7b978173c12b34a64 
                        │      │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                        │      │                            e717da85e7ebdd721598 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:ac4030ba1ef675931217577f4e6d839964ea00cb8ccc81394b8ae
                        │      │                   de1b0ee6b4a 
                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
                        │      │                   invalid enc ... 
                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
                        │      │                   invalid encoded-words can consume excessive CPU. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-407 
                        │      ├ VendorSeverity   ╭ amazon : 3 
                        │      │                  ├ azure  : 3 
                        │      │                  ╰ bitnami: 3 
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
                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.86Z 
                        ╰ [12] ╭ VulnerabilityID : CVE-2026-42507 
                               ├ VendorIDs        ─ [0]: GO-2026-5039 
                               ├ PkgID           : stdlib@v1.26.3 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
                               │                  ╰ UID : 88b4097712908b9b 
                               ├ InstalledVersion: v1.26.3 
                               ├ FixedVersion    : 1.25.11, 1.26.4 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:b0113d728796bced1de5d9be3ee71a41fa9ce58cb8e8
                               │                  │         afb7b978173c12b34a64 
                               │                  ╰ DiffID: sha256:cea9f9db5d3f4c32d71be9540d330b45d2665b910909
                               │                            e717da85e7ebdd721598 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:879a8a7b3ea6b57df2c4a724d47579a27d8204470dd943c35ed02
                               │                   7a6d6eb273b 
                               ├ Title           : net/textproto: golang: Golang net/textproto: Misleading
                               │                   error messages via input injection 
                               ├ Description     : When returning errors, functions in the net/textproto
                               │                   package would include its input as part of the error. This
                               │                   might allow an attacker to inject misleading content to
                               │                   errors that are printed or logged. 
                               ├ Severity        : MEDIUM 
                               ├ VendorSeverity   ╭ alma       : 2 
                               │                  ├ amazon     : 3 
                               │                  ├ bitnami    : 2 
                               │                  ├ oracle-oval: 2 
                               │                  ├ redhat     : 2 
                               │                  ╰ rocky      : 2 
                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                               │                  │         │           L/A:N 
                               │                  │         ╰ V3Score : 5.3 
                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                               │                            │           L/A:N 
                               │                            ╰ V3Score : 5.3 
                               ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:29980 
                               │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42507 
                               │                  ├ [2] : https://bugzilla.redhat.com/2484205 
                               │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2484205 
                               │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                               │                  │       26-42507 
                               │                  ├ [5] : https://errata.almalinux.org/10/ALSA-2026-29980.html 
                               │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:29981 
                               │                  ├ [7] : https://go.dev/cl/777060 
                               │                  ├ [8] : https://go.dev/issue/79346 
                               │                  ├ [9] : https://groups.google.com/g/golang-announce/c/tKs3rmc
                               │                  │       BcKw 
                               │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-42507.html 
                               │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-29981.html 
                               │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
                               │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-5039 
                               │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-42507 
                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
                               ╰ LastModifiedDate: 2026-06-17T10:47:57.137Z 
```
