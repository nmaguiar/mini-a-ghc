```yaml
╭ [0] ╭ Target         : nmaguiar/mini-a-ghc:build (ubuntu 26.04) 
│     ├ Class          : os-pkgs 
│     ├ Type           : ubuntu 
│     ├ Packages        
│     ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-13608 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13608 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:04ea67df87019cc7e75b1fc8ff3bf76d24ddad18897b35cfcaa76
│                       │      │                   21ca097f753 
│                       │      ├ Title           : A flaw in the libcurl SASL negotiation for LDAP
│                       │      │                   authentication allows  ... 
│                       │      ├ Description     : A flaw in the libcurl SASL negotiation for LDAP
│                       │      │                   authentication allows an
│                       │      │                   incomplete handshake sequence to be misinterpreted as a
│                       │      │                   successful
│                       │      │                   cryptographic verification. An attacker executing a
│                       │      │                   Man-in-the-Middle (MITM)
│                       │      │                   attack can inject a premature or shortcut response that
│                       │      │                   bypasses complete peer
│                       │      │                   validation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-923 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-13608.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-13608.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/pull/22213/changes/1a00e2
│                       │      │                  │      a73675c9521d214aafd6c02b553bfeb022 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3822248 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-13608 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:19.81Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T19:59:55.2Z 
│                       ├ [1]  ╭ VulnerabilityID : CVE-2026-18924 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18924 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7432d611cd616e6cce36027216c968bc2f7f6a053576801ec523f
│                       │      │                   bf7681bda61 
│                       │      ├ Title           : A flaw in libcurl's handling of HTTP/2 Server Push streams,
│                       │      │                   when the p ... 
│                       │      ├ Description     : A flaw in libcurl's handling of HTTP/2 Server Push streams,
│                       │      │                   when the parent
│                       │      │                   handle is set to share connections with other handles, can
│                       │      │                   lead to
│                       │      │                   use-after-free in the cleanup process. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-18924.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-18924.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/90325ff0444cbdff36
│                       │      │                  │      8bda5d26d6 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3916059 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-18924 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:20.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:01:29.6Z 
│                       ├ [2]  ╭ VulnerabilityID : CVE-2026-19931 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-19931 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a2a1b41f070f375a012a420b28b1e5b236753be893c1d7edc902f
│                       │      │                   3c06b0989de 
│                       │      ├ Title           : A flaw in libcurl makes it wrongly reuse an HTTP connection
│                       │      │                   setup for  ... 
│                       │      ├ Description     : A flaw in libcurl makes it wrongly reuse an HTTP connection
│                       │      │                   setup for a given
│                       │      │                   hostname using Negotiate authentication, when the initial
│                       │      │                   request is done
│                       │      │                   using empty credentials. This can make user B's request get
│                       │      │                   sent over user A's
│                       │      │                   previously authenticated connection. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-488 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-19931.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-19931.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/7103a93b05bc69ea98
│                       │      │                  │      ed9d 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3923520 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-19931 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:20.733Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:01:46.607Z 
│                       ├ [3]  ╭ VulnerabilityID : CVE-2026-80229 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-80229 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5bd6e03088e2fec3a58a61922c3378f652230294a49014ca47a3f
│                       │      │                   81ec8e094d4 
│                       │      ├ Title           : When performing transfers via libcurl\u2019s multi
│                       │      │                   interface, pooled T ... 
│                       │      ├ Description     : When performing transfers via libcurl’s multi interface,
│                       │      │                   pooled TLS
│                       │      │                   connections can outlive their originating easy handles. In
│                       │      │                   OpenSSL 3 provider
│                       │      │                   configurations, libcurl attaches an allocated library
│                       │      │                   context to the easy
│                       │      │                   handle's state and passes it to OpenSSL without acquiring an
│                       │      │                    ownership
│                       │      │                   reference; destroying the easy handle prematurely frees this
│                       │      │                    context while the
│                       │      │                   active connection retains a dangling pointer, leading to a
│                       │      │                   heap-use-after-free
│                       │      │                   upon subsequent I/O or post-handshake operations. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-80229.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-80229.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/7ea37abc6ac0120ba5
│                       │      │                  │      f6d9 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3969255 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-80229 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.217Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:06:12.563Z 
│                       ├ [4]  ╭ VulnerabilityID : CVE-2026-80230 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-80230 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:91b369d07b6c3749424157e7b2fe200248acb3264070dab0a2cf9
│                       │      │                   9e4e2c5a870 
│                       │      ├ Title           : When `CURLOPT_PINNEDPUBLICKEY` is configured alongside
│                       │      │                   options that di ... 
│                       │      ├ Description     : When `CURLOPT_PINNEDPUBLICKEY` is configured alongside
│                       │      │                   options that disable
│                       │      │                   standard peer verification (`CURLOPT_SSL_VERIFYPEER = 0`
│                       │      │                   and
│                       │      │                   `CURLOPT_SSL_VERIFYHOST = 0`), libcurl fails to enforce
│                       │      │                   public key pinning on
│                       │      │                   connections established without a presented server
│                       │      │                   certificate. Bypassing the
│                       │      │                   pinning check under these disabled-verification conditions
│                       │      │                   allows
│                       │      │                   unauthenticated connections to succeed when they should be
│                       │      │                   rejected. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-295 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-80230.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-80230.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/5267ed859d545534d0
│                       │      │                  │      c21 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3969300 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-80230 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.327Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:05:56.143Z 
│                       ├ [5]  ╭ VulnerabilityID : CVE-2026-80255 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-80255 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1b1712d229212648bf105b82b8d79218f4bf371a80ea7acda8dcb
│                       │      │                   000e657889e 
│                       │      ├ Title           : A `Set-Cookie:` header using tab (horizontal tab, ASCII code
│                       │      │                    9) instea ... 
│                       │      ├ Description     : A `Set-Cookie:` header using tab (horizontal tab, ASCII code
│                       │      │                    9) instead of
│                       │      │                   space (ascii code 32) immediately before the `Secure`
│                       │      │                   attribute causes curl to
│                       │      │                   store the cookie without its Secure flag. The cookie might
│                       │      │                   then wrongfully be
│                       │      │                   sent over plaintext HTTP on subsequent requests to the same
│                       │      │                   host. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-201 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-80255.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-80255.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/4f6aa41a0145e930e7
│                       │      │                  │      6677 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3972395 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-80255 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.623Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:02:30.16Z 
│                       ├ [6]  ╭ VulnerabilityID : CVE-2026-82209 
│                       │      ├ PkgID           : curl@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : curl 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/curl@8.18.0-1ubuntu2.5?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04 
│                       │      │                  ╰ UID : 59f792208966fece 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-82209 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:791fd6fbc4d3fdf20a1e0c0a724e3f4a6a8b667b9795c5ebf14e1
│                       │      │                   fd421288d11 
│                       │      ├ Title           : When libpsl support is enabled, libcurl fails to enforce the
│                       │      │                    Public Su ... 
│                       │      ├ Description     : When libpsl support is enabled, libcurl fails to enforce the
│                       │      │                    Public Suffix
│                       │      │                   List boundary check when processing a `Set-Cookie` header
│                       │      │                   where the `Domain`
│                       │      │                   attribute explicitly matches an origin host that is itself a
│                       │      │                    public suffix
│                       │      │                   (e.g., `Domain=co.uk` set by `co.uk`).
│                       │      │                   
│                       │      │                   Instead of coercing it into a strict host-only cookie,
│                       │      │                   libcurl saves the
│                       │      │                   cookie with wildcard domain scope (`.co.uk`). Consequently,
│                       │      │                   the cookie is
│                       │      │                   inappropriately included in subsequent outbound requests or
│                       │      │                   HTTP redirects to
│                       │      │                   arbitrary sibling subdomains under the same public suffix
│                       │      │                   (e.g.,
│                       │      │                   `attacker.co.uk`). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-201 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-82209.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-82209.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/95c1e8915dce64606b
│                       │      │                  │      d753fd47f 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3972385 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-82209 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.847Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:01:57.943Z 
│                       ├ [7]  ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:60315f9776b5aec6ac999c088233648b80967867a8084ba29a114
│                       │      │                   8283cab070e 
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
│                       ├ [8]  ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:19f32beb28f5888571f7ffbda6a489468053628a6ee9b4e9e1043
│                       │      │                   cdf82e934eb 
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
│                       ├ [9]  ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:94ff3284074358b3d7fcd8bba1f164fb0f770ec932103b512894a
│                       │      │                   043263b68ca 
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
│                       ├ [10] ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:deee8ae3f25d26334ea08962859a2bb7e3ff5c3dbfb5f2d293e73
│                       │      │                   8ec3b49a5e8 
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
│                       ├ [11] ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : jq@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : jq 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/jq@1.8.1-4ubuntu2?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : 4d5846e8c1ad0abf 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a72401daf1aab4b0d2a976605d2bf6d110c6883e16f6fc465a34f
│                       │      │                   421421c0319 
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
│                       ├ [12] ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc-bin@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-bin 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2.4?arch=amd64&di
│                       │      │                  │       stro=ubuntu-26.04 
│                       │      │                  ╰ UID : b964ecf8d3a43faa 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ba090a0499d7332f473b76f173df309558449ab8ce009c05530ed
│                       │      │                   dbe3e0610f6 
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
│                       ├ [13] ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc-gconv-modules-extra 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu2
│                       │      │                  │       .4?arch=amd64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : bbb7a8f7a59474e8 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:db8bffc90a2b1473c14509dc0d34a6c2af63702a5e20a06d4c62b
│                       │      │                   0e332bbc7af 
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
│                       ├ [14] ╭ VulnerabilityID : CVE-2026-18374 
│                       │      ├ PkgID           : libc6@2.43-2ubuntu2.4 
│                       │      ├ PkgName         : libc6 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2.4?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : fe574f54c2bc3102 
│                       │      ├ InstalledVersion: 2.43-2ubuntu2.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:260173369c1e7a9b51eeeef4752463716048d3376f3af2f1fe81a
│                       │      │                   377aff69577 
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
│                       ├ [15] ╭ VulnerabilityID : CVE-2026-13608 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13608 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5288001bb2683dc39be6d2d9f6d60408c12152e308601700c5e9a
│                       │      │                   0527cec214f 
│                       │      ├ Title           : A flaw in the libcurl SASL negotiation for LDAP
│                       │      │                   authentication allows  ... 
│                       │      ├ Description     : A flaw in the libcurl SASL negotiation for LDAP
│                       │      │                   authentication allows an
│                       │      │                   incomplete handshake sequence to be misinterpreted as a
│                       │      │                   successful
│                       │      │                   cryptographic verification. An attacker executing a
│                       │      │                   Man-in-the-Middle (MITM)
│                       │      │                   attack can inject a premature or shortcut response that
│                       │      │                   bypasses complete peer
│                       │      │                   validation. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-923 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-13608.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-13608.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/pull/22213/changes/1a00e2
│                       │      │                  │      a73675c9521d214aafd6c02b553bfeb022 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3822248 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-13608 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:19.81Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T19:59:55.2Z 
│                       ├ [16] ╭ VulnerabilityID : CVE-2026-18924 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18924 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:af14a0f4418e67ebd95352ed6ee0d36fa3b6a6266ac60338d2b24
│                       │      │                   355ebe422cb 
│                       │      ├ Title           : A flaw in libcurl's handling of HTTP/2 Server Push streams,
│                       │      │                   when the p ... 
│                       │      ├ Description     : A flaw in libcurl's handling of HTTP/2 Server Push streams,
│                       │      │                   when the parent
│                       │      │                   handle is set to share connections with other handles, can
│                       │      │                   lead to
│                       │      │                   use-after-free in the cleanup process. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-18924.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-18924.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/90325ff0444cbdff36
│                       │      │                  │      8bda5d26d6 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3916059 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-18924 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:20.553Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:01:29.6Z 
│                       ├ [17] ╭ VulnerabilityID : CVE-2026-19931 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-19931 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5631453290dbde745cb1b8921f30592653e8329a981413f7bd6be
│                       │      │                   66652c84027 
│                       │      ├ Title           : A flaw in libcurl makes it wrongly reuse an HTTP connection
│                       │      │                   setup for  ... 
│                       │      ├ Description     : A flaw in libcurl makes it wrongly reuse an HTTP connection
│                       │      │                   setup for a given
│                       │      │                   hostname using Negotiate authentication, when the initial
│                       │      │                   request is done
│                       │      │                   using empty credentials. This can make user B's request get
│                       │      │                   sent over user A's
│                       │      │                   previously authenticated connection. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-488 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-19931.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-19931.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/7103a93b05bc69ea98
│                       │      │                  │      ed9d 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3923520 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-19931 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:20.733Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:01:46.607Z 
│                       ├ [18] ╭ VulnerabilityID : CVE-2026-80229 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-80229 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:09b6d0dad89b312e96bdc1d47b501cf5160094935441e2744d753
│                       │      │                   8cbcce7ea82 
│                       │      ├ Title           : When performing transfers via libcurl\u2019s multi
│                       │      │                   interface, pooled T ... 
│                       │      ├ Description     : When performing transfers via libcurl’s multi interface,
│                       │      │                   pooled TLS
│                       │      │                   connections can outlive their originating easy handles. In
│                       │      │                   OpenSSL 3 provider
│                       │      │                   configurations, libcurl attaches an allocated library
│                       │      │                   context to the easy
│                       │      │                   handle's state and passes it to OpenSSL without acquiring an
│                       │      │                    ownership
│                       │      │                   reference; destroying the easy handle prematurely frees this
│                       │      │                    context while the
│                       │      │                   active connection retains a dangling pointer, leading to a
│                       │      │                   heap-use-after-free
│                       │      │                   upon subsequent I/O or post-handshake operations. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-80229.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-80229.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/7ea37abc6ac0120ba5
│                       │      │                  │      f6d9 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3969255 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-80229 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.217Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:06:12.563Z 
│                       ├ [19] ╭ VulnerabilityID : CVE-2026-80230 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-80230 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e85123c415785e3b43478868729accc5f90be66c01bcb592f55ad
│                       │      │                   183a8dd4135 
│                       │      ├ Title           : When `CURLOPT_PINNEDPUBLICKEY` is configured alongside
│                       │      │                   options that di ... 
│                       │      ├ Description     : When `CURLOPT_PINNEDPUBLICKEY` is configured alongside
│                       │      │                   options that disable
│                       │      │                   standard peer verification (`CURLOPT_SSL_VERIFYPEER = 0`
│                       │      │                   and
│                       │      │                   `CURLOPT_SSL_VERIFYHOST = 0`), libcurl fails to enforce
│                       │      │                   public key pinning on
│                       │      │                   connections established without a presented server
│                       │      │                   certificate. Bypassing the
│                       │      │                   pinning check under these disabled-verification conditions
│                       │      │                   allows
│                       │      │                   unauthenticated connections to succeed when they should be
│                       │      │                   rejected. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-295 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-80230.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-80230.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/5267ed859d545534d0
│                       │      │                  │      c21 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3969300 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-80230 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.327Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:05:56.143Z 
│                       ├ [20] ╭ VulnerabilityID : CVE-2026-80255 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-80255 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:db1a8e9632b90a15bc298486c892ea38608f2d1a332aba16a33f4
│                       │      │                   04742e8647b 
│                       │      ├ Title           : A `Set-Cookie:` header using tab (horizontal tab, ASCII code
│                       │      │                    9) instea ... 
│                       │      ├ Description     : A `Set-Cookie:` header using tab (horizontal tab, ASCII code
│                       │      │                    9) instead of
│                       │      │                   space (ascii code 32) immediately before the `Secure`
│                       │      │                   attribute causes curl to
│                       │      │                   store the cookie without its Secure flag. The cookie might
│                       │      │                   then wrongfully be
│                       │      │                   sent over plaintext HTTP on subsequent requests to the same
│                       │      │                   host. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-201 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-80255.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-80255.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/4f6aa41a0145e930e7
│                       │      │                  │      6677 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3972395 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-80255 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.623Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:02:30.16Z 
│                       ├ [21] ╭ VulnerabilityID : CVE-2026-82209 
│                       │      ├ PkgID           : libcurl4t64@8.18.0-1ubuntu2.5 
│                       │      ├ PkgName         : libcurl4t64 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libcurl4t64@8.18.0-1ubuntu2.5?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8758ff99a6247a97 
│                       │      ├ InstalledVersion: 8.18.0-1ubuntu2.5 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-82209 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8a0b97608db0a588b716bfcc8a235e93f6e9be596090fba3074e2
│                       │      │                   1b24b68e125 
│                       │      ├ Title           : When libpsl support is enabled, libcurl fails to enforce the
│                       │      │                    Public Su ... 
│                       │      ├ Description     : When libpsl support is enabled, libcurl fails to enforce the
│                       │      │                    Public Suffix
│                       │      │                   List boundary check when processing a `Set-Cookie` header
│                       │      │                   where the `Domain`
│                       │      │                   attribute explicitly matches an origin host that is itself a
│                       │      │                    public suffix
│                       │      │                   (e.g., `Domain=co.uk` set by `co.uk`).
│                       │      │                   
│                       │      │                   Instead of coercing it into a strict host-only cookie,
│                       │      │                   libcurl saves the
│                       │      │                   cookie with wildcard domain scope (`.co.uk`). Consequently,
│                       │      │                   the cookie is
│                       │      │                   inappropriately included in subsequent outbound requests or
│                       │      │                   HTTP redirects to
│                       │      │                   arbitrary sibling subdomains under the same public suffix
│                       │      │                   (e.g.,
│                       │      │                   `attacker.co.uk`). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-201 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://curl.se/docs/CVE-2026-82209.html 
│                       │      │                  ├ [1]: https://curl.se/docs/CVE-2026-82209.json 
│                       │      │                  ├ [2]: https://github.com/curl/curl/commit/95c1e8915dce64606b
│                       │      │                  │      d753fd47f 
│                       │      │                  ├ [3]: https://hackerone.com/reports/3972385 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-82209 
│                       │      ├ PublishedDate   : 2026-09-06T18:17:22.847Z 
│                       │      ╰ LastModifiedDate: 2026-09-11T20:01:57.943Z 
│                       ├ [22] ╭ VulnerabilityID : CVE-2025-66382 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7c92398a877f2d262a352bbb98614d2ed87c8c16b599163f3e2f4
│                       │      │                   676ebc4f554 
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
│                       ├ [23] ╭ VulnerabilityID : CVE-2026-32776 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32776 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b7bd57ef26da00ef708dee8097ed0a4040df44138d987fad525c5
│                       │      │                   930c70b52db 
│                       │      ├ Title           : libexpat: libexpat: Denial of Service due to NULL pointer
│                       │      │                   dereference 
│                       │      ├ Description     : libexpat before 2.7.5 allows a NULL pointer dereference with
│                       │      │                    empty external parameter entity content. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-476 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-32776 
│                       │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-0
│                       │      │                  │      82556.html 
│                       │      │                  ├ [2]: https://github.com/libexpat/libexpat/pull/1158 
│                       │      │                  ├ [3]: https://github.com/libexpat/libexpat/pull/1159 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-32776 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-32776 
│                       │      ├ PublishedDate   : 2026-03-16T14:19:44.6Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:49.53Z 
│                       ├ [24] ╭ VulnerabilityID : CVE-2026-32777 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:124b66c093d50cddb2708a35b3e00c09187bde99e749f0be7f377
│                       │      │                   2a281b87348 
│                       │      ├ Title           : libexpat: libexpat: Denial of Service via infinite loop in
│                       │      │                   DTD content parsing 
│                       │      ├ Description     : libexpat before 2.7.5 allows an infinite loop while parsing
│                       │      │                   DTD content. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-835 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ azure : 1 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-32777 
│                       │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-0
│                       │      │                  │      82556.html 
│                       │      │                  ├ [2]: https://github.com/libexpat/libexpat/issues/1161 
│                       │      │                  ├ [3]: https://github.com/libexpat/libexpat/pull/1159 
│                       │      │                  ├ [4]: https://github.com/libexpat/libexpat/pull/1162 
│                       │      │                  ├ [5]: https://issues.oss-fuzz.com/issues/486993411 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-32777 
│                       │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-32777 
│                       │      ├ PublishedDate   : 2026-03-16T14:19:44.78Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:49.687Z 
│                       ├ [25] ╭ VulnerabilityID : CVE-2026-32778 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32778 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:714edbfb2f237cccd46230a0d7748f2e109eb16fafcc9715eadf7
│                       │      │                   8fe1b9d8179 
│                       │      ├ Title           : libexpat: libexpat: Denial of Service via NULL pointer
│                       │      │                   dereference after out-of-memory condition 
│                       │      ├ Description     : libexpat before 2.7.5 allows a NULL pointer dereference in
│                       │      │                   the function setContext on retry after an earlier
│                       │      │                   ouf-of-memory condition. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-476 
│                       │      ├ VendorSeverity   ╭ amazon: 2 
│                       │      │                  ├ azure : 1 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ photon: 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 5.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 5.1 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-32778 
│                       │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-0
│                       │      │                  │      82556.html 
│                       │      │                  ├ [2]: https://github.com/libexpat/libexpat/pull/1159 
│                       │      │                  ├ [3]: https://github.com/libexpat/libexpat/pull/1163 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-32778 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-32778 
│                       │      ├ PublishedDate   : 2026-03-16T14:19:44.97Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:49.843Z 
│                       ├ [26] ╭ VulnerabilityID : CVE-2026-41080 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41080 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:bd953dcf646e7deedae8d55b75b98ee8adadaf33b9d2b77a4b3e5
│                       │      │                   247281177d6 
│                       │      ├ Title           : libexpat: expat: libexpat: Denial of Service via hash
│                       │      │                   flooding with crafted XML 
│                       │      ├ Description     : libexpat before 2.8.0 uses insufficient entropy, and thus
│                       │      │                   hash flooding can occur via a crafted XML document. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-331 
│                       │      ├ VendorSeverity   ╭ amazon: 1 
│                       │      │                  ├ azure : 1 
│                       │      │                  ├ julia : 1 
│                       │      │                  ├ photon: 3 
│                       │      │                  ├ redhat: 1 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 2.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 3.7 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/04/26/1 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-41080 
│                       │      │                  ├ [2]: https://blog.hartwork.org/posts/expat-2-8-0-released/ 
│                       │      │                  ├ [3]: https://cert-portal.siemens.com/productcert/html/ssa-0
│                       │      │                  │      82556.html 
│                       │      │                  ├ [4]: https://github.com/libexpat/libexpat/issues/47 
│                       │      │                  ├ [5]: https://github.com/libexpat/libexpat/pull/1183 
│                       │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-41080 
│                       │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8520-1 
│                       │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2026-41080 
│                       │      │                  ╰ [9]: https://www.openwall.com/lists/oss-security/2026/04/26/1 
│                       │      ├ PublishedDate   : 2026-04-16T17:16:54.917Z 
│                       │      ╰ LastModifiedDate: 2026-07-14T13:18:51.257Z 
│                       ├ [27] ╭ VulnerabilityID : CVE-2026-45186 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45186 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:500bb627d26cc75ec1943ef9f158482718b4f1d0f1240bb4bd246
│                       │      │                   73da1f8f819 
│                       │      ├ Title           : libexpat: denial of service via crafted XML input 
│                       │      ├ Description     : In libexpat before 2.8.1, the computational complexity of
│                       │      │                   attribute name collision checks allows a denial of service
│                       │      │                   via moderately sized crafted XML input. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ alma       : 3 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ julia      : 3 
│                       │      │                  ├ nvd        : 3 
│                       │      │                  ├ oracle-oval: 3 
│                       │      │                  ├ photon     : 3 
│                       │      │                  ├ redhat     : 3 
│                       │      │                  ├ rocky      : 3 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.5 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 7.5 
│                       │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/05/11
│                       │      │                  │       /16 
│                       │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:22715 
│                       │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:22721 
│                       │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:23230 
│                       │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:26319 
│                       │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:27201 
│                       │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:29197 
│                       │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:58981 
│                       │      │                  ├ [8] : https://access.redhat.com/security/cve/CVE-2026-45186 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2468575 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2468575 
│                       │      │                  ├ [11]: https://cert-portal.siemens.com/productcert/html/ssa-
│                       │      │                  │       082556.html 
│                       │      │                  ├ [12]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [13]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-45186 
│                       │      │                  ├ [14]: https://errata.almalinux.org/9/ALSA-2026-23230.html 
│                       │      │                  ├ [15]: https://errata.rockylinux.org/RLSA-2026:23230 
│                       │      │                  ├ [16]: https://github.com/libexpat/libexpat/pull/1216 
│                       │      │                  ├ [17]: https://linux.oracle.com/cve/CVE-2026-45186.html 
│                       │      │                  ├ [18]: https://linux.oracle.com/errata/ELSA-2026-23230.html 
│                       │      │                  ├ [19]: https://nvd.nist.gov/vuln/detail/CVE-2026-45186 
│                       │      │                  ├ [20]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                       │      │                  │       026/cve-2026-45186.json 
│                       │      │                  ╰ [21]: https://www.cve.org/CVERecord?id=CVE-2026-45186 
│                       │      ├ PublishedDate   : 2026-05-10T07:16:07.883Z 
│                       │      ╰ LastModifiedDate: 2026-08-25T13:19:12.733Z 
│                       ├ [28] ╭ VulnerabilityID : CVE-2026-50219 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50219 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:3ad727fad9048dbbf9f7e7ff2042c315377352cc85eb97b1be6bf
│                       │      │                   8b847640c1c 
│                       │      ├ Title           : expat: libexpat: Use-after-free vulnerability due to
│                       │      │                   improper handler call depth tracking 
│                       │      ├ Description     : libexpat before 2.8.2 lacks handler call depth tracking for
│                       │      │                   calls to XML_GetBuffer, XML_Parse, XML_ParseBuffer,
│                       │      │                   XML_ParserFree, or XML_ParserReset from within handlers in
│                       │      │                   cases of a policy violation. Thus, a use-after-free can
│                       │      │                   occur, 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 1 
│                       │      │                  ├ julia      : 2 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 5.9 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 5.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:64812 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-50219 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2484620 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2490669 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2484620 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2490669 
│                       │      │                  ├ [6] : https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-50219 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-56132 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2026-64812.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:64812 
│                       │      │                  ├ [11]: https://github.com/libexpat/libexpat/pull/1246 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-50219.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-64812-0.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-50219 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2026-50219 
│                       │      ├ PublishedDate   : 2026-06-04T06:16:25.05Z 
│                       │      ╰ LastModifiedDate: 2026-07-22T20:10:00.127Z 
│                       ├ [29] ╭ VulnerabilityID : CVE-2026-56131 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56131 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5153daf74d0087c6c4a33ab789c2fb9da4d81ee738955891fa2f5
│                       │      │                   ba2b28c9657 
│                       │      ├ Title           : libexpat: libexpat: Use-after-free vulnerability due to
│                       │      │                   insufficient handler call depth tracking 
│                       │      ├ Description     : libexpat before 2.8.2 lacks handler call depth tracking for
│                       │      │                   calls to XML_ResumeParser from within handlers in cases of a
│                       │      │                    policy violation. Thus, a use-after-free can occur (similar
│                       │      │                    to the CVE-2026-50219 situation). 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 4.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.5 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56131 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1267 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56131 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56131 
│                       │      ├ PublishedDate   : 2026-06-19T06:17:10.107Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T20:15:48.007Z 
│                       ├ [30] ╭ VulnerabilityID : CVE-2026-56132 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56132 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a440a3659d755415199c5e9204b76195666b295db66b639bd438e
│                       │      │                   029cca61852 
│                       │      ├ Title           : expat: libexpat: Arbitrary Code Execution via Heap-based
│                       │      │                   Buffer Overflow 
│                       │      ├ Description     : In libexpat before 2.8.2, there is a heap-based buffer
│                       │      │                   overflow in doProlog in xmlparse.c because scaffold backing
│                       │      │                   array reallocation is mishandled when there is
│                       │      │                   data-structure sharing across parsers. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-821 
│                       │      ├ VendorSeverity   ╭ alma       : 2 
│                       │      │                  ├ amazon     : 3 
│                       │      │                  ├ azure      : 2 
│                       │      │                  ├ julia      : 2 
│                       │      │                  ├ nvd        : 2 
│                       │      │                  ├ oracle-oval: 2 
│                       │      │                  ├ redhat     : 2 
│                       │      │                  ├ rocky      : 2 
│                       │      │                  ╰ ubuntu     : 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:64812 
│                       │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-56132 
│                       │      │                  ├ [2] : https://bugzilla.redhat.com/2484620 
│                       │      │                  ├ [3] : https://bugzilla.redhat.com/2490669 
│                       │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2484620 
│                       │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2490669 
│                       │      │                  ├ [6] : https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-50219 
│                       │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-56132 
│                       │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2026-64812.html 
│                       │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:64812 
│                       │      │                  ├ [11]: https://github.com/libexpat/libexpat/pull/1272 
│                       │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-56132.html 
│                       │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-64812-0.html 
│                       │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-56132 
│                       │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2026-56132 
│                       │      ├ PublishedDate   : 2026-06-19T06:17:10.253Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T20:15:26.23Z 
│                       ├ [31] ╭ VulnerabilityID : CVE-2026-56403 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56403 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:519b3933ad496bf2a2da3dad77e0688485755253d091d0a390842
│                       │      │                   f405fa26974 
│                       │      ├ Title           : libexpat: libexpat: Arbitrary code execution due to integer
│                       │      │                   overflow in storeAtts 
│                       │      ├ Description     : libexpat before 2.8.2 has an integer overflow in storeAtts. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56403 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1232 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56403 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56403 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:26.59Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T20:15:16.76Z 
│                       ├ [32] ╭ VulnerabilityID : CVE-2026-56404 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56404 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f2384eceb2e1798aad10fbdbc20a95be6c6b1e69a9b0f2eb35fe7
│                       │      │                   876df18f96f 
│                       │      ├ Title           : libexpat: libexpat: Arbitrary Code Execution via integer
│                       │      │                   overflow in addBinding 
│                       │      ├ Description     : libexpat before 2.8.2 has an integer overflow in addBinding. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56404 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1249 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56404 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56404 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:27.62Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T20:15:05.85Z 
│                       ├ [33] ╭ VulnerabilityID : CVE-2026-56405 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56405 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:65e9aa6022f77799104b0c42ad3754343bd700d3973d312673400
│                       │      │                   79c8a442390 
│                       │      ├ Title           : libexpat: libexpat: Information disclosure and arbitrary
│                       │      │                   code execution via integer overflow 
│                       │      ├ Description     : libexpat before 2.8.2 has an integer overflow in
│                       │      │                   getAttributeId. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56405 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1251 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56405 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56405 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:27.74Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T20:14:51.73Z 
│                       ├ [34] ╭ VulnerabilityID : CVE-2026-56406 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56406 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:db30ca33f684a3047bad0b1082d99d168193de9840b97f4bc9ba3
│                       │      │                   df1e8a83ebb 
│                       │      ├ Title           : libexpat: libexpat: Arbitrary code execution via integer
│                       │      │                   overflow in XML_ParseBuffer 
│                       │      ├ Description     : libexpat before 2.8.2 has an integer overflow in
│                       │      │                   XML_ParseBuffer because it lacked a check that was present
│                       │      │                   in XML_Parse. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56406 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1255 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56406 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56406 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:27.87Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T16:29:06.077Z 
│                       ├ [35] ╭ VulnerabilityID : CVE-2026-56407 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56407 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:7edeb842696f6c51053c602bcd0cd5070ef2e1bd0087221144e50
│                       │      │                   578938dba9f 
│                       │      ├ Title           : libexpat: libexpat: Arbitrary code execution due to integer
│                       │      │                   overflow 
│                       │      ├ Description     : libexpat before 2.8.2 has an integer overflow in doProlog
│                       │      │                   that is related to storeEntityValue and entity textLen. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56407 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1262 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56407 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56407 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:27.987Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T16:28:29.983Z 
│                       ├ [36] ╭ VulnerabilityID : CVE-2026-56408 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56408 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:778d3bcd38dae464e3129db28190d34155e3ce3af8f31628d6626
│                       │      │                   99d624702e2 
│                       │      ├ Title           : libexpat before 2.8.2 has an integer overflow in copyString. 
│                       │      ├ Description     : libexpat before 2.8.2 has an integer overflow in copyString. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ julia ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H/
│                       │      │                          │           A:L 
│                       │      │                          ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://github.com/libexpat/libexpat/commit/16e2efd867
│                       │      │                  │      ea8567ffa012210b52ef5918e20817 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-56408 
│                       │      │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-56408 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:28.11Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T16:27:26.523Z 
│                       ├ [37] ╭ VulnerabilityID : CVE-2026-56409 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56409 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b51bb9e3f82e42181cfff78e78173163bbff5a87fd680d3eccbcb
│                       │      │                   d2c0f7927a6 
│                       │      ├ Title           : xmlwf in libexpat before 2.8.2 has an integer overflow for
│                       │      │                   the output  ... 
│                       │      ├ Description     : xmlwf in libexpat before 2.8.2 has an integer overflow for
│                       │      │                   the output filename when -d outputDir is used. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ julia ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/
│                       │      │                          │           A:L 
│                       │      │                          ╰ V3Score : 6.5 
│                       │      ├ References       ╭ [0]: https://github.com/libexpat/libexpat/pull/1259 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-56409 
│                       │      │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-56409 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:28.23Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T16:21:55.607Z 
│                       ├ [38] ╭ VulnerabilityID : CVE-2026-56410 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56410 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:30ea4504f983af45abb558114ed51c4b89bcb1b6ba02491f719bc
│                       │      │                   fd4fa78c5b2 
│                       │      ├ Title           : libexpat: libexpat: Integer overflow in xmlwf can lead to
│                       │      │                   information disclosure and arbitrary code execution. 
│                       │      ├ Description     : xmlwf in libexpat before 2.8.2 has an integer overflow in
│                       │      │                   resolveSystemId. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56410 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1252 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56410 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56410 
│                       │      ├ PublishedDate   : 2026-06-21T16:16:28.36Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T16:18:16.427Z 
│                       ├ [39] ╭ VulnerabilityID : CVE-2026-56411 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56411 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:18c68f8e0c031f052246e606fb625b7019e1bef138a0e7c253c14
│                       │      │                   24c0399c391 
│                       │      ├ Title           : expat: libexpat: Integer Overflow Vulnerability Leading to
│                       │      │                   Information Disclosure or Code Execution 
│                       │      ├ Description     : xmlwf in libexpat before 2.8.2 has an integer overflow in
│                       │      │                   endDoctypeDecl via NOTATION declarations. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-190 
│                       │      ├ VendorSeverity   ╭ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 6.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 6.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56411 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1263 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56411 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56411 
│                       │      ├ PublishedDate   : 2026-06-21T17:16:44.523Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T16:16:36.417Z 
│                       ├ [40] ╭ VulnerabilityID : CVE-2026-56412 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56412 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:5ddda12b81bff2754a811c4083599e28bf1fceca07a1eb7b73d04
│                       │      │                   444c596275d 
│                       │      ├ Title           : libexpat: libexpat: Use-after-free vulnerability due to
│                       │      │                   improper handling of XML CDATA sections 
│                       │      ├ Description     : libexpat before 2.8.2 does not consider XML_TOK_DATA_CHARS
│                       │      │                   in doCdataSection and thus lacks handler call depth tracking
│                       │      │                    for various calls from within handlers in cases of a policy
│                       │      │                    violation. Thus, a use-after-free can occur. NOTE: this
│                       │      │                   issue exists because of an incomplete fix for
│                       │      │                   CVE-2026-50219. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ julia : 2 
│                       │      │                  ├ nvd   : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 5.9 
│                       │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                  │        │           /A:L 
│                       │      │                  │        ╰ V3Score : 5.9 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56412 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1278 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56412 
│                       │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-56412 
│                       │      ├ PublishedDate   : 2026-06-21T17:16:44.657Z 
│                       │      ╰ LastModifiedDate: 2026-06-23T15:31:30.853Z 
│                       ├ [41] ╭ VulnerabilityID : CVE-2026-66046 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-66046 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e3da3aba10f511988810271b203719b033f34cd8ffa1bd9f0ca36
│                       │      │                   e4ade82e9d7 
│                       │      ├ Title           : Expat through 2.8.3 contains a denial of service
│                       │      │                   vulnerability caused  ... 
│                       │      ├ Description     : Expat through 2.8.3 contains a denial of service
│                       │      │                   vulnerability caused by quadratic algorithmic complexity in
│                       │      │                   the storeAtts() function in xmlparse.c, where processing N
│                       │      │                   specified attributes with non-normalized values triggers an
│                       │      │                   O(N^2) linear scan of elementType->defaultAtts to determine
│                       │      │                   CDATA status. A remote unauthenticated attacker can supply a
│                       │      │                    single well-formed XML document of a few megabytes to an
│                       │      │                   application parsing untrusted XML to cause excessive CPU
│                       │      │                   consumption, resulting in denial of service without
│                       │      │                   requiring authentication, external entity resolution, or
│                       │      │                   non-default parser options. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-407 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://github.com/libexpat/libexpat/pull/1321 
│                       │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-66046 
│                       │      │                  ├ [2]: https://www.cve.org/CVERecord?id=CVE-2026-66046 
│                       │      │                  ╰ [3]: https://www.vulncheck.com/advisories/expat-denial-of-s
│                       │      │                         ervice-via-storeatts-quadratic-complexity 
│                       │      ├ PublishedDate   : 2026-08-18T15:16:57Z 
│                       │      ╰ LastModifiedDate: 2026-08-20T16:17:40.66Z 
│                       ├ [42] ╭ VulnerabilityID : CVE-2026-72522 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-72522 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e8ecb5f31fa0a90bf4699692acdfa4e3216be80ca91e0e2f1bab5
│                       │      │                   29d9c63147a 
│                       │      ├ Title           : expat: libexpat: Denial of Service due to incorrect Unicode
│                       │      │                   surrogate handling 
│                       │      ├ Description     : libexpat before 2.8.3 has an out-of-bounds read and
│                       │      │                   resultant infinite loop because low surrogates are treated
│                       │      │                   the same as high surrogates during Unicode processing in the
│                       │      │                    *_toUtf16 functions. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                       │      │                           │           /A:H 
│                       │      │                           ╰ V3Score : 6.2 
│                       │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/08/11/5 
│                       │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-72522 
│                       │      │                  ├ [2]: https://bugzilla.mozilla.org/show_bug.cgi?id=2053153 
│                       │      │                  ├ [3]: https://github.com/libexpat/libexpat/pull/1296 
│                       │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-72522 
│                       │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-72522 
│                       │      ├ PublishedDate   : 2026-08-10T04:16:50.91Z 
│                       │      ╰ LastModifiedDate: 2026-08-31T19:33:11.197Z 
│                       ├ [43] ╭ VulnerabilityID : CVE-2026-76641 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-76641 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1e8b7ac308af6414edf689eb37858279a58c47007a9f68001e4f4
│                       │      │                   6ab61157c96 
│                       │      ├ Title           : CVE-2026-76641 affecting package expat for versions less
│                       │      │                   than 2.8.3-2 
│                       │      ├ Description     : Expat through 2.8.3 contains an out-of-bounds read
│                       │      │                   vulnerability that allows attackers to trigger memory
│                       │      │                   corruption by processing XML with external entity parsers
│                       │      │                   created via XML_ExternalEntityParserCreate. A struct size
│                       │      │                   mismatch between ELEMENT_TYPE members causes storeAtts to
│                       │      │                   read the attIndex member past allocated memory boundaries,
│                       │      │                   resulting in failure to normalize whitespace in non-CDATA
│                       │      │                   attributes or a wild pointer dereference causing a segfault.
│                       │      │                    This vulnerability was introduced by the fix for
│                       │      │                   CVE-2026-66046. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-125 
│                       │      ├ VendorSeverity   ╭ azure : 3 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://github.com/libexpat/libexpat/commit/98599f6dcc
│                       │      │                  │      2b460410881fe420f5f55d6bec63bf 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1331 
│                       │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-76641 
│                       │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-76641 
│                       │      │                  ╰ [4]: https://www.vulncheck.com/advisories/expat-out-of-boun
│                       │      │                         ds-read-via-dtdcopy 
│                       │      ├ PublishedDate   : 2026-08-20T18:16:51.887Z 
│                       │      ╰ LastModifiedDate: 2026-08-20T19:17:04.43Z 
│                       ├ [44] ╭ VulnerabilityID : CVE-2026-76957 
│                       │      ├ PkgID           : libexpat1@2.7.4-1 
│                       │      ├ PkgName         : libexpat1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=ub
│                       │      │                  │       untu-26.04 
│                       │      │                  ╰ UID : c17b9d4b5a8b1286 
│                       │      ├ InstalledVersion: 2.7.4-1 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-76957 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:52cc34cd474c1583d3a5bd1cd230f4fe3115d967f7e3b16da741d
│                       │      │                   32d57a852bb 
│                       │      ├ Title           : libexpat: libexpat: Memory corruption vulnerability allows
│                       │      │                   arbitrary code execution or denial of service 
│                       │      ├ Description     : libexpat before 2.8.4 lacks handler call depth tracking with
│                       │      │                    custom encoding callbacks. Thus, a use-after-free can
│                       │      │                   occur. NOTE: this is similar to CVE-2026-50219,
│                       │      │                   CVE-2026-56131 and CVE-2026-56412. 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-416 
│                       │      ├ VendorSeverity   ╭ amazon: 3 
│                       │      │                  ├ azure : 2 
│                       │      │                  ├ nvd   : 3 
│                       │      │                  ├ redhat: 2 
│                       │      │                  ╰ ubuntu: 2 
│                       │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                       │      │                  │        │           /A:H 
│                       │      │                  │        ╰ V3Score : 7.8 
│                       │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:L/I:L
│                       │      │                           │           /A:L 
│                       │      │                           ╰ V3Score : 4.9 
│                       │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-76957 
│                       │      │                  ├ [1]: https://github.com/libexpat/libexpat/pull/1322 
│                       │      │                  ├ [2]: https://github.com/libexpat/libexpat/pull/1329 
│                       │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-76957 
│                       │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-76957 
│                       │      ├ PublishedDate   : 2026-08-20T05:16:29.747Z 
│                       │      ╰ LastModifiedDate: 2026-09-08T20:56:31.86Z 
│                       ├ [45] ╭ VulnerabilityID : CVE-2026-41256 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41256 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:93d52770d1fc4480b432a84d8f4814e2e3a050be12b81581d2080
│                       │      │                   cc22cb41f57 
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
│                       ├ [46] ╭ VulnerabilityID : CVE-2026-41257 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41257 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:abe803f7d4175ec1f13c95e3c860656078f345b90494af76a293c
│                       │      │                   b02fcc8469d 
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
│                       ├ [47] ╭ VulnerabilityID : CVE-2026-43895 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43895 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:6647c8f8479e7f0b63e793d791100b7a89f6894ab8b209f4f464e
│                       │      │                   c2da6e4825d 
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
│                       ├ [48] ╭ VulnerabilityID : CVE-2026-43896 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43896 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c9388f74445fc9fd5b71200ac763f0f85b0d13fe610db2070410e
│                       │      │                   d1120850acb 
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
│                       ├ [49] ╭ VulnerabilityID : CVE-2026-44777 
│                       │      ├ PkgID           : libjq1@1.8.1-4ubuntu2 
│                       │      ├ PkgName         : libjq1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libjq1@1.8.1-4ubuntu2?arch=amd64&distr
│                       │      │                  │       o=ubuntu-26.04 
│                       │      │                  ╰ UID : 3a6c9aae7759bca5 
│                       │      ├ InstalledVersion: 1.8.1-4ubuntu2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44777 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:fa5782b0c6897a81de7cabcb974270a542023c463a4cf440b70fe
│                       │      │                   7558c08f3b1 
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
│                       ├ [50] ╭ VulnerabilityID : CVE-2026-13757 
│                       │      ├ PkgID           : libp11-kit0@0.26.2-2 
│                       │      ├ PkgName         : libp11-kit0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distro
│                       │      │                  │       =ubuntu-26.04 
│                       │      │                  ╰ UID : 39936f33632ab742 
│                       │      ├ InstalledVersion: 0.26.2-2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f8cc8a7c60ec9713fab47c650987388a3a7fa00d5dad6911407be
│                       │      │                   22da094ff34 
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
│                       │      │                  ├ [8] : https://access.redhat.com/security/cve/CVE-2026-13757 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/2494556 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                       │      │                  ├ [11]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-13757 
│                       │      │                  ├ [13]: https://errata.almalinux.org/9/ALSA-2026-49667.html 
│                       │      │                  ├ [14]: https://errata.rockylinux.org/RLSA-2026:49667 
│                       │      │                  ├ [15]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                       │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-13757.html 
│                       │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-49668.html 
│                       │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                       │      │                  ├ [19]: https://ubuntu.com/security/notices/USN-8687-1 
│                       │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                       │      ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                       │      ╰ LastModifiedDate: 2026-09-01T13:18:10.253Z 
│                       ├ [51] ╭ VulnerabilityID : CVE-2026-39113 
│                       │      ├ PkgID           : libsqlite3-0@3.46.1-9ubuntu0.2 
│                       │      ├ PkgName         : libsqlite3-0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsqlite3-0@3.46.1-9ubuntu0.2?arch=am
│                       │      │                  │       d64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 9dfd58c8bc3fed25 
│                       │      ├ InstalledVersion: 3.46.1-9ubuntu0.2 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39113 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:243197eade38d15cd7188951891abd4466a1f61f6f2b2f7a9d7f2
│                       │      │                   dcd8a0cb43e 
│                       │      ├ Title           : Buffer Overflow vulnerability in SQLite affected version
│                       │      │                   source snapsh ... 
│                       │      ├ Description     : Buffer Overflow vulnerability in SQLite affected version
│                       │      │                   source snapshots/builds containing Fossil check-in
│                       │      │                   8bdc0d485e3ad0c7a1e818da66f106951d496b05cbe61d12c2c448f2f24b
│                       │      │                   6d5d (Git mirror 169f68ed88b34cb68f720191c64c058f2ccec508,
│                       │      │                   2026-03-11) and later snapshots/builds allows an attacker to
│                       │      │                    cause a denial of service via the ext/misc/sqlar.c,
│                       │      │                   sqlarUncompressFunc(), sqlar_uncompress(),
│                       │      │                   sqlite3_value_int64(), sqlite3_malloc(int), uncompress()
│                       │      │                   components 
│                       │      ├ Severity        : MEDIUM 
│                       │      ├ CweIDs           ─ [0]: CWE-122 
│                       │      ├ VendorSeverity   ─ ubuntu: 2 
│                       │      ├ References       ╭ [0]: https://github.com/20000419/CVE-2026-39113 
│                       │      │                  ├ [1]: https://github.com/sqlite/sqlite/blob/169f68ed88b34cb6
│                       │      │                  │      8f720191c64c058f2ccec508/ext/misc/sqlar.c 
│                       │      │                  ├ [2]: https://github.com/sqlite/sqlite/commit/169f68ed88b34c
│                       │      │                  │      b68f720191c64c058f2ccec508 
│                       │      │                  ├ [3]: https://github.com/sqlite/sqlite/commit/169f68ed88b34c
│                       │      │                  │      b68f720191c64c058f2ccec508%20%28version-3.53.0%29 
│                       │      │                  ├ [4]: https://www.cve.org/CVERecord?id=CVE-2026-39113 
│                       │      │                  ├ [5]: https://www.sqlite.org/ 
│                       │      │                  ╰ [6]: https://www.sqlite.org/sqlar.html 
│                       │      ├ PublishedDate   : 2026-08-25T21:17:00.08Z 
│                       │      ╰ LastModifiedDate: 2026-09-09T16:04:24.933Z 
│                       ├ [52] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libsystemd0@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libsystemd0 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.4?arch=amd6
│                       │      │                  │       4&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 8e41c7d584057e32 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:122e8c960ae8cf1d200c05950497ff1f401ea4928e39b4b415edf
│                       │      │                   7570348c538 
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
│                       ├ [53] ╭ VulnerabilityID : CVE-2026-40228 
│                       │      ├ PkgID           : libudev1@259.5-0ubuntu3.4 
│                       │      ├ PkgName         : libudev1 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.4?arch=amd64&d
│                       │      │                  │       istro=ubuntu-26.04 
│                       │      │                  ╰ UID : db6ded6155f534fe 
│                       │      ├ InstalledVersion: 259.5-0ubuntu3.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b13392505465b0495b94d2b24a4bef53540192ab4667ffae0b089
│                       │      │                   c1da33a1131 
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
│                       ├ [54] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : login.defs 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&di
│                       │      │                  │       stro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : eaf648d5e4e975f7 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a730e6bb2fd42f423c9f158aa9649facb555170c91d511e4a0445
│                       │      │                   4bc47886152 
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
│                       ├ [55] ╭ VulnerabilityID : CVE-2024-56433 
│                       │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                       │      ├ PkgName         : passwd 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dist
│                       │      │                  │       ro=ubuntu-26.04&epoch=1 
│                       │      │                  ╰ UID : 12ffbe3e135ac553 
│                       │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4fc562f885d8d945c46c0142530fc647bbb8675b62713ac4099a3
│                       │      │                   7b341ab7e7c 
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
│                       ├ [56] ╭ VulnerabilityID : CVE-2026-35341 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:51ae507a182dc2362830a5566d55603c30be532725175e701a053
│                       │      │                   03ba184212e 
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
│                       ├ [57] ╭ VulnerabilityID : CVE-2026-35344 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b966d368a5a78613f070d43b5cd0e98d1b73839abf78d4f6239e5
│                       │      │                   f4349bff03a 
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
│                       ├ [58] ╭ VulnerabilityID : CVE-2026-35345 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:a09aa2e3d1ef2504f3545d03a7891f486b85db6e0c33638450d31
│                       │      │                   8767907f1e8 
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
│                       ├ [59] ╭ VulnerabilityID : CVE-2026-35348 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:57707bc220ea5187fb1f88abf0d36cb25c09a7be3312e2bcc4dc0
│                       │      │                   b3bf3a67da7 
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
│                       ├ [60] ╭ VulnerabilityID : CVE-2026-35350 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0caeaa275effa8d0065af5aceba486ddf10412dbb02a1bd780dd2
│                       │      │                   5739d30b908 
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
│                       ├ [61] ╭ VulnerabilityID : CVE-2026-35351 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:e664b63a46d7bbf18ef3b931899b50d430ba176830bd49560e133
│                       │      │                   1d34653c2e8 
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
│                       ├ [62] ╭ VulnerabilityID : CVE-2026-35352 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:43882567fc4ae9a1a0c66298e78176f734ea144390c5f6a38d235
│                       │      │                   89fc1b7309f 
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
│                       ├ [63] ╭ VulnerabilityID : CVE-2026-35354 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:77b6567cbb8a2528d096819bcdc942e4b1cc19f3e4d9821555124
│                       │      │                   7c98d457685 
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
│                       ├ [64] ╭ VulnerabilityID : CVE-2026-35357 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:10bf6db3afa3ff3138d5b305668d1effedd85e7a77a9e81a2edeb
│                       │      │                   9f87af0020c 
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
│                       ├ [65] ╭ VulnerabilityID : CVE-2026-35359 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:386f03ded54c73b5832dc5f64051fe10288a7d08065feafed6d0d
│                       │      │                   97a5ade66d4 
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
│                       ├ [66] ╭ VulnerabilityID : CVE-2026-35360 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f2e2f97fef58711890de4e5c77228f46a6393646426403184338f
│                       │      │                   93fd61ee702 
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
│                       ├ [67] ╭ VulnerabilityID : CVE-2026-35363 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:0054c9001576ad736f4dbf7c8ff090e4134ac729a66b67861f6d6
│                       │      │                   584b711b4cd 
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
│                       ├ [68] ╭ VulnerabilityID : CVE-2026-35364 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:f0b8cf6e26980daa4d9f6cacb3c6f6d4e6e0278666bbd979d7c07
│                       │      │                   1e272f9ebc8 
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
│                       ├ [69] ╭ VulnerabilityID : CVE-2026-35367 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:4af1f2494abe55219ed194747b29ef9d030a6e9fc1a6ede1951c0
│                       │      │                   8293a27215a 
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
│                       ├ [70] ╭ VulnerabilityID : CVE-2026-35368 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:1f624bc7b1f1e4f179c5ea95288ff624ddd4a356cbb155a3bfd42
│                       │      │                   8baa2ec0171 
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
│                       ├ [71] ╭ VulnerabilityID : CVE-2026-35370 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:b20defd6fcb5bdc5e3935b9d3bc07d847f1f316e295f0191ceed5
│                       │      │                   67259532787 
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
│                       ├ [72] ╭ VulnerabilityID : CVE-2026-35371 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ebe4ebd380a5c481900189bf378f1d29951399aa1562de0a64e2c
│                       │      │                   58cd5134d8a 
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
│                       ├ [73] ╭ VulnerabilityID : CVE-2026-35373 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:8e4d535d8bf260eeabbf553819562efdce317d950456176d80b60
│                       │      │                   d5b0f5deab0 
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
│                       ├ [74] ╭ VulnerabilityID : CVE-2026-35374 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:83f80b2473c25d906ac6091d33e75fc3471599bcef5834cf87e84
│                       │      │                   ecb06f2093e 
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
│                       ├ [75] ╭ VulnerabilityID : CVE-2026-35377 
│                       │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                       │      ├ PkgName         : rust-coreutils 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=amd
│                       │      │                  │       64&distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 2129e05d8c2e5188 
│                       │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:d18f54e398117632ab0bfa5597cfc9f25f3ead6435ce47199090d
│                       │      │                   e72a31c26cb 
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
│                       ├ [76] ╭ VulnerabilityID : CVE-2026-18477 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18477 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:c9444f4d2146b7ce76a0f51776e68ca3b7dccc73d20883ce9b667
│                       │      │                   98ea921b0ab 
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
│                       │      │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-18477 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2455360 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2509735 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2509843 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2455360 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2509735 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2509843 
│                       │      │                  ├ [12]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [13]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18477 
│                       │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18508 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5704 
│                       │      │                  ├ [16]: https://errata.almalinux.org/9/ALSA-2026-61581.html 
│                       │      │                  ├ [17]: https://errata.rockylinux.org/RLSA-2026:61581 
│                       │      │                  ├ [18]: https://linux.oracle.com/cve/CVE-2026-18477.html 
│                       │      │                  ├ [19]: https://linux.oracle.com/errata/ELSA-2026-61586-0.html 
│                       │      │                  ├ [20]: https://nvd.nist.gov/vuln/detail/CVE-2026-18477 
│                       │      │                  ╰ [21]: https://www.cve.org/CVERecord?id=CVE-2026-18477 
│                       │      ├ PublishedDate   : 2026-08-03T17:16:33.897Z 
│                       │      ╰ LastModifiedDate: 2026-09-10T18:17:56.97Z 
│                       ├ [77] ╭ VulnerabilityID : CVE-2026-18508 
│                       │      ├ PkgID           : tar@1.35+dfsg-4ubuntu0.4 
│                       │      ├ PkgName         : tar 
│                       │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4ubuntu0.4?arch=amd64&
│                       │      │                  │       distro=ubuntu-26.04 
│                       │      │                  ╰ UID : 5867f93e7d45b368 
│                       │      ├ InstalledVersion: 1.35+dfsg-4ubuntu0.4 
│                       │      ├ Status          : affected 
│                       │      ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                       │      │                  │         640dcb855dfa3c23ef34 
│                       │      │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                       │      │                            9adb6b07fdd9f246b4a8 
│                       │      ├ SeveritySource  : ubuntu 
│                       │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-18508 
│                       │      ├ DataSource       ╭ ID  : ubuntu 
│                       │      │                  ├ Name: Ubuntu CVE Tracker 
│                       │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                       │      ├ Fingerprint     : sha256:ea4492abcaf78b7b178c8f6d9c414d50e55f3cc46deaec1537d05
│                       │      │                   7fdab35f714 
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
│                       │      │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-18508 
│                       │      │                  ├ [6] : https://bugzilla.redhat.com/2455360 
│                       │      │                  ├ [7] : https://bugzilla.redhat.com/2509735 
│                       │      │                  ├ [8] : https://bugzilla.redhat.com/2509843 
│                       │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2455360 
│                       │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2509735 
│                       │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2509843 
│                       │      │                  ├ [12]: https://creativecommons.org/licenses/by/4.0/ 
│                       │      │                  ├ [13]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18477 
│                       │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-18508 
│                       │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                       │      │                  │       26-5704 
│                       │      │                  ├ [16]: https://errata.almalinux.org/9/ALSA-2026-61581.html 
│                       │      │                  ├ [17]: https://errata.rockylinux.org/RLSA-2026:61581 
│                       │      │                  ├ [18]: https://linux.oracle.com/cve/CVE-2026-18508.html 
│                       │      │                  ├ [19]: https://linux.oracle.com/errata/ELSA-2026-61586-0.html 
│                       │      │                  ├ [20]: https://nvd.nist.gov/vuln/detail/CVE-2026-18508 
│                       │      │                  ╰ [21]: https://www.cve.org/CVERecord?id=CVE-2026-18508 
│                       │      ├ PublishedDate   : 2026-08-03T16:16:28.387Z 
│                       │      ╰ LastModifiedDate: 2026-09-10T18:17:57.193Z 
│                       ╰ [78] ╭ VulnerabilityID : CVE-2026-85091 
│                              ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ PkgName         : zlib1g 
│                              ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu3
│                              │                  │       .1?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                              │                  ╰ UID : a4f0bcc5ee12eaad 
│                              ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3.1 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a
│                              │                  │         640dcb855dfa3c23ef34 
│                              │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a
│                              │                            9adb6b07fdd9f246b4a8 
│                              ├ SeveritySource  : ubuntu 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-85091 
│                              ├ DataSource       ╭ ID  : ubuntu 
│                              │                  ├ Name: Ubuntu CVE Tracker 
│                              │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                              ├ Fingerprint     : sha256:f339c3009edd85eec7baf52af14c0fa6eca3729b4e78375fd96b1
│                              │                   cb919d461af 
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
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:49ca14becc50db2ce6ed6ac18750fd62dc0fa509058d9e8656a212
                        │     │                   31078480c0 
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
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:65886 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:66364 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-33818 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [19]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32280 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32281 
                        │     │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33811 
                        │     │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39820 
                        │     │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39821 
                        │     │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42499 
                        │     │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42504 
                        │     │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [33]: https://errata.almalinux.org/9/ALSA-2026-66364.html 
                        │     │                  ├ [34]: https://errata.rockylinux.org/RLSA-2026:65886 
                        │     │                  ├ [35]: https://go.dev/cl/814980 
                        │     │                  ├ [36]: https://go.dev/issue/80405 
                        │     │                  ├ [37]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-33818.html 
                        │     │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-66364-0.html 
                        │     │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-33818 
                        │     │                  ├ [41]: https://pkg.go.dev/vuln/GO-2026-5972 
                        │     │                  ╰ [42]: https://www.cve.org/CVERecord?id=CVE-2026-33818 
                        │     ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
                        ├ [1] ╭ VulnerabilityID : CVE-2026-39821 
                        │     ├ VendorIDs        ─ [0]: GO-2026-5026 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:9ee659f82dea0978edd1836d913b9d98203845fb82eba890b50cf8
                        │     │                   78d28cbdb9 
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
                        │     │                  ├ [132]: https://access.redhat.com/errata/RHSA-2026:62549 
                        │     │                  ├ [133]: https://access.redhat.com/errata/RHSA-2026:63134 
                        │     │                  ├ [134]: https://access.redhat.com/errata/RHSA-2026:65126 
                        │     │                  ├ [135]: https://access.redhat.com/errata/RHSA-2026:65153 
                        │     │                  ├ [136]: https://access.redhat.com/errata/RHSA-2026:65359 
                        │     │                  ├ [137]: https://access.redhat.com/errata/RHSA-2026:65534 
                        │     │                  ├ [138]: https://access.redhat.com/errata/RHSA-2026:65886 
                        │     │                  ├ [139]: https://access.redhat.com/errata/RHSA-2026:66016 
                        │     │                  ├ [140]: https://access.redhat.com/errata/RHSA-2026:66022 
                        │     │                  ├ [141]: https://access.redhat.com/errata/RHSA-2026:66432 
                        │     │                  ├ [142]: https://access.redhat.com/security/cve/CVE-2026-39821 
                        │     │                  ├ [143]: https://bugzilla.redhat.com/2480756 
                        │     │                  ├ [144]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                        │     │                  ├ [145]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                        │     │                  ├ [146]: https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                        │     │                  ├ [147]: https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                        │     │                  ├ [148]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                        │     │                  ├ [149]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [150]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                        │     │                  ├ [151]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [152]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [153]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [154]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [155]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [156]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [157]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [158]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-32280 
                        │     │                  ├ [159]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-32281 
                        │     │                  ├ [160]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-33811 
                        │     │                  ├ [161]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-33818 
                        │     │                  ├ [162]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-39820 
                        │     │                  ├ [163]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-39821 
                        │     │                  ├ [164]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-42499 
                        │     │                  ├ [165]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-42504 
                        │     │                  ├ [166]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-56853 
                        │     │                  ├ [167]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-56858 
                        │     │                  ├ [168]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-56859 
                        │     │                  ├ [169]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-56860 
                        │     │                  ├ [170]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
                        │     │                  │        26-56862 
                        │     │                  ├ [171]: https://errata.almalinux.org/9/ALSA-2026-37435.html 
                        │     │                  ├ [172]: https://errata.rockylinux.org/RLSA-2026:65886 
                        │     │                  ├ [173]: https://github.com/golang/go/issues/78760 
                        │     │                  ├ [174]: https://go.dev/cl/767220 
                        │     │                  ├ [175]: https://go.dev/issue/78760 
                        │     │                  ├ [176]: https://groups.google.com/g/golang-announce/c/94pEorn
                        │     │                  │        pRlI 
                        │     │                  ├ [177]: https://groups.google.com/g/golang-announce/c/iI-mYSI
                        │     │                  │        0lu8 
                        │     │                  ├ [178]: https://linux.oracle.com/cve/CVE-2026-39821.html 
                        │     │                  ├ [179]: https://linux.oracle.com/errata/ELSA-2026-65886-0.html 
                        │     │                  ├ [180]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
                        │     │                  ├ [181]: https://pkg.go.dev/vuln/GO-2026-5026 
                        │     │                  ├ [182]: https://security.access.redhat.com/data/csaf/v2/vex/2
                        │     │                  │        026/cve-2026-39821.json 
                        │     │                  ├ [183]: https://ubuntu.com/security/notices/USN-8416-1 
                        │     │                  ╰ [184]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
                        │     ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
                        │     ╰ LastModifiedDate: 2026-09-11T13:17:49.237Z 
                        ├ [2] ╭ VulnerabilityID : CVE-2026-46600 
                        │     ├ VendorIDs        ─ [0]: GO-2026-5942 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:980620a3edb22ee6256ec1ab4f53e5489af13c09b2b62421e3540f
                        │     │                   ad10062011 
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
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:f6d29647cf42586e95e942e73b9e4d95415a0f6757e1817d90c8bd
                        │     │                   2e18a9e4f0 
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
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:65117 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:65886 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56853 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2467809 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2467820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2484204 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2484830 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                        │     │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                        │     │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                        │     │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                        │     │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [26]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32280 
                        │     │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32281 
                        │     │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33811 
                        │     │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39820 
                        │     │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39821 
                        │     │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42499 
                        │     │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42504 
                        │     │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [39]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [40]: https://errata.almalinux.org/9/ALSA-2026-65117.html 
                        │     │                  ├ [41]: https://errata.rockylinux.org/RLSA-2026:65886 
                        │     │                  ├ [42]: https://go.dev/cl/795540 
                        │     │                  ├ [43]: https://go.dev/issue/80205 
                        │     │                  ├ [44]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-56853.html 
                        │     │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-65895-0.html 
                        │     │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-56853 
                        │     │                  ├ [48]: https://pkg.go.dev/vuln/GO-2026-6089 
                        │     │                  ╰ [49]: https://www.cve.org/CVERecord?id=CVE-2026-56853 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
                        ├ [4] ╭ VulnerabilityID : CVE-2026-56858 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6091 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:11ab9f88a6dfffcc838853ce1771cb50d799a33f691c1bb1894d05
                        │     │                   2138b68028 
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
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:65117 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:65886 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56858 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2467809 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2467820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2484204 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2484830 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                        │     │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                        │     │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                        │     │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                        │     │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [26]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32280 
                        │     │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32281 
                        │     │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33811 
                        │     │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39820 
                        │     │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39821 
                        │     │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42499 
                        │     │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42504 
                        │     │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [39]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [40]: https://errata.almalinux.org/9/ALSA-2026-65117.html 
                        │     │                  ├ [41]: https://errata.rockylinux.org/RLSA-2026:65886 
                        │     │                  ├ [42]: https://go.dev/cl/807100 
                        │     │                  ├ [43]: https://go.dev/issue/80435 
                        │     │                  ├ [44]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-56858.html 
                        │     │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-65895-0.html 
                        │     │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-56858 
                        │     │                  ├ [48]: https://pkg.go.dev/vuln/GO-2026-6091 
                        │     │                  ╰ [49]: https://www.cve.org/CVERecord?id=CVE-2026-56858 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
                        ├ [5] ╭ VulnerabilityID : CVE-2026-56859 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6088 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:a0c746b587a31e909dbe514fa852404ebf92b9358e9eb9cb916c97
                        │     │                   cdc5c83d2d 
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
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:65117 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:65886 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56859 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2467809 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2467820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2484204 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/2484830 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/2515827 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/2515838 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/2515840 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                        │     │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                        │     │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                        │     │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                        │     │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [26]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32280 
                        │     │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32281 
                        │     │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33811 
                        │     │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39820 
                        │     │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39821 
                        │     │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42499 
                        │     │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42504 
                        │     │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [39]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [40]: https://errata.almalinux.org/9/ALSA-2026-65117.html 
                        │     │                  ├ [41]: https://errata.rockylinux.org/RLSA-2026:65886 
                        │     │                  ├ [42]: https://go.dev/cl/803320 
                        │     │                  ├ [43]: https://go.dev/issue/80481 
                        │     │                  ├ [44]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-56859.html 
                        │     │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-65895-0.html 
                        │     │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-56859 
                        │     │                  ├ [48]: https://pkg.go.dev/vuln/GO-2026-6088 
                        │     │                  ╰ [49]: https://www.cve.org/CVERecord?id=CVE-2026-56859 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
                        ├ [6] ╭ VulnerabilityID : CVE-2026-56860 
                        │     ├ VendorIDs        ─ [0]: GO-2026-6218 
                        │     ├ PkgID           : stdlib@v1.26.5 
                        │     ├ PkgName         : stdlib 
                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                        │     │                  ╰ UID : 26d7064c5de1c97a 
                        │     ├ InstalledVersion: v1.26.5 
                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                        │     ├ Status          : fixed 
                        │     ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                        │     │                  │         40dcb855dfa3c23ef34 
                        │     │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                        │     │                            adb6b07fdd9f246b4a8 
                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
                        │     ├ DataSource       ╭ ID  : govulndb 
                        │     │                  ├ Name: The Go Vulnerability Database 
                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
                        │     ├ Fingerprint     : sha256:6ea288711a00fb1ccc2e5bc51b9c23876777f1cbb9d0dcc520f5de
                        │     │                   9098df3874 
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
                        │     │                  ├ photon     : 2 
                        │     │                  ├ redhat     : 3 
                        │     │                  ╰ rocky      : 3 
                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N
                        │     │                  │         │           /A:H 
                        │     │                  │         ╰ V3Score : 5.9 
                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
                        │     │                            │           /A:H 
                        │     │                            ╰ V3Score : 7.5 
                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:65886 
                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:66364 
                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56860 
                        │     │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                        │     │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                        │     │                  ├ [5] : https://bugzilla.redhat.com/2515839 
                        │     │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                        │     │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                        │     │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                        │     │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                        │     │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                        │     │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                        │     │                  ├ [19]: https://creativecommons.org/licenses/by/4.0/ 
                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32280 
                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-32281 
                        │     │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33811 
                        │     │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-33818 
                        │     │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39820 
                        │     │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-39821 
                        │     │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42499 
                        │     │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-42504 
                        │     │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56853 
                        │     │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56858 
                        │     │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56859 
                        │     │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56860 
                        │     │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                        │     │                  │       6-56862 
                        │     │                  ├ [33]: https://errata.almalinux.org/9/ALSA-2026-66364.html 
                        │     │                  ├ [34]: https://errata.rockylinux.org/RLSA-2026:65886 
                        │     │                  ├ [35]: https://go.dev/cl/803681 
                        │     │                  ├ [36]: https://go.dev/issue/80494 
                        │     │                  ├ [37]: https://groups.google.com/g/golang-announce/c/94pEornp
                        │     │                  │       RlI 
                        │     │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-56860.html 
                        │     │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-66364-0.html 
                        │     │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-56860 
                        │     │                  ├ [41]: https://pkg.go.dev/vuln/GO-2026-6218 
                        │     │                  ╰ [42]: https://www.cve.org/CVERecord?id=CVE-2026-56860 
                        │     ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
                        ╰ [7] ╭ VulnerabilityID : CVE-2026-56862 
                              ├ VendorIDs        ─ [0]: GO-2026-6090 
                              ├ PkgID           : stdlib@v1.26.5 
                              ├ PkgName         : stdlib 
                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
                              │                  ╰ UID : 26d7064c5de1c97a 
                              ├ InstalledVersion: v1.26.5 
                              ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
                              ├ Status          : fixed 
                              ├ Layer            ╭ Digest: sha256:6c63421babf3277dd2d3cedec3e61c480856a003084a6
                              │                  │         40dcb855dfa3c23ef34 
                              │                  ╰ DiffID: sha256:35f0493a7c3203adeecd324b6c697e8831bcc419713a9
                              │                            adb6b07fdd9f246b4a8 
                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
                              ├ DataSource       ╭ ID  : govulndb 
                              │                  ├ Name: The Go Vulnerability Database 
                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
                              ├ Fingerprint     : sha256:927b74264ae265f52b1c31bb5deec9be3cde1b9aaacb2577b6c15c
                              │                   a0d842a7f5 
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
                              ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:65886 
                              │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:66364 
                              │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-56862 
                              │                  ├ [3] : https://bugzilla.redhat.com/2515815 
                              │                  ├ [4] : https://bugzilla.redhat.com/2515820 
                              │                  ├ [5] : https://bugzilla.redhat.com/2515839 
                              │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
                              │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
                              │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2467809 
                              │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467820 
                              │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2467822 
                              │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
                              │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2484204 
                              │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2515815 
                              │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2515820 
                              │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2515827 
                              │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2515838 
                              │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2515839 
                              │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2515840 
                              │                  ├ [19]: https://creativecommons.org/licenses/by/4.0/ 
                              │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-32280 
                              │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-32281 
                              │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-33811 
                              │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-33818 
                              │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-39820 
                              │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-39821 
                              │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-42499 
                              │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-42504 
                              │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56853 
                              │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56858 
                              │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56859 
                              │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56860 
                              │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
                              │                  │       6-56862 
                              │                  ├ [33]: https://errata.almalinux.org/9/ALSA-2026-66364.html 
                              │                  ├ [34]: https://errata.rockylinux.org/RLSA-2026:65886 
                              │                  ├ [35]: https://go.dev/cl/804261 
                              │                  ├ [36]: https://go.dev/issue/80528 
                              │                  ├ [37]: https://groups.google.com/g/golang-announce/c/94pEornp
                              │                  │       RlI 
                              │                  ├ [38]: https://linux.oracle.com/cve/CVE-2026-56862.html 
                              │                  ├ [39]: https://linux.oracle.com/errata/ELSA-2026-66364-0.html 
                              │                  ├ [40]: https://nvd.nist.gov/vuln/detail/CVE-2026-56862 
                              │                  ├ [41]: https://pkg.go.dev/vuln/GO-2026-6090 
                              │                  ╰ [42]: https://www.cve.org/CVERecord?id=CVE-2026-56862 
                              ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
                              ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
```
