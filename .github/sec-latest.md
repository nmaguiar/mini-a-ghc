```yaml
╭ [0] ╭ Target  : nmaguiar/mini-a-ghc:latest (debian forky/sid) 
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
      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-111943 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6809 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.10, 1.27.3 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-111943 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:8910b1eeb22cd71431c65a0126858fe2c7b6d647dbc366d99b6b4
                        │      │                   5d202ba9f10 
                        │      ├ Title           : crypto/x509: golang: crypto/x509: Man-in-the-middle attacks
                        │      │                   via untrusted intermediate certificates 
                        │      ├ Description     : On most platforms, Go uses the given system root
                        │      │                   certificates. However, in some narrower cases, the system
                        │      │                   trust stores may not be updated without further action. To
                        │      │                   defend against the narrower set of cases that may remain
                        │      │                   affected, a denylist was added in crypto/x509 to return an
                        │      │                   error when calling Verify with any of the known intermediate
                        │      │                    certificates that are no longer considered to be
                        │      │                   trustworthy. 
                        │      ├ Severity        : HIGH 
                        │      ├ VendorSeverity   ╭ alma       : 4 
                        │      │                  ├ amazon     : 2 
                        │      │                  ├ oracle-oval: 4 
                        │      │                  ├ redhat     : 3 
                        │      │                  ╰ rocky      : 4 
                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
                        │      │                           │           /A:N 
                        │      │                           ╰ V3Score : 6.8 
                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/10/20
                        │      │                  │       /29 
                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:88354 
                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-111943 
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
                        │      │                  ├ [13]: https://errata.almalinux.org/9/ALSA-2026-88354.html 
                        │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2026:88354 
                        │      │                  ├ [15]: https://github.com/golang/go/issues/82345 
                        │      │                  ├ [16]: https://go.dev/cl/851047 
                        │      │                  ├ [17]: https://go.dev/issue/82345 
                        │      │                  ├ [18]: https://groups.google.com/g/golang-announce/c/66pojue
                        │      │                  │       aQek 
                        │      │                  ├ [19]: https://groups.google.com/g/golang-nuts/c/K22sG2AYnKU 
                        │      │                  ├ [20]: https://linux.oracle.com/cve/CVE-2026-111943.html 
                        │      │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2026-88354.html 
                        │      │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-111943 
                        │      │                  ├ [23]: https://pkg.go.dev/vuln/GO-2026-6809 
                        │      │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-111943 
                        │      ├ PublishedDate   : 2026-10-21T01:17:20.797Z 
                        │      ╰ LastModifiedDate: 2026-10-22T16:18:19.04Z 
                        ├ [1]  ╭ VulnerabilityID : CVE-2026-78667 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6609 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78667 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:0ebcbe6a17111a42786674b55d6fd6f57be4935029c9a62278f1b
                        │      │                   49f927605f9 
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
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-78667 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81858 
                        │      │                  ├ [40]: https://go.dev/cl/847309 
                        │      │                  ├ [41]: https://go.dev/issue/81858 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://linux.oracle.com/cve/CVE-2026-78667.html 
                        │      │                  ├ [44]: https://linux.oracle.com/errata/ELSA-2026-88336.html 
                        │      │                  ├ [45]: https://nvd.nist.gov/vuln/detail/CVE-2026-78667 
                        │      │                  ├ [46]: https://pkg.go.dev/vuln/GO-2026-6609 
                        │      │                  ├ [47]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [48]: https://www.cve.org/CVERecord?id=CVE-2026-78667 
                        │      │                  ╰ [49]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:03.88Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.69Z 
                        ├ [2]  ╭ VulnerabilityID : CVE-2026-78669 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6611 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78669 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:21d561409beb70247922021f045e32ac629b7f5b4a45e045fd3f8
                        │      │                   2221b782a04 
                        │      ├ Title           : net/http: net/http/internal/http2: golang.org/x/net/http2:
                        │      │                   net/http: Denial of Service via excessive HTTP/2 SETTINGS
                        │      │                   frames 
                        │      ├ Description     : A malicious HTTP/2 peer can cause excessive CPU consumption
                        │      │                   in the client or server by opening a large number of streams
                        │      │                    and then sending many small SETTINGS frames containing
                        │      │                   SETTINGS_INITIAL_WINDOW_SIZE values. 
                        │      ├ Severity        : HIGH 
                        │      ├ CweIDs           ─ [0]: CWE-405 
                        │      ├ VendorSeverity   ╭ alma       : 4 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:88354 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-78669 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [8] : https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-88354.html 
                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:88354 
                        │      │                  ├ [14]: https://github.com/golang/go/issues/81742 
                        │      │                  ├ [15]: https://go.dev/cl/847186 
                        │      │                  ├ [16]: https://go.dev/cl/847308 
                        │      │                  ├ [17]: https://go.dev/issue/81742 
                        │      │                  ├ [18]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [19]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [20]: https://linux.oracle.com/cve/CVE-2026-78669.html 
                        │      │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2026-88354.html 
                        │      │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-78669 
                        │      │                  ├ [23]: https://pkg.go.dev/vuln/GO-2026-6611 
                        │      │                  ├ [24]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [25]: https://www.cve.org/CVERecord?id=CVE-2026-78669 
                        │      │                  ╰ [26]: https://www.openwall.com/lists/oss-security/2026/10/0
                        │      │                          8/9 
                        │      ├ PublishedDate   : 2026-10-08T23:17:04.01Z 
                        │      ╰ LastModifiedDate: 2026-10-09T17:16:49.857Z 
                        ├ [3]  ╭ VulnerabilityID : CVE-2026-97031 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6607 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97031 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:fa870c2a63df32696aab09576f9dfa2a9b6c5f96a0aff52e1aa41
                        │      │                   5004c725d86 
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
                        │      ├ VendorSeverity   ╭ alma       : 4 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:88354 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-97031 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548336 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548344 
                        │      │                  ├ [4] : https://bugzilla.redhat.com/2556068 
                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2548336 
                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2548344 
                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2556068 
                        │      │                  ├ [8] : https://creativecommons.org/licenses/by/4.0/ 
                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-111943 
                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-78669 
                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │      │                  │       26-97031 
                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-88354.html 
                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:88354 
                        │      │                  ├ [14]: https://go.dev/cl/847312 
                        │      │                  ├ [15]: https://go.dev/issue/81855 
                        │      │                  ├ [16]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [17]: https://linux.oracle.com/cve/CVE-2026-97031.html 
                        │      │                  ├ [18]: https://linux.oracle.com/errata/ELSA-2026-88354.html 
                        │      │                  ├ [19]: https://nvd.nist.gov/vuln/detail/CVE-2026-97031 
                        │      │                  ├ [20]: https://pkg.go.dev/vuln/GO-2026-6607 
                        │      │                  ╰ [21]: https://www.cve.org/CVERecord?id=CVE-2026-97031 
                        │      ├ PublishedDate   : 2026-10-08T23:17:06.037Z 
                        │      ╰ LastModifiedDate: 2026-10-09T16:35:35.9Z 
                        ├ [4]  ╭ VulnerabilityID : CVE-2026-56866 
                        │      ├ VendorIDs        ─ [0]: GO-2026-6605 
                        │      ├ PkgID           : stdlib@v1.27.1 
                        │      ├ PkgName         : stdlib 
                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.27.1 
                        │      │                  ╰ UID : c9698e88b56a1f6e 
                        │      ├ InstalledVersion: v1.27.1 
                        │      ├ FixedVersion    : 1.26.9, 1.27.2 
                        │      ├ Status          : fixed 
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56866 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:f1c7f5146ed855870546e6dd176da54d065cc902497eeda272935
                        │      │                   8063b8083a6 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-56866 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81740 
                        │      │                  ├ [40]: https://go.dev/cl/847306 
                        │      │                  ├ [41]: https://go.dev/issue/81740 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://nvd.nist.gov/vuln/detail/CVE-2026-56866 
                        │      │                  ├ [44]: https://pkg.go.dev/vuln/GO-2026-6605 
                        │      │                  ├ [45]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [46]: https://www.cve.org/CVERecord?id=CVE-2026-56866 
                        │      │                  ╰ [47]: https://www.openwall.com/lists/oss-security/2026/10/0
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78659 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:f43174c35460b8582587d77592d3c9490389fbd194f1b50f9e374
                        │      │                   58eaab4662d 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-78659 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81857 
                        │      │                  ├ [40]: https://go.dev/cl/847185 
                        │      │                  ├ [41]: https://go.dev/cl/847314 
                        │      │                  ├ [42]: https://go.dev/issue/81857 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [45]: https://nvd.nist.gov/vuln/detail/CVE-2026-78659 
                        │      │                  ├ [46]: https://pkg.go.dev/vuln/GO-2026-6603 
                        │      │                  ├ [47]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [48]: https://www.cve.org/CVERecord?id=CVE-2026-78659 
                        │      │                  ╰ [49]: https://www.openwall.com/lists/oss-security/2026/10/0
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78660 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:7851c593e7b4771548dc7873008b1f17f434e38664dc5afce4eb1
                        │      │                   4f3a8d95b6f 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-78660 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81115 
                        │      │                  ├ [40]: https://go.dev/cl/835145 
                        │      │                  ├ [41]: https://go.dev/cl/836385 
                        │      │                  ├ [42]: https://go.dev/issue/81115 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://nvd.nist.gov/vuln/detail/CVE-2026-78660 
                        │      │                  ├ [45]: https://pkg.go.dev/vuln/GO-2026-6610 
                        │      │                  ├ [46]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [47]: https://www.cve.org/CVERecord?id=CVE-2026-78660 
                        │      │                  ╰ [48]: https://www.openwall.com/lists/oss-security/2026/10/0
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78663 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:2a2e4bdcd31634b27479cc21f99bd1553b27734fc03da22f25a08
                        │      │                   753a8a1680f 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-78663 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81743 
                        │      │                  ├ [40]: https://go.dev/cl/847187 
                        │      │                  ├ [41]: https://go.dev/cl/847310 
                        │      │                  ├ [42]: https://go.dev/issue/81743 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [44]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [45]: https://nvd.nist.gov/vuln/detail/CVE-2026-78663 
                        │      │                  ├ [46]: https://pkg.go.dev/vuln/GO-2026-6612 
                        │      │                  ├ [47]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [48]: https://www.cve.org/CVERecord?id=CVE-2026-78663 
                        │      │                  ╰ [49]: https://www.openwall.com/lists/oss-security/2026/10/0
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94439 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:95559b4d5af51ff700fb60c6ab5d129bd0fbeb967e1de2e83abd0
                        │      │                   f11b58aec97 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-94439 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81744 
                        │      │                  ├ [40]: https://go.dev/cl/847311 
                        │      │                  ├ [41]: https://go.dev/issue/81744 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://nvd.nist.gov/vuln/detail/CVE-2026-94439 
                        │      │                  ├ [44]: https://pkg.go.dev/vuln/GO-2026-6613 
                        │      │                  ├ [45]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [46]: https://www.cve.org/CVERecord?id=CVE-2026-94439 
                        │      │                  ╰ [47]: https://www.openwall.com/lists/oss-security/2026/10/0
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94440 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:44c05790941a83c21d8bc4e1247cfee604c6c8539e8348d892a34
                        │      │                   8b0bcf8a74b 
                        │      ├ Title           : net/textproto: mime/multipart: golang: golang: Denial of
                        │      │                   Service via memory limit bypass in multipart form parsing 
                        │      ├ Description     : Parsing a multipart form can bypass memory limits and read
                        │      │                   an arbitrarily long line into memory when the remaining
                        │      │                   limit at the start of a part is less than 400 bytes. 
                        │      ├ Severity        : MEDIUM 
                        │      ├ CweIDs           ─ [0]: CWE-770 
                        │      ├ VendorSeverity   ╭ alma   : 3 
                        │      │                  ├ amazon : 3 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-94440 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://github.com/golang/go/issues/81741 
                        │      │                  ├ [40]: https://go.dev/cl/847307 
                        │      │                  ├ [41]: https://go.dev/issue/81741 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://nvd.nist.gov/vuln/detail/CVE-2026-94440 
                        │      │                  ├ [44]: https://pkg.go.dev/vuln/GO-2026-6608 
                        │      │                  ├ [45]: https://ubuntu.com/security/notices/USN-8935-1 
                        │      │                  ├ [46]: https://www.cve.org/CVERecord?id=CVE-2026-94440 
                        │      │                  ╰ [47]: https://www.openwall.com/lists/oss-security/2026/10/0
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-94448 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:b3534420601ef896f3a80d5f26064139438b240bc3fe2688c3df5
                        │      │                   c8a782ebe3e 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-94448 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://go.dev/cl/839866 
                        │      │                  ├ [40]: https://go.dev/issue/81821 
                        │      │                  ├ [41]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [42]: https://nvd.nist.gov/vuln/detail/CVE-2026-94448 
                        │      │                  ├ [43]: https://pkg.go.dev/vuln/GO-2026-6599 
                        │      │                  ╰ [44]: https://www.cve.org/CVERecord?id=CVE-2026-94448 
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97030 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:44021b8be3b62dc2cc983d490e8a2b9b5b12c0ccb639867f25dca
                        │      │                   fd2177f1bab 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-97030 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://go.dev/cl/840925 
                        │      │                  ├ [40]: https://go.dev/issue/81823 
                        │      │                  ├ [41]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [42]: https://nvd.nist.gov/vuln/detail/CVE-2026-97030 
                        │      │                  ├ [43]: https://pkg.go.dev/vuln/GO-2026-6600 
                        │      │                  ╰ [44]: https://www.cve.org/CVERecord?id=CVE-2026-97030 
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
                        │      ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                        │      │                  │         8de33c26f6812c8b3e5b 
                        │      │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                        │      │                            16aee496f2b1ee108def 
                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-97032 
                        │      ├ DataSource       ╭ ID  : govulndb 
                        │      │                  ├ Name: The Go Vulnerability Database 
                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │      ├ Fingerprint     : sha256:8c41a1e11781853884d6ec2ff717bef5b8a4e1edec031ebfca544
                        │      │                   115ccc958ce 
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
                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:86196 
                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-97032 
                        │      │                  ├ [2] : https://bugzilla.redhat.com/2548334 
                        │      │                  ├ [3] : https://bugzilla.redhat.com/2548336 
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
                        │      │                  ├ [37]: https://errata.almalinux.org/9/ALSA-2026-86196.html 
                        │      │                  ├ [38]: https://errata.rockylinux.org/RLSA-2026:86196 
                        │      │                  ├ [39]: https://go.dev/cl/847188 
                        │      │                  ├ [40]: https://go.dev/cl/847313 
                        │      │                  ├ [41]: https://go.dev/issue/81867 
                        │      │                  ├ [42]: https://groups.google.com/g/golang-announce/c/U2fTuyD
                        │      │                  │       JznI 
                        │      │                  ├ [43]: https://groups.google.com/g/golang-announce/c/ZPwCyRU
                        │      │                  │       uGBs 
                        │      │                  ├ [44]: https://nvd.nist.gov/vuln/detail/CVE-2026-97032 
                        │      │                  ├ [45]: https://pkg.go.dev/vuln/GO-2026-6617 
                        │      │                  ╰ [46]: https://www.cve.org/CVERecord?id=CVE-2026-97032 
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
                               ├ Layer            ╭ Digest: sha256:d527520ad54e338851b190ce2a47f604eae8ba718352
                               │                  │         8de33c26f6812c8b3e5b 
                               │                  ╰ DiffID: sha256:dda15f06cbbc1e44d6b324f37823f4c7f301e5a67d8b
                               │                            16aee496f2b1ee108def 
                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56857 
                               ├ DataSource       ╭ ID  : govulndb 
                               │                  ├ Name: The Go Vulnerability Database 
                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
                               ├ Fingerprint     : sha256:6013c65dd231cd0f9bf684b7153083f0e004f0a5056651042018e
                               │                   2bac32199e4 
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
