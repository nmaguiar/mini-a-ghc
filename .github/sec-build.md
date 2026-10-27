```yaml
╭ [0] ╭ Target  : nmaguiar/mini-a-ghc:build (debian forky/sid) 
│     ├ Class   : os-pkgs 
│     ├ Type    : debian 
│     ╰ Packages 
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
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78667 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:eb3509c3580f41559c65bf47d7cd1b898739ed49f51a73229c961
                        │      │                   63c84721d28 
                        │      ├ Title           : net/http: golang: golang: Denial of Service via crafted HTTP
                        │      │                    Range headers 
                        │      ├ Description     : When parsing a Range header containing a large number of
                        │      │                   small ranges, FileServer(FS), ServeContent, and
                        │      │                   ServeFile(FS) can consume an excessive amount of CPU. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ redhat     : 3 
                        │      │                  ├ rocky      : 3 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:88336 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-78667 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [21]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [37]: https://errata.almalinux.org/10/ALSA-2026-88336.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81858 
                        │      │                  ├ [40]: https://go.dev/cl/847309 
                        │      │                  ├ [41]: https://go.dev/issue/81858 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://linux.oracle.com/cve/CVE-2026-78667.html 
                        │      │                  ├ [44]: https://linux.oracle.com/errata/ELSA-2026-89761.html 
                        │      │                  ├ [45]: https://nvd.nist.gov/vuln/detail/CVE-2026-78667 
                        │      │                  ├ [46]: https://pkg.go.dev/vuln/GO-2026-6609 
                        │      │                  ├ [47]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [48]: https://www.cve.org/CVERecord?id=CVE-2026-78667 
                        │      │                  ╰ [49]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.88Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.69Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-78669 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6611 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78669 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:b090fdca51dfc939864445dc522f6d30d459a1d9b14a965753fff
                        │      │                   48b9e1ea76a 
                        │      ├ Title           : net/http: net/http/internal/http2: golang.org/x/net/http2:
                        │      │                   net/http: Denial of Service via excessive HTTP/2 SETTINGS
                        │      │                   frames 
                        │      ├ Description     : A malicious HTTP/2 peer can cause excessive CPU consumption
                        │      │                   in the client or server by opening a large number of streams
                        │      │                    and then sending many small SETTINGS frames containing
                        │      │                   SETTINGS_INITIAL_WINDOW_SIZE values. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ azure      : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ oracle-oval: 4 
                        │      │                  ├ redhat     : 3 
                        │      │                  ├ rocky      : 4 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:88336 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:88354 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-78669 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [9] : https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [13]: https://errata.almalinux.org/10/ALSA-2026-88336.html 
                        │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2026:88354 
                        │      │                  ├ [15]: https://github.com/golang/go/issues/81742 
                        │      │                  ├ [16]: https://go.dev/cl/847186 
                        │      │                  ├ [17]: https://go.dev/cl/847308 
                        │      │                  ├ [18]: https://go.dev/issue/81742 
                        │      │                  ├ [19]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [20]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-78669.html 
                        │      │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-88354.html 
                        │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-78669 
                        │      │                  ├ [24]: https://pkg.go.dev/vuln/GO-2026-6611 
                        │      │                  ├ [25]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [26]: https://www.cve.org/CVERecord?id=CVE-2026-78669 
                        │      │                  ╰ [27]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.01Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.857Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-97031 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6607 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97031 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:e533f2fa9a32847b47e0ec72f02816db22177d95eda962c92fc68
                        │      │                   2cafa305660 
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
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ oracle-oval: 4 
                        │      │                  ├ redhat     : 3 
                        │      │                  ╰ rocky      : 4 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:88316 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:88354 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-97031 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [9] : https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [13]: https://errata.almalinux.org/10/ALSA-2026-88316.html 
                        │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2026:88354 
                        │      │                  ├ [15]: https://go.dev/cl/847312 
                        │      │                  ├ [16]: https://go.dev/issue/81855 
                        │      │                  ├ [17]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [18]: https://linux.oracle.com/cve/CVE-2026-97031.html 
                        │      │                  ├ [19]: https://linux.oracle.com/errata/ELSA-2026-88354.html 
                        │      │                  ├ [20]: https://nvd.nist.gov/vuln/detail/CVE-2026-97031 
                        │      │                  ├ [21]: https://pkg.go.dev/vuln/GO-2026-6607 
                        │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-97031 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.037Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-111943 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6809 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.10, 1.27.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-111943 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:b2515dc0bf99aa03536d72d2d5602ad980953d3cb8b54e91edcbe
                        │      │                   54b53bd8f59 
                        │      ├ Title           : On most platforms, Go uses the given system root
                        │      │                   certificates. However ... 
                        │      ├ Description     : On most platforms, Go uses the given system root
                        │      │                   certificates. However, in some narrower cases, the system
                        │      │                   trust stores may not be updated without further action. To
                        │      │                   defend against the narrower set of cases that may remain
                        │      │                   affected, a denylist was added in crypto/x509 to return an
                        │      │                   error when calling Verify with any of the known intermediate
                        │      │                    certificates that are no longer considered to be
                        │      │                   trustworthy. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 2 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ╰ rocky      : 4 
                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/10/20
                        │      │                  │       /29 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:88336 
                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:88354 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [9] : https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [13]: https://errata.almalinux.org/10/ALSA-2026-88336.html 
                        │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2026:88354 
                        │      │                  ├ [15]: https://go.dev/cl/851047 
                        │      │                  ├ [16]: https://go.dev/issue/82345 
                        │      │                  ├ [17]: https://groups.google.com/g/golang-announce/c/66pojue
                        │      │                  │       aQek 
                        │      │                  ├ [18]: https://linux.oracle.com/cve/CVE-2026-111943.html 
                        │      │                  ├ [19]: https://linux.oracle.com/errata/ELSA-2026-89761.html 
                        │      │                  ╰ [20]: https://pkg.go.dev/vuln/GO-2026-6809 
                        │      ├ PublishedDate   : 2026-10-21T01:17:20.797Z 
                        │      ╰ LastModifiedDate: 2026-10-22T16:18:19.04Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-56866 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6605 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56866 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:0c7ae526b1d0889c3bd6208bfe270082082eb279eb2d6a4a10408
                        │      │                   94e6bc0193e 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ├ rocky  : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
                        │      │                  │         │           N/A:N 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56866 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://github.com/golang/go/issues/81740 
                        │      │                  ├ [41]: https://go.dev/cl/847306 
                        │      │                  ├ [42]: https://go.dev/issue/81740 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://nvd.nist.gov/vuln/detail/CVE-2026-56866 
                        │      │                  ├ [45]: https://pkg.go.dev/vuln/GO-2026-6605 
                        │      │                  ├ [46]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [47]: https://www.cve.org/CVERecord?id=CVE-2026-56866 
                        │      │                  ╰ [48]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:01.62Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [5]  ╭ VulnerabilityID : CVE-2026-78659 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6603 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78659 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:6c2a1e1527d5340aea547558282a7fa9e837dacf5f401d29f1bc1
                        │      │                   593a2f3aab5 
                        │      ├ Title           : net/http: golang.org/x/net/http2: golang: net/http: Denial
                        │      │                   of Service via HTTP/2 trailer header memory exhaustion 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ azure  : 2 
                        │      │                  ├ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ├ rocky  : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-78659 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://github.com/golang/go/issues/81857 
                        │      │                  ├ [41]: https://go.dev/cl/847185 
                        │      │                  ├ [42]: https://go.dev/cl/847314 
                        │      │                  ├ [43]: https://go.dev/issue/81857 
                        │      │                  ├ [44]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [45]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [46]: https://nvd.nist.gov/vuln/detail/CVE-2026-78659 
                        │      │                  ├ [47]: https://pkg.go.dev/vuln/GO-2026-6603 
                        │      │                  ├ [48]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [49]: https://www.cve.org/CVERecord?id=CVE-2026-78659 
                        │      │                  ╰ [50]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.27Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [6]  ╭ VulnerabilityID : CVE-2026-78660 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6610 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78660 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:63b1ed8f7907d96b4c190c13c0dd183fb177ea61bb6f097891c55
                        │      │                   c1ed7efa29f 
                        │      ├ Title           : net/http: golang: golang.org/x/net/http2: net/http: HTTP
                        │      │                   response smuggling via malformed HTTP/2 framing headers 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ azure  : 3 
                        │      │                  ├ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ├ rocky  : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           H/A:N 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           H/A:N 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-78660 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://github.com/golang/go/issues/81115 
                        │      │                  ├ [41]: https://go.dev/cl/835145 
                        │      │                  ├ [42]: https://go.dev/cl/836385 
                        │      │                  ├ [43]: https://go.dev/issue/81115 
                        │      │                  ├ [44]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [45]: https://nvd.nist.gov/vuln/detail/CVE-2026-78660 
                        │      │                  ├ [46]: https://pkg.go.dev/vuln/GO-2026-6610 
                        │      │                  ├ [47]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [48]: https://www.cve.org/CVERecord?id=CVE-2026-78660 
                        │      │                  ╰ [49]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.51Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.243Z 
                        ├ [7]  ╭ VulnerabilityID : CVE-2026-78663 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6612 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78663 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:c33388484164a222fd21d7a9494666d276f1bfacf4bbe548e152d
                        │      │                   5748f2c9256 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ azure  : 3 
                        │      │                  ├ bitnami: 4 
                        │      │                  ├ redhat : 2 
                        │      │                  ├ rocky  : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           H/A:H 
                        │      │                  │         ╰ V3Score : 9.1 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:L 
                        │      │                            ╰ V3Score : 5.3 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-78663 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://github.com/golang/go/issues/81743 
                        │      │                  ├ [41]: https://go.dev/cl/847187 
                        │      │                  ├ [42]: https://go.dev/cl/847310 
                        │      │                  ├ [43]: https://go.dev/issue/81743 
                        │      │                  ├ [44]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [45]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [46]: https://nvd.nist.gov/vuln/detail/CVE-2026-78663 
                        │      │                  ├ [47]: https://pkg.go.dev/vuln/GO-2026-6612 
                        │      │                  ├ [48]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [49]: https://www.cve.org/CVERecord?id=CVE-2026-78663 
                        │      │                  ╰ [50]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.647Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.42Z 
                        ├ [8]  ╭ VulnerabilityID : CVE-2026-94439 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6613 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94439 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:7fcfb6c8439e97f822f23e058801dd3fbf0c2a87393f21d4bb17c
                        │      │                   d51f786d839 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ├ rocky  : 3 
                        │      │                  ╰ ubuntu : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
                        │      │                  │         │           N/A:N 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-94439 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://github.com/golang/go/issues/81744 
                        │      │                  ├ [41]: https://go.dev/cl/847311 
                        │      │                  ├ [42]: https://go.dev/issue/81744 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://nvd.nist.gov/vuln/detail/CVE-2026-94439 
                        │      │                  ├ [45]: https://pkg.go.dev/vuln/GO-2026-6613 
                        │      │                  ├ [46]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [47]: https://www.cve.org/CVERecord?id=CVE-2026-94439 
                        │      │                  ╰ [48]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.76Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:50.703Z 
                        ├ [9]  ╭ VulnerabilityID : CVE-2026-94440 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6608 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94440 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:8549db927931ea0b8f6fdd435feac732924f494ae486dc1dee629
                        │      │                   977f60d9473 
                        │      ├ Title           : net/textproto: mime/multipart: golang: golang: Denial of
                        │      │                   Service via memory limit bypass in multipart form parsing 
                        │      ├ Description     : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrarily long line into memory when the remaining
                        │      │                   limit at the start of a part is less than 400 bytes. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ alma       : 3 
                        │      │                  ├ amazon     : 3 
                        │      │                  ├ bitnami    : 3 
                        │      │                  ├ oracle-oval: 3 
                        │      │                  ├ redhat     : 2 
                        │      │                  ├ rocky      : 3 
                        │      │                  ╰ ubuntu     : 2 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 7.5 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-94440 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://github.com/golang/go/issues/81741 
                        │      │                  ├ [41]: https://go.dev/cl/847307 
                        │      │                  ├ [42]: https://go.dev/issue/81741 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://linux.oracle.com/cve/CVE-2026-94440.html 
                        │      │                  ├ [45]: https://linux.oracle.com/errata/ELSA-2026-89732.html 
                        │      │                  ├ [46]: https://nvd.nist.gov/vuln/detail/CVE-2026-94440 
                        │      │                  ├ [47]: https://pkg.go.dev/vuln/GO-2026-6608 
                        │      │                  ├ [48]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [49]: https://www.cve.org/CVERecord?id=CVE-2026-94440 
                        │      │                  ╰ [50]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.917Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:50.907Z 
                        ├ [10] ╭ VulnerabilityID : CVE-2026-94448 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6599 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94448 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:9e678444f7578455f662c8cecfbaca44d713e98ea81ba4de39012
                        │      │                   2498912cd45 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ bitnami: 2 
                        │      │                  ├ redhat : 2 
                        │      │                  ╰ rocky  : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                  │         │           L/A:N 
                        │      │                  │         ╰ V3Score : 6.1 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-94448 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://go.dev/cl/839866 
                        │      │                  ├ [41]: https://go.dev/issue/81821 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://nvd.nist.gov/vuln/detail/CVE-2026-94448 
                        │      │                  ├ [44]: https://pkg.go.dev/vuln/GO-2026-6599 
                        │      │                  ╰ [45]: https://www.cve.org/CVERecord?id=CVE-2026-94448 
                        │      ├ PublishedDate   : 2026-10-08T23:17:05.3Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.327Z 
                        ├ [11] ╭ VulnerabilityID : CVE-2026-97030 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6600 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97030 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:c3e10df12c82978a371d2502ea788398e94d3a74c288703d6beab
                        │      │                   c54c0e18148 
                        │      ├ Title           : html/template: golang: html/template: Cross-site scripting
                        │      │                   via improper escaping of yield keyword 
                        │      ├ Description     : A trusted template author may have previously written a
                        │      │                   valid template wherein the use of the 'yield' keyword would
                        │      │                   not be correctly escaped. We now ensure that valid keyword
                        │      │                   uses are escaped and non-keyword uses are not escaped. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-79 
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ bitnami: 2 
                        │      │                  ├ redhat : 2 
                        │      │                  ╰ rocky  : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                  │         │           L/A:N 
                        │      │                  │         ╰ V3Score : 6.1 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
                        │      │                            │           L/A:N 
                        │      │                            ╰ V3Score : 6.1 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-97030 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://go.dev/cl/840925 
                        │      │                  ├ [41]: https://go.dev/issue/81823 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://nvd.nist.gov/vuln/detail/CVE-2026-97030 
                        │      │                  ├ [44]: https://pkg.go.dev/vuln/GO-2026-6600 
                        │      │                  ╰ [45]: https://www.cve.org/CVERecord?id=CVE-2026-97030 
                        │      ├ PublishedDate   : 2026-10-08T23:17:05.91Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.817Z 
                        ├ [12] ╭ VulnerabilityID : CVE-2026-97032 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6617 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                        │      │                  │         cc85aac48b34b95f5135 
                        │      │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                        │      │                            b741604d9756851aea31 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97032 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:d7b824d679de10a08017ae4dea67415837e59aecef75045ec7e73
                        │      │                   90aa09e0342 
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
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
                        │      │                  ├ azure  : 2 
                        │      │                  ├ bitnami: 3 
                        │      │                  ├ redhat : 2 
                        │      │                  ╰ rocky  : 3 
                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
                        │      │                  │         │           N/A:H 
                        │      │                  │         ╰ V3Score : 7.5 
                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
                        │      │                            │           N/A:H 
                        │      │                            ╰ V3Score : 5.9 
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86093 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-97032 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2548334 
                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2548335 
                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2548337 
                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2548338 
                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2548339 
                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2548340 
                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2548341 
                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2548342 
                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2548343 
                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2548345 
                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2548346 
                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2548347 
                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [22]: https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-56866 
                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78659 
                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78660 
                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78663 
                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78667 
                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94439 
                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94440 
                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94444 
                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94447 
                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-94448 
                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97030 
                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97032 
                        │      │                  ├ [38]: https://errata.almalinux.org/10/ALSA-2026-86093.html 
                        │      │                  ├ [39]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [40]: https://go.dev/cl/847188 
                        │      │                  ├ [41]: https://go.dev/cl/847313 
                        │      │                  ├ [42]: https://go.dev/issue/81867 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [45]: https://nvd.nist.gov/vuln/detail/CVE-2026-97032 
                        │      │                  ├ [46]: https://pkg.go.dev/vuln/GO-2026-6617 
                        │      │                  ╰ [47]: https://www.cve.org/CVERecord?id=CVE-2026-97032 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.213Z 
                        │      ╰ LastModifiedDate: 2026-10-15T16:18:24.967Z 
                        ╰ [13] ╭ VulnerabilityID : CVE-2026-56857 
                               ├ VendorIDs        ─ [0]: GO-2026-6604 
                               ├ PkgID           : stdlib@v1.27.1 
                               ├ PkgName         : stdlib 
                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                               │                  ╰ UID : c9698e88b56a1f6e 
                               ├ InstalledVersion: v1.27.1 
                               ├ FixedVersion    : 1.26.9, 1.27.2 
                               ├ Status          : fixed 
                               ├ Layer            ╭ Digest: sha256:921b8a8333549716242080702e3c0a9f70ed8b5e14ca
                               │                  │         cc85aac48b34b95f5135 
                               │                  ╰ DiffID: sha256:17dbf1948e13cfddbcbd30d884f84cdcd98fe0bdbd32
                               │                            b741604d9756851aea31 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56857 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:257b06f747248cd6abc87eb615bcdbeba64e2cba07c130ab1ef31
                               │                   4e4189ca0fc 
                               ├ Title           : os: golang: golang: Directory traversal via Windows junction
                               │                    handling 
                               ├ Description     : On Windows, when the target of Root.Mkdir or Root.MkdirAll
                               │                   is a junction pointing to an empty location, the operation
                               │                   can create a directory at the junction target even when that
                               │                    target is located outside the root. This only applies to
                               │                   operations where the last path component is a junction
                               │                   (path/to/junction, but not path/junction/target). 
                               ├ Severity        : LOW 
                               ├ CweIDs           ─ [0]: CWE-1386 
                               ├ VendorSeverity   ╭ bitnami: 4 
                               │                  ╰ redhat : 1 
                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
                               │                  │         │           H/A:H 
                               │                  │         ╰ V3Score : 9.8 
                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
                               │                            │           L/A:N 
                               │                            ╰ V3Score : 3.3 
                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56857 
                               │                  ├ [1]: https://go.dev/cl/847305 
                               │                  ├ [2]: https://go.dev/issue/81739 
                               │                  ├ [3]: https://groups.google.com/g/golang-announce/c/U2fTuyDJ
                               │                  │      znI 
                               │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-56857 
                               │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-6604 
                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-56857 
                               ├ PublishedDate   : 2026-10-08T23:17:01.487Z 
                               ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
```
