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
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7b090ff0652607b35513ff8c3de29d32b5fba88625d46161a265
│                       │       │                   b8cedced7909 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [1]   ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                       │       ├ PkgName         : bsdutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : 35a8976635e225e2 
│                       │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:585db010dd11735882ec76e18d5f47c2628b095ec9b3757f4854
│                       │       │                   b7668ed2accf 
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
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11856 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:fe64875ea9b6afcd451368f929a2c7c3b29d1a195d1c1a73e139
│                       │       │                   33c179133e57 
│                       │       ├ Description     : Successfully using libcurl to do a transfer to a specific
│                       │       │                   HTTP origin (`hostA`) with **Digest** authentication and
│                       │       │                   then changing the origin to a different one (`hostB`) for a
│                       │       │                    second transfer, reusing the same handle, makes libcurl
│                       │       │                   wrongly pass on the `Authorization:` header field meant for
│                       │       │                    `hostA`, to `hostB`. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11856.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11856 
│                       ├ [3]   ╭ VulnerabilityID : CVE-2026-8925 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8925 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c634776f636509d8b35ca0e025ec24a68b4a5353e93e32dd024d
│                       │       │                   43c5db5c6999 
│                       │       ├ Description     : The curl logic that works with SASL authentication could
│                       │       │                   end up cleaning up the GSASL context *twice* without
│                       │       │                   clearing the pointer in between, making it `free()` the
│                       │       │                   same pointer twice. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8925.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8925 
│                       ├ [4]   ╭ VulnerabilityID : CVE-2026-8927 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8927 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:22f7ca5d51f7bbed1ec39fb124c76e65a78c74be1e270aa994ee
│                       │       │                   b32fe14439fa 
│                       │       ├ Description     : When reusing a libcurl handle for sequential transfers
│                       │       │                   driven by environment-variable proxy configuration, libcurl
│                       │       │                    fails to clear the proxy authentication state between
│                       │       │                   requests. Specifically, if the initial transfer
│                       │       │                   authenticates against `proxyA` using Digest auth, a
│                       │       │                   subsequent transfer routed through `proxyB` erroneously
│                       │       │                   leaks the `Proxy-Authorization:` header intended solely for
│                       │       │                    `proxyA`. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8927.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8927 
│                       ├ [5]   ╭ VulnerabilityID : CVE-2026-9079 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9079 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5de9b06d641d40881a05a2514e1338d49343f709a9a92453edcb
│                       │       │                   0d64e7ec6d88 
│                       │       ├ Description     : libcurl had a flaw that when instructed to clear proxy
│                       │       │                   authentication credentials which made it not do so, leaving
│                       │       │                    the old credentials around to get used for subsequent
│                       │       │                   tranfers that should not know nor use them. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9079.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9079 
│                       ├ [6]   ╭ VulnerabilityID : CVE-2026-10536 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10536 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5a7e4808f5308fcfcd74220b38b789bfb614cc2d1088b7a4c051
│                       │       │                   350b3b2be080 
│                       │       ├ Description     : A use-after-free vulnerability exists in libcurl when an
│                       │       │                   application configures an HTTP/2 stream-dependency tree via
│                       │       │                    `CURLOPT_STREAM_DEPENDS` or `CURLOPT_STREAM_DEPENDS_E`,
│                       │       │                   subsequently invokes `curl_easy_reset()`, and finally
│                       │       │                   terminates the handle with `curl_easy_cleanup()`. During
│                       │       │                   this final cleanup phase, libcurl attempts to access and
│                       │       │                   modify an internal structure that was already deallocated
│                       │       │                   during the reset operation. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-10536.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-10536 
│                       ├ [7]   ╭ VulnerabilityID : CVE-2026-11352 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c2296b741c2097726bc66ebd6bd6626ca2468c77799b8d61e9e0
│                       │       │                   247a24973b77 
│                       │       ├ Description     : An issue in curl's QUIC UDP receive function allows a
│                       │       │                   malicious HTTP/3 server to trigger a remote denial of
│                       │       │                   service against a curl or libcurl client. Because the
│                       │       │                   helper function discards zero-length UDP datagrams before
│                       │       │                   counting them toward the per-call packet budget, a
│                       │       │                   connected QUIC peer can continuously stream empty datagrams
│                       │       │                    to indefinitely stall the client. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11352.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11352 
│                       ├ [8]   ╭ VulnerabilityID : CVE-2026-11564 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11564 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a3c5ae5ad474c61456da62b646a882f1f3f43c740e19b39fc813
│                       │       │                   d11e4ae2c3be 
│                       │       ├ Description     : libcurl keeps previously used connections in a connection
│                       │       │                   pool for subsequent transfers to reuse if one of them
│                       │       │                   matches the setup. An easy handle that first uses default
│                       │       │                   native CA trust can continue trusting the native platform
│                       │       │                   store after the application switches that same handle to
│                       │       │                   custom CA material for a later transfer. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11564.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11564 
│                       ├ [9]   ╭ VulnerabilityID : CVE-2026-11586 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11586 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6dad2bf0c1c37e92e2cad76b7fb6fd4c750b353d22c63016c5c9
│                       │       │                   555159b4b77b 
│                       │       ├ Description     : By default, curl automatically responds to WebSocket PING
│                       │       │                   frames. Because curl lacks an upper bound on memory
│                       │       │                   allocation for unacknowledged frames, a malicious server
│                       │       │                   can exhaust all available memory by flooding curl with
│                       │       │                   rapid, sequential PING messages. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11586.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11586 
│                       ├ [10]  ╭ VulnerabilityID : CVE-2026-12064 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-12064 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:eed53b6541a9cd7ec51544ae59d877b96f6ec7a96b2f4a3adcf9
│                       │       │                   86ddeeeed453 
│                       │       ├ Description     : When a user invokes curl using a schemeless URL combined
│                       │       │                   with `--proto-default` sftp (or scp), a disconnect occurs
│                       │       │                   between the tool layer and libcurl. The tool layer
│                       │       │                   incorrectly infers the URL scheme, which erroneously
│                       │       │                   bypasses the initialization of critical SSH security
│                       │       │                   options like CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256 and
│                       │       │                   CURLOPT_SSH_KNOWNHOSTS. Conversely, the libcurl runtime
│                       │       │                   successfully honors CURLOPT_DEFAULT_PROTOCOL and
│                       │       │                   establishes the connection via SFTP/SCP as specified.
│                       │       │                   Because the tool layer skipped the security configuration,
│                       │       │                   these SSH host verification options are silently omitted,
│                       │       │                   causing curl to connect to an unverified SSH remote host
│                       │       │                   without throwing an error. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-12064.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-12064 
│                       ├ [11]  ╭ VulnerabilityID : CVE-2026-8286 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8286 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:82336b06198d78b28b5295298d5f9804ece0ebc76cead328583b
│                       │       │                   492cf831bfbc 
│                       │       ├ Description     : A vulnerability exists where a new transfer that uses
│                       │       │                   STARTTLS to upgrade the connection might reuse an existing
│                       │       │                   live connection even though the TLS configuration
│                       │       │                   mismatches so it should not. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8286.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8286 
│                       ├ [12]  ╭ VulnerabilityID : CVE-2026-8458 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a1a08f8f42ea3abb54fa97263137e904afcdf749f335590fc0f1
│                       │       │                   dbccab8cb031 
│                       │       ├ Description     : libcurl might in some circumstances reuse the wrong
│                       │       │                   connection when asked to do Negotiate-authenticated ones,
│                       │       │                   even when they are set to use different "services". libcurl
│                       │       │                    features a pool of recent connections so that subsequent
│                       │       │                   requests can reuse an existing connection to avoid
│                       │       │                   overhead. When reusing a connection a range of criteria
│                       │       │                   must be met. Due to a logical error in the code, a request
│                       │       │                   that was issued by an application could wrongfully reuse an
│                       │       │                    existing connection to the same server that was
│                       │       │                   authenticated using different services. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8458.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8458 
│                       ├ [13]  ╭ VulnerabilityID : CVE-2026-8924 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8924 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6b1a5e7d5f01b43548d9e11a5e17aa754daabbc296eb412a9d33
│                       │       │                   49bb31af40f5 
│                       │       ├ Description     : A flaw in curl's cookie parsing logic allows a malicious
│                       │       │                   HTTP server to set "super cookies" that bypass the Public
│                       │       │                   Suffix List check. This enables an attacker-controlled
│                       │       │                   origin to inject cookies that curl will subsequently scope
│                       │       │                   and transmit to unrelated third-party domains. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8924.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8924 
│                       ├ [14]  ╭ VulnerabilityID : CVE-2026-8926 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8926 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a2f9a0c3ff2c247dde39da10d9ef4e3b58d2bbb9a19e75001ba1
│                       │       │                   c04f8dfbaf3c 
│                       │       ├ Description     : When asking curl to use a `.netrc` file to find credentials
│                       │       │                    and at the same time specifying a URL with a username
│                       │       │                   (without a password), like `https://user@example.com/`,
│                       │       │                   curl could wrongly get and use the password for *another*
│                       │       │                   user set in the `.netrc` file for that host if such a one
│                       │       │                   exists and there is no match for the specified user. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8926.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8926 
│                       ├ [15]  ╭ VulnerabilityID : CVE-2026-8932 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8932 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1b573a0db96c1b16205582189b25418aae65f69481d6ced2a0a1
│                       │       │                   91c657a3fe79 
│                       │       ├ Description     : libcurl would reuse a previously created connection even
│                       │       │                   when some mTLS config related option had been changed that
│                       │       │                   should have prohibited reuse. libcurl keeps previously used
│                       │       │                    connections in a connection pool for subsequent transfers
│                       │       │                   to reuse if one of them matches the setup. However, some
│                       │       │                   TLS settings related to client certificates were left out
│                       │       │                   from the configuration match checks, making them match too
│                       │       │                   easily. In particular options related to the private key.[
│                       │       │                   m 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8932.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8932 
│                       ├ [16]  ╭ VulnerabilityID : CVE-2026-9080 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9080 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1abb3c7e2fca923264f42bc634b8b6bb99e8dc0c61c1a97db98e
│                       │       │                   405229d17a91 
│                       │       ├ Description     : Calling `curl_easy_pause()` within the event-based
│                       │       │                   `CURLMOPT_SOCKETFUNCTION` callback triggers a
│                       │       │                   use-after-free vulnerability, where libcurl attempts to
│                       │       │                   store a flag using a dangling struct pointer immediately
│                       │       │                   after that pointer's memory has been freed. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9080.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9080 
│                       ├ [17]  ╭ VulnerabilityID : CVE-2026-9545 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9545 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9087bbcfab64eeb24b5ce1a3281949a34ad320f17be90ff4b6e2
│                       │       │                   15f64eae5c76 
│                       │       ├ Description     : In this scenario, libcurl first uses a proper HTTP/3 server
│                       │       │                    for the initial transfers, and when it makes a second
│                       │       │                   transfer to the same site it has been replaced by the
│                       │       │                   attacker's impostor machine - without a valid certificate.
│                       │       │                   When libcurl returns to the hostname the second time with a
│                       │       │                    cached SSL session (`CURLOPT_SSL_SESSIONID_CACHE` is not
│                       │       │                   disabled) and early data enabled (the
│                       │       │                   `CURLSSLOPT_EARLYDATA` bit is set in`CURLOPT_SSL_OPTIONS`),
│                       │       │                    libcurl might send off the second request's bytes on that
│                       │       │                   new connection *before* enforcing the certificate
│                       │       │                   verification failure. Potentially leaking sensitive
│                       │       │                   information. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9545.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9545 
│                       ├ [18]  ╭ VulnerabilityID : CVE-2026-9546 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9546 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:7954c8a26f30be8a40ea3ba64a931d8599dd888901ad4cb5b01d
│                       │       │                   fb818d0a236c 
│                       │       ├ Description     : A vulnerability in libcurl caused the HTTP `Referer:`
│                       │       │                   header to persist even when explicitly cleared. While the
│                       │       │                   documentation states that passing NULL to `CURLOPT_REFERER`
│                       │       │                    suppresses the header, the option failed to clear the
│                       │       │                   internal state. As a result, the previous referrer string
│                       │       │                   was erroneously reused and sent in subsequent requests,
│                       │       │                   potentially leaking sensitive information to unintended
│                       │       │                   servers. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9546.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9546 
│                       ├ [19]  ╭ VulnerabilityID : CVE-2026-9547 
│                       │       ├ PkgID           : curl@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : curl 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.1?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : 5ad51bed1e0ec137 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9547 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a8cf26ac3f82c63de0b68077bb133a88aa66c1152b6bd86e1261
│                       │       │                   d528b2bf8765 
│                       │       ├ Description     : When a libcurl-based application performs transfers via
│                       │       │                   `SCP://` or `SFTP://` and utilizes the
│                       │       │                   `CURLOPT_SSH_KEYFUNCTION` callback, it may silently accept
│                       │       │                   an untrusted server. This vulnerability occurs when a
│                       │       │                   server presents a host key type that does not match the
│                       │       │                   specific key type already recorded for that host in the
│                       │       │                   `known_hosts` file. Instead of rejecting the mismatch, the
│                       │       │                   callback mechanism fails to properly enforce the
│                       │       │                   restriction, allowing the connection to succeed without
│                       │       │                   warning and risking a potential man-in-the-middle attack.[
│                       │       │                   m 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9547.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9547 
│                       ├ [20]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:33054333fdeaf9329d6d78a2759be383d7a2d91de41566e13164
│                       │       │                   3c652b2689a8 
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
│                       ├ [21]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b248802eeb769a26ad2cdb911bfae8a7a21ae37c9ac744ec6b5f
│                       │       │                   3df9773fde85 
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
│                       ├ [22]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dbcf501c68a13203322a91c64b3bcd5d52a276a486fff25261a6
│                       │       │                   797f89012ab5 
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
│                       ├ [23]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:00c262ba65a6ffbdffbcf8534915b0533ecfa9399d011084f182
│                       │       │                   b732d23e875e 
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
│                       ├ [24]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │       ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : jq 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : ca2ce26b48ea1aa7 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4c5a1e62f1a093710ead93a028d617431274dc682e8b7a013a62
│                       │       │                   00d4ca2918f5 
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
│                       ├ [25]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f63a0a78e3cac3a3 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2d8f1b684ddb035bba74a14cc21234e88e68ea3f558993c52391
│                       │       │                   77539bfa429c 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [26]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libblkid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : f63a0a78e3cac3a3 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3af71ed477141e474b5e85790d8f16f3c8edb0ae5bc5a4c2d922
│                       │       │                   e0c9c991a0d9 
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
│                       ├ [27]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9e9f7692045b9f971e38b7e68168a5bfa122972a0391b21a161e
│                       │       │                   5a6dd6e136dd 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:55:54.12Z 
│                       ├ [28]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f191aed4e2fc482aacb933b31fffbd3fab5048449fec6b41a1df
│                       │       │                   fbe64f6ea386 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.227Z 
│                       ├ [29]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:380e5efa2abb485c9c2a9206b1970276c304681a814f73684ab8
│                       │       │                   37af978ee03a 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.367Z 
│                       ├ [30]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:25d63aa41208599f6c076031187a1402f81195929076583a97af
│                       │       │                   291340050669 
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
│                       │       ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-bin 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04 
│                       │       │                  ╰ UID : aa471766c29fe384 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0af9968ff54931a33a73f9ba9c5eed4de089e1fdfad8731b1978
│                       │       │                   02b5ffc49a28 
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
│                       ├ [32]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:94ed50dacb3ea926fe4cfc55394f1d32c455f67ceeeac4c86f4a
│                       │       │                   5c1784bb29e2 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:55:54.12Z 
│                       ├ [33]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e32846e425939eca593e75764a8fe2ba9eed02c1da7714887064
│                       │       │                   be94138cc946 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.227Z 
│                       ├ [34]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e65d8d9b981232d002ee6fc90fec8c173875742cdfe65e50c75a
│                       │       │                   60a87deffe98 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.367Z 
│                       ├ [35]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6ccbd10b00d0863bf3d18c862ff5bd45569f843f8b4703807019
│                       │       │                   ae70d8866253 
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
│                       ├ [36]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc-gconv-modules-extra 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 229c678f3865c408 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:34fb73f9ee0cca1e8488a5e87b9b5b7dd98536c8b972ad94b770
│                       │       │                   4ef813b8d6b6 
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
│                       ├ [37]  ╭ VulnerabilityID : CVE-2026-4046 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a781ae0500b364b0be0946f8fc9b7aa36101006166cfd7ba81bc
│                       │       │                   cb1e25f97cbb 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:55:54.12Z 
│                       ├ [38]  ╭ VulnerabilityID : CVE-2026-4437 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8a3b7f7be887e73d02bcf986db97dbe816a1f9cff76617122dac
│                       │       │                   1a4829eb605c 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.227Z 
│                       ├ [39]  ╭ VulnerabilityID : CVE-2026-4438 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:44ee0a13b364794f9ef0bfd1b72eec821693a4183974172f2873
│                       │       │                   3fe85dd695d0 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:56:34.367Z 
│                       ├ [40]  ╭ VulnerabilityID : CVE-2026-5435 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f8017bcafd6c0386dae381ae6726a667e2bcf516fec0964eb0d4
│                       │       │                   6db6553d9eeb 
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
│                       ├ [41]  ╭ VulnerabilityID : CVE-2026-6238 
│                       │       ├ PkgID           : libc6@2.43-2ubuntu2 
│                       │       ├ PkgName         : libc6 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                       │       │                  │       =ubuntu-26.04 
│                       │       │                  ╰ UID : a6167efe03e34488 
│                       │       ├ InstalledVersion: 2.43-2ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:cadd7a1c0baab32ead0295c3c9a69b8ae90645025810deecfe71
│                       │       │                   9d77739c21ab 
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
│                       ├ [42]  ╭ VulnerabilityID : CVE-2026-11856 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11856 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:251172ae0e8cacb9b64b773dfed13d129443825f71e25c927039
│                       │       │                   01d21dbb12b6 
│                       │       ├ Description     : Successfully using libcurl to do a transfer to a specific
│                       │       │                   HTTP origin (`hostA`) with **Digest** authentication and
│                       │       │                   then changing the origin to a different one (`hostB`) for a
│                       │       │                    second transfer, reusing the same handle, makes libcurl
│                       │       │                   wrongly pass on the `Authorization:` header field meant for
│                       │       │                    `hostA`, to `hostB`. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11856.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11856 
│                       ├ [43]  ╭ VulnerabilityID : CVE-2026-8925 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8925 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2349a6eb7d9705dfcf3cde032a7229facf37e0f780de6bb87b9d
│                       │       │                   8e54477b6987 
│                       │       ├ Description     : The curl logic that works with SASL authentication could
│                       │       │                   end up cleaning up the GSASL context *twice* without
│                       │       │                   clearing the pointer in between, making it `free()` the
│                       │       │                   same pointer twice. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8925.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8925 
│                       ├ [44]  ╭ VulnerabilityID : CVE-2026-8927 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8927 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5be09e3cd8c418bd9f3ada1dddc7743f787881a2edfe6049a9e2
│                       │       │                   6e301aba17be 
│                       │       ├ Description     : When reusing a libcurl handle for sequential transfers
│                       │       │                   driven by environment-variable proxy configuration, libcurl
│                       │       │                    fails to clear the proxy authentication state between
│                       │       │                   requests. Specifically, if the initial transfer
│                       │       │                   authenticates against `proxyA` using Digest auth, a
│                       │       │                   subsequent transfer routed through `proxyB` erroneously
│                       │       │                   leaks the `Proxy-Authorization:` header intended solely for
│                       │       │                    `proxyA`. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8927.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8927 
│                       ├ [45]  ╭ VulnerabilityID : CVE-2026-9079 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9079 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9a541b64e95d8bac5e08426708c25a7077506867748ec13460c9
│                       │       │                   1a294ceb8649 
│                       │       ├ Description     : libcurl had a flaw that when instructed to clear proxy
│                       │       │                   authentication credentials which made it not do so, leaving
│                       │       │                    the old credentials around to get used for subsequent
│                       │       │                   tranfers that should not know nor use them. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ VendorSeverity   ─ ubuntu: 2 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9079.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9079 
│                       ├ [46]  ╭ VulnerabilityID : CVE-2026-10536 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10536 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:825889d1cdc00cc44328b2a2527a5b27a1bd96c8f982a0c73a89
│                       │       │                   422938ce15fa 
│                       │       ├ Description     : A use-after-free vulnerability exists in libcurl when an
│                       │       │                   application configures an HTTP/2 stream-dependency tree via
│                       │       │                    `CURLOPT_STREAM_DEPENDS` or `CURLOPT_STREAM_DEPENDS_E`,
│                       │       │                   subsequently invokes `curl_easy_reset()`, and finally
│                       │       │                   terminates the handle with `curl_easy_cleanup()`. During
│                       │       │                   this final cleanup phase, libcurl attempts to access and
│                       │       │                   modify an internal structure that was already deallocated
│                       │       │                   during the reset operation. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-10536.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-10536 
│                       ├ [47]  ╭ VulnerabilityID : CVE-2026-11352 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:96db6bccc4c386adbe566e71b82c2fdba80100f5382a09c99f4e
│                       │       │                   1db4f4838f4a 
│                       │       ├ Description     : An issue in curl's QUIC UDP receive function allows a
│                       │       │                   malicious HTTP/3 server to trigger a remote denial of
│                       │       │                   service against a curl or libcurl client. Because the
│                       │       │                   helper function discards zero-length UDP datagrams before
│                       │       │                   counting them toward the per-call packet budget, a
│                       │       │                   connected QUIC peer can continuously stream empty datagrams
│                       │       │                    to indefinitely stall the client. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11352.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11352 
│                       ├ [48]  ╭ VulnerabilityID : CVE-2026-11564 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11564 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:a74e58dfde7f9dbcf87474d7e9bd186b4361e0c9b0b9a05e6e8b
│                       │       │                   dcca886bb4b0 
│                       │       ├ Description     : libcurl keeps previously used connections in a connection
│                       │       │                   pool for subsequent transfers to reuse if one of them
│                       │       │                   matches the setup. An easy handle that first uses default
│                       │       │                   native CA trust can continue trusting the native platform
│                       │       │                   store after the application switches that same handle to
│                       │       │                   custom CA material for a later transfer. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11564.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11564 
│                       ├ [49]  ╭ VulnerabilityID : CVE-2026-11586 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-11586 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9ef5dd26bba6ae5cf49b2b36afdbfae2141b6d41c9280d975139
│                       │       │                   ce013e1b27f9 
│                       │       ├ Description     : By default, curl automatically responds to WebSocket PING
│                       │       │                   frames. Because curl lacks an upper bound on memory
│                       │       │                   allocation for unacknowledged frames, a malicious server
│                       │       │                   can exhaust all available memory by flooding curl with
│                       │       │                   rapid, sequential PING messages. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-11586.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-11586 
│                       ├ [50]  ╭ VulnerabilityID : CVE-2026-12064 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-12064 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:711b281ece8e87e9b3ed699ea97199ed2f834861354ee7f0a00c
│                       │       │                   88bd2e2ba116 
│                       │       ├ Description     : When a user invokes curl using a schemeless URL combined
│                       │       │                   with `--proto-default` sftp (or scp), a disconnect occurs
│                       │       │                   between the tool layer and libcurl. The tool layer
│                       │       │                   incorrectly infers the URL scheme, which erroneously
│                       │       │                   bypasses the initialization of critical SSH security
│                       │       │                   options like CURLOPT_SSH_HOST_PUBLIC_KEY_SHA256 and
│                       │       │                   CURLOPT_SSH_KNOWNHOSTS. Conversely, the libcurl runtime
│                       │       │                   successfully honors CURLOPT_DEFAULT_PROTOCOL and
│                       │       │                   establishes the connection via SFTP/SCP as specified.
│                       │       │                   Because the tool layer skipped the security configuration,
│                       │       │                   these SSH host verification options are silently omitted,
│                       │       │                   causing curl to connect to an unverified SSH remote host
│                       │       │                   without throwing an error. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-12064.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-12064 
│                       ├ [51]  ╭ VulnerabilityID : CVE-2026-8286 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8286 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:cefef1a21cf01fbb1effc00c6bac4fb7f78c9ec3f09a87fb9c42
│                       │       │                   a0ab96b0c091 
│                       │       ├ Description     : A vulnerability exists where a new transfer that uses
│                       │       │                   STARTTLS to upgrade the connection might reuse an existing
│                       │       │                   live connection even though the TLS configuration
│                       │       │                   mismatches so it should not. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8286.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8286 
│                       ├ [52]  ╭ VulnerabilityID : CVE-2026-8458 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8458 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1637be0ffed6dce3637b72a34c57ce7d640fc0b64676662965d1
│                       │       │                   190dc5976962 
│                       │       ├ Description     : libcurl might in some circumstances reuse the wrong
│                       │       │                   connection when asked to do Negotiate-authenticated ones,
│                       │       │                   even when they are set to use different "services". libcurl
│                       │       │                    features a pool of recent connections so that subsequent
│                       │       │                   requests can reuse an existing connection to avoid
│                       │       │                   overhead. When reusing a connection a range of criteria
│                       │       │                   must be met. Due to a logical error in the code, a request
│                       │       │                   that was issued by an application could wrongfully reuse an
│                       │       │                    existing connection to the same server that was
│                       │       │                   authenticated using different services. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8458.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8458 
│                       ├ [53]  ╭ VulnerabilityID : CVE-2026-8924 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8924 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:851e4bf4a441bd760f77f02de9e617be4ffc0915d4dc099c4fb5
│                       │       │                   d887dcc20d57 
│                       │       ├ Description     : A flaw in curl's cookie parsing logic allows a malicious
│                       │       │                   HTTP server to set "super cookies" that bypass the Public
│                       │       │                   Suffix List check. This enables an attacker-controlled
│                       │       │                   origin to inject cookies that curl will subsequently scope
│                       │       │                   and transmit to unrelated third-party domains. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8924.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8924 
│                       ├ [54]  ╭ VulnerabilityID : CVE-2026-8926 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8926 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f3ae5a8b1b328c77eda020cd3c59fe6e3e7bde6fa60d2458c15a
│                       │       │                   ecf39565c3f3 
│                       │       ├ Description     : When asking curl to use a `.netrc` file to find credentials
│                       │       │                    and at the same time specifying a URL with a username
│                       │       │                   (without a password), like `https://user@example.com/`,
│                       │       │                   curl could wrongly get and use the password for *another*
│                       │       │                   user set in the `.netrc` file for that host if such a one
│                       │       │                   exists and there is no match for the specified user. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8926.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8926 
│                       ├ [55]  ╭ VulnerabilityID : CVE-2026-8932 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8932 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:00b8c319f08873981d22d2e68f5882b3d6f41d736129a9fcb00e
│                       │       │                   0605c56c5f02 
│                       │       ├ Description     : libcurl would reuse a previously created connection even
│                       │       │                   when some mTLS config related option had been changed that
│                       │       │                   should have prohibited reuse. libcurl keeps previously used
│                       │       │                    connections in a connection pool for subsequent transfers
│                       │       │                   to reuse if one of them matches the setup. However, some
│                       │       │                   TLS settings related to client certificates were left out
│                       │       │                   from the configuration match checks, making them match too
│                       │       │                   easily. In particular options related to the private key.[
│                       │       │                   m 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-8932.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-8932 
│                       ├ [56]  ╭ VulnerabilityID : CVE-2026-9080 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9080 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:42013129365d9e7d6549b2a5006ad05a414a8c5585e36e49ab54
│                       │       │                   472d3212f8b4 
│                       │       ├ Description     : Calling `curl_easy_pause()` within the event-based
│                       │       │                   `CURLMOPT_SOCKETFUNCTION` callback triggers a
│                       │       │                   use-after-free vulnerability, where libcurl attempts to
│                       │       │                   store a flag using a dangling struct pointer immediately
│                       │       │                   after that pointer's memory has been freed. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9080.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9080 
│                       ├ [57]  ╭ VulnerabilityID : CVE-2026-9545 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9545 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:58a842832a01ca3ee880fd79420dbdd462da0110e9a588ee4e22
│                       │       │                   7ac5c13ea5b9 
│                       │       ├ Description     : In this scenario, libcurl first uses a proper HTTP/3 server
│                       │       │                    for the initial transfers, and when it makes a second
│                       │       │                   transfer to the same site it has been replaced by the
│                       │       │                   attacker's impostor machine - without a valid certificate.
│                       │       │                   When libcurl returns to the hostname the second time with a
│                       │       │                    cached SSL session (`CURLOPT_SSL_SESSIONID_CACHE` is not
│                       │       │                   disabled) and early data enabled (the
│                       │       │                   `CURLSSLOPT_EARLYDATA` bit is set in`CURLOPT_SSL_OPTIONS`),
│                       │       │                    libcurl might send off the second request's bytes on that
│                       │       │                   new connection *before* enforcing the certificate
│                       │       │                   verification failure. Potentially leaking sensitive
│                       │       │                   information. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9545.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9545 
│                       ├ [58]  ╭ VulnerabilityID : CVE-2026-9546 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9546 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f59d1abefb44451bcd019313394d8f33b999ab5e3f15e08884b3
│                       │       │                   ed06234dede1 
│                       │       ├ Description     : A vulnerability in libcurl caused the HTTP `Referer:`
│                       │       │                   header to persist even when explicitly cleared. While the
│                       │       │                   documentation states that passing NULL to `CURLOPT_REFERER`
│                       │       │                    suppresses the header, the option failed to clear the
│                       │       │                   internal state. As a result, the previous referrer string
│                       │       │                   was erroneously reused and sent in subsequent requests,
│                       │       │                   potentially leaking sensitive information to unintended
│                       │       │                   servers. 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9546.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9546 
│                       ├ [59]  ╭ VulnerabilityID : CVE-2026-9547 
│                       │       ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.1 
│                       │       ├ PkgName         : libcurl4t64 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : af0eacbaed6011a0 
│                       │       ├ InstalledVersion: 8.18.0-1ubuntu2.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-9547 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:ef3723c6d33e5f5445b8e9eea7204fa9de2db355a16031cd6d10
│                       │       │                   032d9ce599bf 
│                       │       ├ Description     : When a libcurl-based application performs transfers via
│                       │       │                   `SCP://` or `SFTP://` and utilizes the
│                       │       │                   `CURLOPT_SSH_KEYFUNCTION` callback, it may silently accept
│                       │       │                   an untrusted server. This vulnerability occurs when a
│                       │       │                   server presents a host key type that does not match the
│                       │       │                   specific key type already recorded for that host in the
│                       │       │                   `known_hosts` file. Instead of rejecting the mismatch, the
│                       │       │                   callback mechanism fails to properly enforce the
│                       │       │                   restriction, allowing the connection to succeed without
│                       │       │                   warning and risking a potential man-in-the-middle attack.[
│                       │       │                   m 
│                       │       ├ Severity        : LOW 
│                       │       ├ VendorSeverity   ─ ubuntu: 1 
│                       │       ╰ References       ╭ [0]: https://curl.se/L7HzKXisfJ/CVE-2026-9547.md 
│                       │                          ╰ [1]: https://www.cve.org/CVERecord?id=CVE-2026-9547 
│                       ├ [60]  ╭ VulnerabilityID : CVE-2025-66382 
│                       │       ├ PkgID           : libexpat1@2.7.4-1 
│                       │       ├ PkgName         : libexpat1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : c17b9d4b5a8b1286 
│                       │       ├ InstalledVersion: 2.7.4-1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:40223aaf3a3e79fc0b5775e3e25caaa0ea6acf752d248010402a
│                       │       │                   b0e7043895f8 
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
│                       ├ [61]  ╭ VulnerabilityID : CVE-2024-2236 
│                       │       ├ PkgID           : libgcrypt20@1.12.0-2ubuntu0.1 
│                       │       ├ PkgName         : libgcrypt20 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu0.1?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : df31886cccfcce83 
│                       │       ├ InstalledVersion: 1.12.0-2ubuntu0.1 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:f4378c942e20fdb2f90eaf4313da2b6bf419cbba0ad3a7dd4e3e
│                       │       │                   c32787d4e1cf 
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
│                       ├ [62]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1c0cc441b475dfc20a014f79f34146ad15567acc6c748758fb2f
│                       │       │                   7a359bc4c818 
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
│                       ├ [63]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c6f3396c395bbbe4a14f12e39f3b23675fe785a6b0c610cd8ddf
│                       │       │                   1af729eb5f5e 
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
│                       ├ [64]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b7f779ff6273ad9024f6e239f6ab573ea12fcbe61357f4bfb2d3
│                       │       │                   716527cb0a6c 
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
│                       ├ [65]  ╭ VulnerabilityID : CVE-2026-43896 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dc2c8b3ea971124eb7c92b31ac633be4a9e94426f6165d93eacd
│                       │       │                   718f154914d9 
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
│                       ├ [66]  ╭ VulnerabilityID : CVE-2026-44777 
│                       │       ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │       ├ PkgName         : libjq1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : c49d39658a19eb59 
│                       │       ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:dd17b0078f768b0ead81420c347cdc0f14525364bf1ecd101958
│                       │       │                   e6453caca818 
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
│                       ├ [67]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ee0638a59a092c7e 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2f0b3ef833a67aef460680ce6468ac18577a348440bd6463bd94
│                       │       │                   f10b17a98bc9 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [68]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libmount1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                       │       │                  │       distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ee0638a59a092c7e 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4b0c00d5eefca12f3515816e37b24cd008476f0bea7af76d4e7b
│                       │       │                   021c8bca3370 
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
│                       ├ [69]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ff5e7b67d2385233 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c6099083e9dfa913d82afabe28cdc9ed3822b7ea32ffa1abe362
│                       │       │                   baa7779c37b7 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [70]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libsmartcols1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : ff5e7b67d2385233 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:81064216ec8b99973c620e8d0db7e71d6b47c5476c6b44c33d00
│                       │       │                   9430e23f4e75 
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
│                       ├ [71]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                       │       ├ PkgName         : libsystemd0 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 68ed9dc5cf416dae 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:712af994f8d4c2884586c7f69ce1987834adaa22807a89f26946
│                       │       │                   0ace2625e34e 
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
│                       ├ [72]  ╭ VulnerabilityID : CVE-2026-40228 
│                       │       ├ PkgID           : libudev1@259.5-0ubuntu3 
│                       │       ├ PkgName         : libudev1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                       │       │                  │       stro=ubuntu-26.04 
│                       │       │                  ╰ UID : 419f3d2219f938db 
│                       │       ├ InstalledVersion: 259.5-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:0ba1295550a5518078775d3a008bc03f8eb6c84678fa5fa9e150
│                       │       │                   21c728c73656 
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
│                       ├ [73]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 41d4afb2fde363cf 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:50e322f97eacad8dcfbb5f48de4f98811a44aef051e45feb1f09
│                       │       │                   7eaa0e4c349c 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [74]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : libuuid1 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : 41d4afb2fde363cf 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b92c90c9c73ba62ad5d61f0560818a6891b560b91ae240db758f
│                       │       │                   97be690ec3d8 
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
│                       ├ [75]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e1bfbadc9113c00a 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:13addcf108c5172686aa8885505e9a1fe46d2344ff363a83fe09
│                       │       │                   7fa74d170d58 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [76]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ PkgName         : login 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                       │       │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e1bfbadc9113c00a 
│                       │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9b23b82b4496ace5a9b8c40e336a035a39d91795f55357ed10a3
│                       │       │                   1d293e09b5b0 
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
│                       │       ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : login.defs 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                       │       │                  │       istro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : eaf648d5e4e975f7 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:64df218a1edc4c4fd728240d79a0506ea3f9c2391b5e6419a923
│                       │       │                   4dfdd15aabe9 
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
│                       ├ [78]  ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:59ed1e8927a7c94db0686642c2d92e0c5e65ad28314728f82b95
│                       │       │                   c5b48e8d6500 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [79]  ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : mount 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                       │       │                  │       ro=ubuntu-26.04 
│                       │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:63a54b2f5b596e2b158b2bd782358fb198a406c0f02fe4753611
│                       │       │                   df6516ac325d 
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
│                       ├ [80]  ╭ VulnerabilityID : CVE-2024-56433 
│                       │       ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │       ├ PkgName         : passwd 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                       │       │                  │       tro=ubuntu-26.04&epoch=1 
│                       │       │                  ╰ UID : e6ebfac85406f0d5 
│                       │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:4aadd0dfda59bb85706fddcc3aaabb4ffccad84caa261cd62fb8
│                       │       │                   62c2de1840cd 
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
│                       ├ [81]  ╭ VulnerabilityID : CVE-2026-42496 
│                       │       ├ PkgID           : perl-base@5.40.1-7build1 
│                       │       ├ PkgName         : perl-base 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/perl-base@5.40.1-7build1?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : a27563409d231488 
│                       │       ├ InstalledVersion: 5.40.1-7build1 
│                       │       ├ FixedVersion    : 5.40.1-7ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42496 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:b17b3d0d4a3d2c0099652dc69272bc6c50edc710bdc31f55449a
│                       │       │                   676d7c29874b 
│                       │       ├ Title           : perl-archive-tar: perl-archive-tar: Path traversal via
│                       │       │                   crafted symlinks allows arbitrary file access 
│                       │       ├ Description     : Archive::Tar versions before 3.08 for Perl extract symlinks
│                       │       │                    with attacker controlled targets outside the extraction
│                       │       │                   directory.
│                       │       │                   
│                       │       │                   _make_special_file() passes the tar header's linkname to
│                       │       │                   symlink() without validating it against absolute paths or
│                       │       │                   .. segments. The secure-extract mode check that guards
│                       │       │                   regular file extraction does not cover the symlink target.
│                       │       │                   A subsequent open through the extracted name reads or
│                       │       │                   writes the attacker chosen path. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-59 
│                       │       ├ VendorSeverity   ╭ amazon: 3 
│                       │       │                  ├ azure : 3 
│                       │       │                  ├ nvd   : 4 
│                       │       │                  ├ redhat: 3 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                       │       │                  │        │           H/A:N 
│                       │       │                  │        ╰ V3Score : 9.1 
│                       │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:C/C:H/I:
│                       │       │                           │           H/A:H 
│                       │       │                           ╰ V3Score : 8.2 
│                       │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42496 
│                       │       │                  ├ [1]: https://github.com/jib/archive-tar-new/commit/17c8734
│                       │       │                  │      92a05eddc0de18c1485e0b2cccd5a9158.patch 
│                       │       │                  ├ [2]: https://lists.security.metacpan.org/cve-announce/msg/
│                       │       │                  │      40396459/ 
│                       │       │                  ├ [3]: https://metacpan.org/release/BINGOS/Archive-Tar-3.08/
│                       │       │                  │      changes 
│                       │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42496 
│                       │       │                  ├ [5]: https://ubuntu.com/security/notices/USN-8467-1 
│                       │       │                  ├ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42496 
│                       │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-42497 
│                       │       ├ PublishedDate   : 2026-05-26T02:16:40.13Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T10:47:55.753Z 
│                       ├ [82]  ╭ VulnerabilityID : CVE-2026-8376 
│                       │       ├ PkgID           : perl-base@5.40.1-7build1 
│                       │       ├ PkgName         : perl-base 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/perl-base@5.40.1-7build1?arch=amd64&d
│                       │       │                  │       istro=ubuntu-26.04 
│                       │       │                  ╰ UID : a27563409d231488 
│                       │       ├ InstalledVersion: 5.40.1-7build1 
│                       │       ├ FixedVersion    : 5.40.1-7ubuntu0.1 
│                       │       ├ Status          : fixed 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-8376 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:06573d917db603512c85d46417fb00b46bb3bd1a56ed313a6322
│                       │       │                   e6b56f125cfa 
│                       │       ├ Title           : Perl versions through 5.43.10 have a heap buffer overflow
│                       │       │                   when compili ... 
│                       │       ├ Description     : Perl versions through 5.43.10 have a heap buffer overflow
│                       │       │                   when compiling regular expressions with a repeated fixed
│                       │       │                   string on 32-bit builds.
│                       │       │                   
│                       │       │                   Perl_study_chunk in regcomp_study.c checked the size of the
│                       │       │                    joined substring buffer in characters rather than bytes.
│                       │       │                   For a quantified fixed substring with a large minimum
│                       │       │                   count, the byte length mincount * l could overflow SSize_t,
│                       │       │                    producing an undersized SvGROW allocation; the subsequent
│                       │       │                   copy writes past the end of the buffer.
│                       │       │                   A caller that compiles an attacker-controlled regular
│                       │       │                   expression on a 32-bit perl build triggers a heap buffer
│                       │       │                   overflow at compile time. 
│                       │       ├ Severity        : MEDIUM 
│                       │       ├ CweIDs           ─ [0]: CWE-680 
│                       │       ├ VendorSeverity   ╭ amazon: 2 
│                       │       │                  ├ nvd   : 4 
│                       │       │                  ╰ ubuntu: 2 
│                       │       ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H 
│                       │       │                        ╰ V3Score : 9.8 
│                       │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/26/1 
│                       │       │                  ├ [1]: https://github.com/Perl/perl5/commit/5e7f119eb2bb1181
│                       │       │                  │      be908701f22bf7068e722f1c.patch 
│                       │       │                  ├ [2]: https://github.com/Perl/perl5/pull/24433 
│                       │       │                  ├ [3]: https://ubuntu.com/security/notices/USN-8467-1 
│                       │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-8376 
│                       │       ├ PublishedDate   : 2026-05-26T00:16:57.15Z 
│                       │       ╰ LastModifiedDate: 2026-06-17T11:03:51.843Z 
│                       ├ [83]  ╭ VulnerabilityID : CVE-2026-35341 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1cab3a3ddc90c09947d183fbd06fc3aa040aec26f0a65a9c5364
│                       │       │                   db282e2cfb8b 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:25.5Z 
│                       ├ [84]  ╭ VulnerabilityID : CVE-2026-35344 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:90cf6512ce8181eee40b6f600b1e4a6540d11e8f8a11a33ef77b
│                       │       │                   db20320ecfb9 
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
│                       ├ [85]  ╭ VulnerabilityID : CVE-2026-35345 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:633b62befe58935209fa2375f3f39f802367654720e9ef10e4a0
│                       │       │                   2af2fec5f8f9 
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
│                       ├ [86]  ╭ VulnerabilityID : CVE-2026-35348 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:6044ce8df5cb1ed90bf2a07dbb69560a55501101d8f504d6be0f
│                       │       │                   65ae7fd31583 
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
│                       ├ [87]  ╭ VulnerabilityID : CVE-2026-35350 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:cafb41af3380e994b9ac356c040c0b79a7d6ad9e7d6870f525be
│                       │       │                   7b87f405e880 
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
│                       ├ [88]  ╭ VulnerabilityID : CVE-2026-35351 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:9fe97804d965c9f25d40592675a76c62124257d470c4f35c04e3
│                       │       │                   5d5b59cd9d98 
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
│                       ├ [89]  ╭ VulnerabilityID : CVE-2026-35352 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:de3d09f27959cf12681482923f79641f9adbeb9e2071ab264406
│                       │       │                   e5a590e800e8 
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
│                       ├ [90]  ╭ VulnerabilityID : CVE-2026-35354 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:bdcdba9ce2fd354a6327d30926c02b1a8ac2b65ff5665cb7015a
│                       │       │                   96b3bb89cbb6 
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
│                       ├ [91]  ╭ VulnerabilityID : CVE-2026-35357 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:80674dc84305b35f6129386a0500ea342700d3e9a682fa980175
│                       │       │                   318312091204 
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
│                       ├ [92]  ╭ VulnerabilityID : CVE-2026-35359 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:d0ee9ec305721f656335237d8bf2ad1803106c0944abc787cc56
│                       │       │                   f1f28fe04554 
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
│                       ├ [93]  ╭ VulnerabilityID : CVE-2026-35360 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:e4bc7e8be43ea78b017b927998203cb54649355842a23122ce0d
│                       │       │                   91c216280a4a 
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
│                       ├ [94]  ╭ VulnerabilityID : CVE-2026-35363 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1675dcf7309ec1a9336f12ad4c61f87b470a9178c534f108efcf
│                       │       │                   08c3ca2067e8 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:27.867Z 
│                       ├ [95]  ╭ VulnerabilityID : CVE-2026-35364 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3504b1fc3f758ed5c955d920e4f7b9f58100c69952fed03f9f2d
│                       │       │                   b9fc26fa7358 
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
│                       ├ [96]  ╭ VulnerabilityID : CVE-2026-35367 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:8e1b6311d8d31eea6d1ac7d28de45365733ca1d979746b68b682
│                       │       │                   fa915f81d056 
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
│                       ├ [97]  ╭ VulnerabilityID : CVE-2026-35368 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:c9a104e08c100cc6d5dc69f96114d6f2be11e8a84bd3ee1c4395
│                       │       │                   38957d1f5902 
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
│                       ├ [98]  ╭ VulnerabilityID : CVE-2026-35370 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:04a1947640ad988ee0e4eb14ff702b53f87d1da1b1a408fca273
│                       │       │                   409d5546513e 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.613Z 
│                       ├ [99]  ╭ VulnerabilityID : CVE-2026-35371 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:2753d71778bc7476d200c99695cad09f334b110b57dee7e63ff2
│                       │       │                   e5b2b874ebce 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.723Z 
│                       ├ [100] ╭ VulnerabilityID : CVE-2026-35373 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:530ac0848047b0c591435adbdd1c37512ad244853d6731f6a9bb
│                       │       │                   ad030d651b22 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:40:28.933Z 
│                       ├ [101] ╭ VulnerabilityID : CVE-2026-35374 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:3d9a35a0a9a59ec44dc7a8d5f7740c3e47157d2ea5086906c7f5
│                       │       │                   a70626971601 
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
│                       ├ [102] ╭ VulnerabilityID : CVE-2026-35377 
│                       │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │       ├ PkgName         : rust-coreutils 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                       │       │                  │       d64&distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 211a571db931b2ab 
│                       │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:1382553a855f5ce48f49459cb571cc9a05bd6ad2be899be51b9f
│                       │       │                   bb4a76161ab8 
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
│                       ├ [103] ╭ VulnerabilityID : CVE-2025-45582 
│                       │       ├ PkgID           : tar@1.35+dfsg-4 
│                       │       ├ PkgName         : tar 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                       │       │                  │       buntu-26.04 
│                       │       │                  ╰ UID : df8f3d12dd71b054 
│                       │       ├ InstalledVersion: 1.35+dfsg-4 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:5014037aaec2aff2bd38259e337d3c06734532bde6f824fb4977
│                       │       │                   9f94ef616fa7 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T09:25:34.87Z 
│                       ├ [104] ╭ VulnerabilityID : CVE-2026-27456 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:594486ba1f08dec923d6d029f7aaa251da5bc543174c2227bbb9
│                       │       │                   803d03b58f72 
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
│                       │       ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                       ├ [105] ╭ VulnerabilityID : CVE-2026-3184 
│                       │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                       │       ├ PkgName         : util-linux 
│                       │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                       │       │                  │       &distro=ubuntu-26.04 
│                       │       │                  ╰ UID : 34e9503915630576 
│                       │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                       │       ├ Status          : affected 
│                       │       ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                       │       │                  │         f182cba188d55773b474c 
│                       │       │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                       │       │                            64d317423b0848ef36d27 
│                       │       ├ SeveritySource  : ubuntu 
│                       │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                       │       ├ DataSource       ╭ ID  : ubuntu 
│                       │       │                  ├ Name: Ubuntu CVE Tracker 
│                       │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │       ├ Fingerprint     : sha256:eaee8812873227eb42c434dc5ba64a1fbaf9b4d9f784747b325e
│                       │       │                   6cc5d8706263 
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
│                       ╰ [106] ╭ VulnerabilityID : CVE-2026-27171 
│                               ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ PkgName         : zlib1g 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu
│                               │                  │       3?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                               │                  ╰ UID : f9537564bd1f9cb2 
│                               ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042e
│                               │                  │         f182cba188d55773b474c 
│                               │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c
│                               │                            64d317423b0848ef36d27 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:60aec482ea3a86bb564aa1ddec96fdeb72ec257e272bd36091a9
│                               │                   959ab428170f 
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
│                       │     │                  ╰ UID : af9e86e80fd64186 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.18.8, 3.1.4, 2.21.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                       │     │                  │         82cba188d55773b474c 
│                       │     │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                       │     │                            d317423b0848ef36d27 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54512 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:7e259216fa5ac7fe989e94d56a663339b53b64ac3086ba52caf2c5
│                       │     │                   a6e3906e37 
│                       │     ├ Title           : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionali ... 
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
│                       │     ├ VendorSeverity   ─ ghsa: 3 
│                       │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H 
│                       │     │                         ╰ V3Score : 8.1 
│                       │     ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/43
│                       │     │                  │      4d6c511de7fdd9872f29157aafb6162d12d8d5 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/issues/5988 
│                       │     │                  ╰ [3]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                         advisories/GHSA-j3rv-43j4-c7qm 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.203Z 
│                       │     ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
│                       ├ [1] ╭ VulnerabilityID : CVE-2026-54513 
│                       │     ├ VendorIDs        ─ [0]: GHSA-rmj7-2vxq-3g9f 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : af9e86e80fd64186 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.18.8, 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                       │     │                  │         82cba188d55773b474c 
│                       │     │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                       │     │                            d317423b0848ef36d27 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54513 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:89cb48cdab9c8024a0a9bd66cfaeaf28190d937a55cc2fb997e678
│                       │     │                   e502d48b05 
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
│                       │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54513 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/01
│                       │     │                  │      d1692c8d0ed03e51a0e3c4f8a9e6908e4931e5 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/24
│                       │     │                  │      529da29fdf46ff94ca38de9ebf31cd188f5e8e 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/issues/5981 
│                       │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/issues/5983 
│                       │     │                  ├ [6]: https://github.com/FasterXML/jackson-databind/pull/5984 
│                       │     │                  ├ [7]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                  │      advisories/GHSA-rmj7-2vxq-3g9f 
│                       │     │                  ├ [8]: https://nvd.nist.gov/vuln/detail/CVE-2026-54513 
│                       │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-54513 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.333Z 
│                       │     ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
│                       ├ [2] ╭ VulnerabilityID : CVE-2026-54514 
│                       │     ├ VendorIDs        ─ [0]: GHSA-hgj6-7826-r7m5 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : af9e86e80fd64186 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.18.8, 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                       │     │                  │         82cba188d55773b474c 
│                       │     │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                       │     │                            d317423b0848ef36d27 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54514 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:067f53648435eaa181bce6734e657e04ac078ea63d0537890a28a8
│                       │     │                   3f0b6b6192 
│                       │     ├ Title           : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionali ... 
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
│                       │     ├ VendorSeverity   ─ ghsa: 2 
│                       │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N 
│                       │     │                         ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/1f
│                       │     │                  │      5a1037b1e9e05920e755cb35f198bcd46667e4 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/pull/5951 
│                       │     │                  ╰ [3]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                         advisories/GHSA-hgj6-7826-r7m5 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.467Z 
│                       │     ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
│                       ├ [3] ╭ VulnerabilityID : CVE-2026-54515 
│                       │     ├ VendorIDs        ─ [0]: GHSA-5jmj-h7xm-6q6v 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : af9e86e80fd64186 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 3.1.4, 2.18.9, 2.21.5 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                       │     │                  │         82cba188d55773b474c 
│                       │     │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                       │     │                            d317423b0848ef36d27 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54515 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:3b74bfe8d92e840862db5dba4158107755d4628e14ed0cf2c7a903
│                       │     │                   149dcf28dc 
│                       │     ├ Title           : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionali ... 
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
│                       │     ├ VendorSeverity   ─ ghsa: 2 
│                       │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N 
│                       │     │                         ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/0e
│                       │     │                  │      1b0b211f7a53baa62ba2f4c9bd006c7bf4d5fa 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/issues/5962 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/issues/5964 
│                       │     │                  ╰ [4]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                         advisories/GHSA-5jmj-h7xm-6q6v 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.597Z 
│                       │     ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
│                       ├ [4] ╭ VulnerabilityID : CVE-2026-54516 
│                       │     ├ VendorIDs        ─ [0]: GHSA-9fxm-vc8v-hj55 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : af9e86e80fd64186 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                       │     │                  │         82cba188d55773b474c 
│                       │     │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                       │     │                            d317423b0848ef36d27 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54516 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:018796fe2505827795bb60ffd41207d1ca8415b2bced6607f44be0
│                       │     │                   85a652c7e6 
│                       │     ├ Title           : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionali ... 
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
│                       │     ├ VendorSeverity   ─ ghsa: 2 
│                       │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N 
│                       │     │                         ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/c3
│                       │     │                  │      d56dd25d52319828147c5b9aeabf2d485c250a 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/e8
│                       │     │                  │      8cb17006b6af4883b973058f0bb6486e5074af 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/pull/5967 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5968 
│                       │     │                  ╰ [5]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                         advisories/GHSA-9fxm-vc8v-hj55 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.723Z 
│                       │     ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
│                       ├ [5] ╭ VulnerabilityID : CVE-2026-54517 
│                       │     ├ VendorIDs        ─ [0]: GHSA-5hh8-q8hv-fr38 
│                       │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                       │     ├ PkgPath         : openaf/openaf.jar 
│                       │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                       │     │                  │       2.21.3 
│                       │     │                  ╰ UID : af9e86e80fd64186 
│                       │     ├ InstalledVersion: 2.21.3 
│                       │     ├ FixedVersion    : 2.21.4, 3.1.4 
│                       │     ├ Status          : fixed 
│                       │     ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                       │     │                  │         82cba188d55773b474c 
│                       │     │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                       │     │                            d317423b0848ef36d27 
│                       │     ├ SeveritySource  : ghsa 
│                       │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54517 
│                       │     ├ DataSource       ╭ ID  : ghsa 
│                       │     │                  ├ Name: GitHub Security Advisory Maven 
│                       │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                       │     │                          osystem%3Amaven 
│                       │     ├ Fingerprint     : sha256:a08716a57f97ed350588d473514ac97edf6447d019f088b2101534
│                       │     │                   67167d76df 
│                       │     ├ Title           : jackson-databind contains the general-purpose data-binding
│                       │     │                   functionali ... 
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
│                       │     ├ VendorSeverity   ─ ghsa: 2 
│                       │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N 
│                       │     │                         ╰ V3Score : 5.3 
│                       │     ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                       │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/5b
│                       │     │                  │      f23edb4221f7dd2ec8e71ff6d26c61640f261d 
│                       │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/94
│                       │     │                  │      c5d215b3af1505098c686405d9641f041a9962 
│                       │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/pull/5969 
│                       │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5970 
│                       │     │                  ╰ [5]: https://github.com/FasterXML/jackson-databind/security/
│                       │     │                         advisories/GHSA-5hh8-q8hv-fr38 
│                       │     ├ PublishedDate   : 2026-06-23T21:17:02.853Z 
│                       │     ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
│                       ╰ [6] ╭ VulnerabilityID : CVE-2026-54518 
│                             ├ VendorIDs        ─ [0]: GHSA-rcqc-6cw3-h962 
│                             ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                             ├ PkgPath         : openaf/openaf.jar 
│                             ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind@
│                             │                  │       2.21.3 
│                             │                  ╰ UID : af9e86e80fd64186 
│                             ├ InstalledVersion: 2.21.3 
│                             ├ FixedVersion    : 2.21.4 
│                             ├ Status          : fixed 
│                             ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef1
│                             │                  │         82cba188d55773b474c 
│                             │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c64
│                             │                            d317423b0848ef36d27 
│                             ├ SeveritySource  : ghsa 
│                             ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54518 
│                             ├ DataSource       ╭ ID  : ghsa 
│                             │                  ├ Name: GitHub Security Advisory Maven 
│                             │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+ec
│                             │                          osystem%3Amaven 
│                             ├ Fingerprint     : sha256:5fc9fbb2ba7eab4c64b5888216f27d679e83e84aa253ab4ee537c5
│                             │                   0a0c2208e9 
│                             ├ Title           : jackson-databind contains the general-purpose data-binding
│                             │                   functionali ... 
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
│                             ├ VendorSeverity   ─ ghsa: 2 
│                             ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N 
│                             │                         ╰ V3Score : 6.5 
│                             ├ References       ╭ [0]: https://github.com/FasterXML/jackson-databind 
│                             │                  ├ [1]: https://github.com/FasterXML/jackson-databind/commit/72
│                             │                  │      1fa07ebbd4aab4a659a1a68940878315c3e341 
│                             │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/d6
│                             │                  │      33bc038f200c1397c07f1a2b46f58e72c91eea 
│                             │                  ├ [3]: https://github.com/FasterXML/jackson-databind/pull/5971 
│                             │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5973 
│                             │                  ╰ [5]: https://github.com/FasterXML/jackson-databind/security/
│                             │                         advisories/GHSA-rcqc-6cw3-h962 
│                             ├ PublishedDate   : 2026-06-23T22:16:32.073Z 
│                             ╰ LastModifiedDate: 2026-06-25T16:14:14.483Z 
╰ [2] ╭ Target         : usr/bin/pebble 
      ├ Class          : lang-pkgs 
      ├ Type           : gobinary 
      ├ Packages        
      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-25680 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5028 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:7fcb43c72aa29d4172ed763f432da6985e506edcb2c7bba622a34
                        │      │                   91103660ee0 
                        │      ├ Title           : Parsing arbitrary HTML can consume excessive CPU time,
                        │      │                   possibly leadin ... 
                        │      ├ Description     : Parsing arbitrary HTML can consume excessive CPU time,
                        │      │                   possibly leading to denial of service. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-400 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ╰ azure : 2 
                        │      ├ References       ╭ [0]: https://go.dev/cl/781702 
                        │      │                  ├ [1]: https://go.dev/issue/79573 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-25680 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5028 
                        │      ├ PublishedDate   : 2026-05-22T16:16:19.753Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.14Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-25681 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5029 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:35c23b6a7360ea55a4039c0f10644a91e28688a8244ae5d305ec1
                        │      │                   6f34e572e5f 
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
                        │      ├ References       ╭ [0]: https://go.dev/cl/781703 
                        │      │                  ├ [1]: https://go.dev/issue/79574 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-25681 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5029 
                        │      ├ PublishedDate   : 2026-05-22T16:16:19.863Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.343Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-27136 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5030 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:11aa89d00760eb0e216a2f17fea67e10ef7941e7b297bb4abca00
                        │      │                   fc5a66d3ee0 
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
                        │      ├ References       ╭ [0]: https://go.dev/cl/781685 
                        │      │                  ├ [1]: https://go.dev/issue/79575 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27136 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5030 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.087Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:26:43.803Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-33814 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.53.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:db4e84bffd6146172b7694228be1866f3a5b883d341278347c2c2
                        │      │                   941cf899009 
                        │      ├ Title           : net/http/internal/http2: golang: golang.org/x/net: Go
                        │      │                   HTTP/2: Denial of Service via malformed
                        │      │                   SETTINGS_MAX_FRAME_SIZE frame 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2026-33814 
                        │      │                  ├ [1] : https://github.com/golang/go/issues/78476 
                        │      │                  ├ [2] : https://go-review.googlesource.com/c/go/+/761581 
                        │      │                  ├ [3] : https://go-review.googlesource.com/c/net/+/761640 
                        │      │                  ├ [4] : https://go.dev/cl/761581 
                        │      │                  ├ [5] : https://go.dev/cl/761640 
                        │      │                  ├ [6] : https://go.dev/issue/78476 
                        │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/qcCIEXs
                        │      │                  │       o47M 
                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2026-33814.html 
                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2026-22121.html 
                        │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
                        │      │                  ├ [11]: https://pkg.go.dev/vuln/GO-2026-4918 
                        │      │                  ├ [12]: https://ubuntu.com/security/notices/USN-8430-1 
                        │      │                  ├ [13]: https://ubuntu.com/security/notices/USN-8471-1 
                        │      │                  ├ [14]: https://ubuntu.com/security/notices/USN-8472-1 
                        │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-8473-1 
                        │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:38:08.657Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-39821 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5026 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:3fef1e106c27c4c18fda23485668513760cca7e1867647353bdbc
                        │      │                   7ce85162c7c 
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
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ├ azure : 4 
                        │      │                  ├ redhat: 3 
                        │      │                  ╰ ubuntu: 2 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 8.2 
                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-39821 
                        │      │                  ├ [1]: https://github.com/golang/go/issues/78760 
                        │      │                  ├ [2]: https://go.dev/cl/767220 
                        │      │                  ├ [3]: https://go.dev/issue/78760 
                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-5026 
                        │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8416-1 
                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:42:38.333Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2026-42502 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5027 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:c477d1f3dcad04969fc29a82fe2e883bb1086053780556b1dcd2a
                        │      │                   2cf06d4c664 
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
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-42506 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5025 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.55.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d0d77219711f576d55ab95eb5caf5c84f1d71d97b3336d4ed70fc
                        │      │                   5dafa8015b0 
                        │      ├ Title           : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result  ... 
                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
                        │      │                   can result in an unexpected HTML tree. This can be leveraged
                        │      │                    to execute XSS attacks in applications that attempt to
                        │      │                   sanitize input HTML before rendering. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ╭ amazon: 3 
                        │      │                  ╰ azure : 2 
                        │      ├ References       ╭ [0]: https://go.dev/cl/781700 
                        │      │                  ├ [1]: https://go.dev/issue/79571 
                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
                        │      │                  │      lu8 
                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42506 
                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5025 
                        │      ├ PublishedDate   : 2026-05-22T16:16:20.803Z 
                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.993Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2025-47911 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4440 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.45.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47911 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:170f658a9515b470196c78f76ba1281217b445a95f333926feb7d
                        │      │                   616a0602f61 
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
                        ├ [8]  ╭ VulnerabilityID : CVE-2025-58190 
                        │      ├ VendorIDs        ─ [0]: GO-2026-4441 
                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
                        │      ├ PkgName         : golang.org/x/net 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
                        │      │                  ╰ UID : b8870a94f706b324 
                        │      ├ InstalledVersion: v0.40.0 
                        │      ├ FixedVersion    : 0.45.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ SeveritySource  : nvd 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58190 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:29ab34e91c3f4a2929c39aa44d8db89591905bafbff9c0b27f71d
                        │      │                   8e3b02310f1 
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
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-39824 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5024 
                        │      ├ PkgID           : golang.org/x/sys@v0.33.0 
                        │      ├ PkgName         : golang.org/x/sys 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.33.0 
                        │      │                  ╰ UID : a350d4cc028089d4 
                        │      ├ InstalledVersion: v0.33.0 
                        │      ├ FixedVersion    : 0.44.0 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:3425fcbabce95727fbcabc71525a04d5e53d85b9f7d7073e63a6b
                        │      │                   4f687c80c50 
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
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:3699c51aa06247ca6b9df744385465e8fc3c4e98273f980a78d22
                        │      │                   2ab0e3b0bf5 
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
                        │      ├ VendorSeverity   ╭ amazon : 2 
                        │      │                  ╰ bitnami: 2 
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
                        │      ╰ LastModifiedDate: 2026-06-17T10:26:45.23Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-42504 
                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
                        │      ├ PkgID           : stdlib@v1.26.3 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
                        │      │                  ╰ UID : 88b4097712908b9b 
                        │      ├ InstalledVersion: v1.26.3 
                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                        │      │                  │         182cba188d55773b474c 
                        │      │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                        │      │                            4d317423b0848ef36d27 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:cc259b633a60f5b4d5c3ad74a93819b9b7e8362fdbaf09c7f91b3
                        │      │                   652262d599e 
                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
                        │      │                   invalid enc ... 
                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
                        │      │                   invalid encoded-words can consume excessive CPU. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-407 
                        │      ├ VendorSeverity   ╭ amazon : 2 
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
                               ├ Layer            ╭ Digest: sha256:3b1af79c224535e8932ed23074188308a79f22b042ef
                               │                  │         182cba188d55773b474c 
                               │                  ╰ DiffID: sha256:3f8d66faccfbaf6ff1946a0a35a3da0cb64e9696a7c6
                               │                            4d317423b0848ef36d27 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:6c230f253eee9fc1f1646459e9530a2afd7bf24f445316d83e6d3
                               │                   5f9c9bd659a 
                               ├ Title           : net/textproto: golang: Golang net/textproto: Misleading
                               │                   error messages via input injection 
                               ├ Description     : When returning errors, functions in the net/textproto
                               │                   package would include its input as part of the error. This
                               │                   might allow an attacker to inject misleading content to
                               │                   errors that are printed or logged. 
                               ├ Severity        : MEDIUM 
                               ├ VendorSeverity   ╭ amazon : 2 
                               │                  ├ bitnami: 2 
                               │                  ╰ redhat : 2 
                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                               │                  │         │           L/A:N 
                               │                  │         ╰ V3Score : 5.3 
                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                               │                            │           L/A:N 
                               │                            ╰ V3Score : 5.3 
                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42507 
                               │                  ├ [1]: https://go.dev/cl/777060 
                               │                  ├ [2]: https://go.dev/issue/79346 
                               │                  ├ [3]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
                               │                  │      cKw 
                               │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
                               │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5039 
                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42507 
                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
                               ╰ LastModifiedDate: 2026-06-17T10:47:57.137Z 
```
